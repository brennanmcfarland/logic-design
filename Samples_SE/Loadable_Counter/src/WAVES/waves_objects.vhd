-- --------------------------------------------------------------------
--
--   Copyright 1997 by IEEE. All rights reserved.
--
--   This source file is an essential part of [Draft] IEEE Standard 1029.1,
--   "Standard for VHDL Waveform And Vector Exchange (WAVES) to Support
--   Design And Test Verification." 
--
--   This source file may not be copied, sold, or included with software
--   that is sold without written permission from the IEEE Standards
--   Department.  This source file may be used to implement this [draft]
--   standard and may be distributed in compiled form in any manner so 
--   long as the compiled form does not allow direct decompilation of the 
--   original source file.  This source file may be copied for individaul  
--   use between licensed users.
--
--   The IEEE disclaims any responsibility or liability for damages 
--   resulting from misinterpretation or misue of said information by 
--   the user.
-- 
--   [This source file represents a portion of the IEEE Draft Standard 
--   and is unapproved and subject to change.  Anyone supporting the WAVES
--   working group for the 1997 re-ballot has the right to use this package
--   for draft evaluation.]
-- 
--   This package may only be modified to include the context items 
--   necessary to provide visibility to the type LOGIC_VALUE, the 
--   constant PIN_CODES, the type TEST_PINS, and the package WAVES_Interface.
--   No other modifications to this package are allowed.  If this package
--   is otherwise modified, it shall no longer be considered compliant 
--   with IEEE Draft Standard 1029.1.
--
--   Title     :  WAVES_Objects Specification, IEEE [Draft] Standard
--                1029.1
--
--   Library   :  This package shall be compiled into a library 
--                symbolically named IEEE.
--
--   Developers:  IEEE DASC WAVES Working Group, PAR 1029.1
--
--   Purpose   :  This package provides support for the declaration and
--                definition of the WAVE_TIMING construct as well at
--                all of the WAVES built-in waveform constructors and
--                timing synchronism functionality.              
--
--   Limitation:  
--
-- --------------------------------------------------------------------
--   modification history :
-- --------------------------------------------------------------------
--   Version:  4.0
--   Date   :  01 May 1997
--   Reason :  Complete redesign for 1997 re-ballot
-- --------------------------------------------------------------------
--
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--
--
-- Context item(s) providing visibility to the type LOGIC_VALUE, the
-- constant PIN_CODES, the type TEST_PINS, and the package 
-- WAVES_Interface are required at this point.
--
library IEEE;
use IEEE.WAVES_1164_Declarations.all;
use IEEE.WAVES_INTERFACE.all;
use WORK.UUT_TEST_PINS.all;
--
--
use STD.TEXTIO.all;
package WAVES_OBJECTS is  
--
--
  constant CopyRightNotice : String := 
              "Copyright 1997 by IEEE. All rights reserved.";



  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Shared variables available in this package
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- CURRENT_VECTOR stores the number of the current vector being
  -- processed by the READ_FILE_SLICE procedures.  This object is 
  -- incremented every time a vector terminator is encountered in
  -- the READ_FILE_SLICE procedures.
  --
  shared variable WAVES_CURRENT_VECTOR : Natural := 0;
  
  --
  -- CURRENT_LINE stores the number of the line in the external
  -- file that was most recently  READLINE
  -- operation is executed.
  --
  shared variable WAVES_CURRENT_LINE : Natural := 0;

  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Basic data structures for complex timing data objects.
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Define a constrained subtype of time for delays.  All delay 
  -- times must be non-negative.
  --
  subtype DELAY_TIME is TIME range 0 fs to TIME'high;

  --
  -- The FRAME_SET_ARRAY_POINTER allows the declaration of the 
  -- frame data record which contains an unconstrained FRAME_SET_ARRAY
  -- object.
  --
  type FRAME_SET_ARRAY_POINTER is access FRAME_SET_ARRAY;

  --
  -- A frame set index is an index (pointer) to a frame set within a
  -- given frame set array.  This index is used to select a frame set
  -- from a given frame set array.
  --
  subtype FRAME_SET_INDEX is natural;

  --
  -- A frame set map is an array of frame set indices, one for each
  -- pin in test pins.  This structure associates a frame set with 
  -- each pin of the DUT for a given time set.
  --
  type FRAME_SET_MAP is array ( TEST_PINS ) of FRAME_SET_INDEX;

  --
  -- The frame data record stores a frame set array and a frame set map
  -- that provides a mapping between a given test pin and the frame set
  -- to which it belongs.  A zero index in the map array indicates that 
  -- there is no frame set associated with the given pin.
  --
  type FRAME_DATA is record
    FRAMES : FRAME_SET_ARRAY_POINTER;
    FS_MAP : FRAME_SET_MAP;
  end record;

  --
  -- A time set is a period (cycle durration) and all of the timing 
  -- and events (frame sets) associated with each pin of the UUT.
  --
  type TIME_SET is record
    PERIOD : DELAY_TIME;
    FSA    : FRAME_DATA;
  end record;

  --
  -- A wave timing list is a list of time sets
  --
  type TIME_SET_LIST is array ( positive range <> ) of TIME_SET;



  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- PINSET and PINSET functions
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- A PINSET is an array of booleans, one for each test pin.  A given
  -- pin is an element of the pinset if its corresponding boolean is
  -- set to TRUE.
  --
  type PINSET is array (TEST_PINS) of BOOLEAN;

  --
  -- Two predefined pinsets are available, the first contains all
  -- pins and the second contains no pins (empty set).
  --  
  constant ALL_PINS       : PINSET;
  
  constant NO_PINS        : PINSET;
  
  --
  -- The test pins list allows the new pinset function to accept an
  -- unconstrained array of test pins and generate a pinset for
  -- the pins in the list.
  --
  type TEST_PINS_LIST is array (POSITIVE range <>) of TEST_PINS;

  --
  -- Two prefix notation functions are provided to create a pinsets.
  -- The first function creates a pinset whose single member is the 
  -- named test pin.  The second function creates a pinset whose members
  -- are those pins named in the t4est pins list parameter. 
  --
  function NEW_PINSET (
      PIN                 : in TEST_PINS )
    return PINSET;
  
  function NEW_PINSET (
      PINS                : in TEST_PINS_LIST )
    return PINSET;

  --
  -- Several overloaded "+" operators are also provided to create a pinsets.
  -- The first function "promotes" a single pin to a pinset and is identical
  -- to the first prefix function above.  The remaining "+" operators are 
  -- overloaded for every posible combination of pin and pinset.
  -- 
  function "+" ( LEFT : in TEST_PINS ) return PINSET;

  function "+" ( LEFT, RIGHT : in TEST_PINS ) return PINSET;

  function "+" ( LEFT : in TEST_PINS; RIGHT : in PINSET ) return PINSET;

  function "+" ( LEFT : in PINSET; RIGHT : in TEST_PINS ) return PINSET;

  function "+" ( LEFT : in PINSET; RIGHT : in PINSET ) return PINSET;

  --
  -- Two overloaded "-" operators are provided to perform set
  -- "subtraction".  These functions remove the pin (or pinset), named in
  -- their RIGHT argument, from the pinset given in their LEFT argument.
  --
  function "-" ( LEFT : in PINSET; RIGHT : in TEST_PINS ) return PINSET;

  function "-" ( LEFT, RIGHT : in PINSET ) return PINSET;


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  -- 
  -- WAVES interface elements: WAVES_PORT_LIST, etc.
  -- 
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  -- 
  -- The following are the basic interface types for communicating
  -- between the waveform generator procedure(s) and the environment.
  -- The environment may be a VHDL test bench or a non-VHDL simulator
  -- or electrical test system translation tool.
  -- 

  --
  -- A WAVES logic vector is declared in a user defined declaration
  -- package.  This object is used to provide the logic signals that
  -- the WAVES data set generates and supplies to the environment. 
  -- This object is an unconstrained array of logic values with a 
  -- positive range.  This object allows the user to apply slices (or 
  -- subsets) of the total set of signals (pins) for a given UUT to the  
  -- waveform.  This type definition supports the declaration of multiple 
  -- waveform generator procedures, each generating signals for different 
  -- groups of pins.  The multiple waveform generator procedures may behave 
  -- in an asynchronous or synchronus manner.  Together the waveforms
  -- generated by multiple waveform generator procedures comprise the
  -- complete waveform for the UUT.  A sample of the declaration is given
  -- below.
  --
  -- type WAVES_LOGIC_VECTOR is array ( positive range <> ) of LOGIC_VALUE;
  --

  --
  -- A WAVES direction list is used in conjunction with the WAVES signal
  -- list, in the same manner, for conveying direction information
  -- for each signal of the given UUT waveform. 
  --
  type WAVES_DIRECTION_VECTOR is array ( positive range <> ) of DIRECTION_TYPE;

  --
  -- The WAVES port list is the most commonly used interface object.  This
  -- object defines a signal that contains a logic value, direction pair for
  -- every pin in the test pins declaration.
  --
  type WAVES_PORT_LIST is record
    SIGNALS   : WAVES_LOGIC_VECTOR( 1 to TEST_PINS'pos( TEST_PINS'right ) + 1 );
    DIRECTION : WAVES_DIRECTION_VECTOR( 1 to TEST_PINS'pos( TEST_PINS'right ) + 1 );
  end record;

  --
  -- The WAVES handshake request is the information necessary to initiate
  -- a handshake request to the environment.  This information includes
  -- a flag that is set to TRUE to indicate an active request as well as
  -- the name of the pin and the logic state (value) that the pin must 
  -- achieve to satisfy the request.
  --
  type WAVES_HANDSHAKE_REQUEST is record
    PIN     : TEST_PINS;
    VALUE   : LOGIC_VALUE;
    REQUEST : BOOLEAN;
  end record;

  --
  -- The WAVES handshake acknowledge (ACK) is the flag that the environment
  -- sets to TRUE when the previously issued handshake request has been
  -- satisfied.
  --
  subtype WAVES_HANDSHAKE_ACK is BOOLEAN;

  --
  -- The WAVES match request is the information necessary to initiate
  -- a match request to the environment.  This information includes
  -- the pinset indicating the pins that must be matched, the time
  -- (relative to the beginning of the current slice) at which the pins
  -- must be checked for a match, and a flag that is set to TRUE to
  -- request the environment perform the matching operation.
  --
  type WAVES_MATCH_REQUEST is record
    PINS    : PINSET;
    SAMPLE  : DELAY_TIME;
    REQUEST : BOOLEAN;
  end record;

  --
  -- The WAVES match acknowledge (ACK) is the flag that the environment
  -- sets to TRUE when the previously issued request request has been
  -- satisfied.
  --
  subtype WAVES_MATCH_ACK is BOOLEAN;

  --
  -- The WAVES tag is used to annotate the waveform with a comment.
  --
  type WAVES_TAG is record
    TAG    : STRING( 1 to 80 );
    LEN    : NATURAL;
  end record;


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Data structures and a function to allow the construction of
  -- FRAME_DATA objects.
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- The following data structures allow the association of pin names 
  -- (PINSETS) with timing and format information (FRAME_SETS).
  -- This dtat structure is intended to be passed to the BUILD_FRAME_DATA 
  -- function to create a FRAME_DATA record for use with the APPLY 
  -- procedures in applying events with timing and format to the
  -- WAVES_PORT_LIST.
  --
  type PINS_FORMAT is record
    PINS : PINSET;
    FS   : FRAME_SET;
  end record;

  type PINS_FORMAT_LIST is array ( positive range <> ) of PINS_FORMAT;

  --
  -- This function takes a PINS_FORMAT_LIST and builds a 
  -- FRAME_DATA record that contains a FRAME_SET_ARRAY (pointer)
  -- and a FRAME_SET_MAP that assiciates each pin in TEST_PINS
  -- with it's appropriate FRAME_SET.  Given a PIN and a PIN_CODE
  -- This data structure allows a single FRAME to be selected and
  -- applied for the given PIN.
  --
  function BUILD_FRAME_DATA ( PFL : PINS_FORMAT_LIST )
    return FRAME_DATA;


 
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Intermeadiate data structures needed to support the Apply procedures
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- The pin code string is used to provide the apply procedures
  -- with pin codes that are to be translated into event streams
  -- based on the timing data 
  --
  subtype PIN_CODE_STRING is STRING ( 1 to TEST_PINS'POS(TEST_PINS'RIGHT) + 1);

  type PIN_CODE_LIST is array (POSITIVE range <>) of PIN_CODE_STRING;
  
  type INDEX_SLICE is record
      CODES        : PIN_CODE_STRING;
      INDEX        : INTEGER;
  end record;

  type INDEX_SLICE_LIST is array (POSITIVE range <>) of INDEX_SLICE; 

  type TIMED_SLICE is record
      CODES        : PIN_CODE_STRING;
      STIME        : TIME;
  end record;

  type TIMED_SLICE_LIST is array (POSITIVE range <>) of TIMED_SLICE;   


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Waveform operators APPLY, DELAY, MATCH, HANDSHAKE and TAG
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-     
  --
  -- The APPLY procedures used to place events on the waveform.
  --
  procedure APPLY (
      signal   CONNECT     :   out WAVES_PORT_LIST;
      constant TIMING      : in    FRAME;
      constant PIN         : in    TEST_PINS );
  
  procedure APPLY (
      signal   CONNECT     :   out WAVES_PORT_LIST;
      constant TIMING      : in    FRAME_LIST;
      constant PINS        : in    PINSET );
  
  procedure APPLY (
      signal   CONNECT     :   out WAVES_PORT_LIST;
      constant CODES       : in    PIN_CODE_STRING;
      variable TIMING      : in    FRAME_DATA;
      constant PINS        : in    PINSET := ALL_PINS );

  -- 
  -- APPLY functions for tiled waveform construction and performance
  -- level modeling.
  --
  procedure APPLY (
      signal   SIGNALS     :   out WAVES_LOGIC_VECTOR;
      signal   DIRECTION   :   out WAVES_DIRECTION_VECTOR;
      constant TIMING      : in    FRAME;
      constant PIN         : in    TEST_PINS );
  
  procedure APPLY (
      signal   SIGNALS     :   out WAVES_LOGIC_VECTOR;
      signal   DIRECTION   :   out WAVES_DIRECTION_VECTOR;
      constant TIMING      : in    FRAME_LIST;
      constant PINS        : in    PINSET );
  
  procedure APPLY (
      signal   SIGNALS     :   out WAVES_LOGIC_VECTOR;
      signal   DIRECTION   :   out WAVES_DIRECTION_VECTOR;
      constant CODES       : in    PIN_CODE_STRING;
      variable TIMING      : in    FRAME_DATA;
      constant PINS        : in    PINSET := ALL_PINS );



  --
  -- Delay procedures used to delay the application of the apply.
  --  
  procedure DELAY (
      NOMINAL            : DELAY_TIME );
  
  procedure DELAY (
      NOMINAL             : DELAY_TIME;
      EARLIEST_AND_LATEST : DELAY_TIME );
  
  procedure DELAY (
      NOMINAL            : DELAY_TIME;
      EARLIEST           : DELAY_TIME;
      LATEST             : DELAY_TIME );

  --
  -- The MATCH procedures signal a request to the environment for a
  -- match event.  The MATCH procedures do not suspend the execution of
  -- the data set.  This request includes a pin or pin set indicating 
  -- which pin(s) to sample and the time (relative to the beginning of 
  -- the current slice) that the pins are to be sampled.  The environment
  -- responds to the match request by comparing the actual response of
  -- the UUT with the expected response (indicated by the data set) at
  -- the time specified by the match request.  The environment returns
  -- a flag with the value TRUE to the data set if the actual response 
  -- of the UUT matches the expected response at the given time.  Otherwise
  -- a flag with the value FALSE is returned.
  -- 
  procedure MATCH (
      signal   REQUEST :   out WAVES_MATCH_REQUEST;
      constant PIN     : in    TEST_PINS;
      constant SAMPLE  : in    DELAY_TIME );
  
  procedure MATCH (
      signal   REQUEST :   out WAVES_MATCH_REQUEST;
      constant PINS    : in    PINSET;
      constant SAMPLE  : in    DELAY_TIME );


  
  --
  -- The HANDSHAKE procedure signals a request to the environment for
  -- a handshake event.  Issuing a handshake request causes the execution
  -- of the data set to suspend until the handshake request is satisfied.
  -- This request includes the name of the pin and the logic value that is
  -- required on the pin to satisfy the handshake request.  The environment
  -- responds to the handshake request by returning a flag with the value 
  -- of TRUE to the data set when the an event occurs on the given pin of
  -- the UUT that corresponds to the requested logic value.
  --
  procedure HANDSHAKE ( 
      signal   REQUEST :   out WAVES_HANDSHAKE_REQUEST;
      signal   ACK     : in    WAVES_HANDSHAKE_ACK;
      constant PIN     : in    TEST_PINS;
      constant VALUE   : in    LOGIC_VALUE );

  --
  -- The TAG procedure apply the string parameter to the output
  -- waveform, in effect labeling (tagging) the current slice. 
  --
  procedure TAG (
      signal   TAG :   out WAVES_TAG ;
      constant STR : in    STRING );


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- MERGE_STRING functions
  -- 
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- The first MERGE_STRING function inserts a character into a string
  -- at the position given by PIN.  It is an error if the PIN parameter
  -- does not specify a legal position in the first string. 
  --
  -- The second MERGE_STRING function overlays the first string with 
  -- the second string beginning at the position given by PIN.  It is
  -- an error if the PIN parameter does not specify a legal position in
  -- the first string.  It is also an error if the second string is
  -- to long to fit in the first string starting at the position given
  -- by PIN.
  -- 
  function MERGE_STRING( A : STRING;  B : CHARACTER; PIN : TEST_PINS) 
    return STRING;

  function MERGE_STRING( A, B : STRING; PIN : TEST_PINS) 
    return STRING;
  

  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Type definitions, functions and procedures that define the
  -- format and functionality of the WAVES standard external file.
  -- 
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- The following definitions support the fixed file format of WAVES.  
  -- The FILE SLICE record stores information most recently read by the 
  -- READ FILE SLICE procedure.  The flag END_OF_FILE is set if an EOF 
  -- is encountered while scanning for the current file. 
  --
  type FILE_SLICE is record
    CODES                 : STD.TEXTIO.LINE;
    TAG                   : STD.TEXTIO.LINE;
    FS_TIME               : DELAY_TIME;
    FS_INTEGER            : INTEGER;
    END_OF_FILE           : BOOLEAN;
    REPEAT_COUNT          : NATURAL;
    --
    -- User defined hexidecimal conversion characters.
    --
    ZERO                  : Character;
    ONE                   : Character;
  end record;
  
  type FILE_SLICE_LIST is array (POSITIVE range <>) of FILE_SLICE;
  
  --
  -- These functions initialize a FILE SLICE to contain a LINE of
  -- the proper length.  The first returns a LINE of length TEST PINS,
  -- and the second returns a LINE as long as the input parameter.
  -- LINE is initialized to contain all PIN_CODES(1).  In addition, 
  -- FS_TIME is initialized to 0 hr, FS_INTEGER to 0, and  END_OF_FILE 
  -- to FALSE, ZERO to '0', and ONE to '1'. 
  --
  function NEW_FILE_SLICE
    return FILE_SLICE;
  
--  function NEW_FILE_SLICE (
--      constant LENGTH  : in POSITIVE )
--    return FILE_SLICE;
--  
  --
  -- These functions read a file slice from the input file and store
  -- it in the FILE SLICE record.  If a PIN or PINS parameter is
  -- specified then indexing into the file slice is re-ordered by the
  -- parameter.  
  --
  procedure READ_FILE_SLICE (
      file     EX_FILE   :       TEXT;
      variable FILE_DATA : inout FILE_SLICE;
      constant PIN       : in    TEST_PINS );
  
  procedure READ_FILE_SLICE (
      file     EX_FILE   :       TEXT;
      variable FILE_DATA : inout FILE_SLICE;
      constant PINS      : in    PINSET := ALL_PINS );

  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

end WAVES_OBJECTS;



-- --------------------------------------------------------------------
--
--   Title     :  WAVES_Objects Body, IEEE Draft Standard 1029.1
--                
--   Library   :  This package shall be compiled into a library 
--                symbolically named IEEE.
--
--   Developers:  IEEE DASC WAVES Working Group, PAR 1029.1
--
--   Limitation:  
--
-- --------------------------------------------------------------------
--   modification history :
-- --------------------------------------------------------------------
--   Version:  4.0
--   Date   :  01 May 1997
--   Reason :  Complete redesign for 1997 re-ballot
-- --------------------------------------------------------------------
--
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--
--
package body WAVES_OBJECTS is

  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=- INTERNAL =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Internal function used to translate Pin Codes into index values.
  -- A negative value is returned if Code is not in PIN CODES.  Otherwise
  -- a value between 1 and PIN_CODES'LEFT is returned.
  -- 
  function INDEX (
      VALUE              : CHARACTER )
    return INTEGER
  is
  begin
    for C in PIN_CODES'RANGE loop
      if PIN_CODES(C) = VALUE then
        return C;
      end if;
    end loop;
    return -1;
  end INDEX;

  --
  -- Internal function used to translate Test Pins into index values.
  -- The returned value lies between 1 and TEST_PINS'LEFT + 1.
  --
  function INDEX (
      VALUE              : TEST_PINS )
    return INTEGER
  is
  begin
    return TEST_PINS'POS(VALUE) + 1;
  end INDEX;

  --
  -- This subtype definition is made to simplify implementation code.
  --
  subtype TEST_PIN_RANGE is POSITIVE range 
    INDEX(TEST_PINS'LEFT) to INDEX(TEST_PINS'RIGHT);


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  -- 
  -- PINSET declarations and PINSET functions
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- The two deferred pin set constants are defined here.
  -- 
  constant ALL_PINS       : PINSET := (others => TRUE);

  constant NO_PINS        : PINSET := (others => FALSE);

  --
  -- Two prefix notation functions are provided to create a pinsets.
  -- The first function creates a pinset whose single member is the 
  -- named test pin.  The second function creates a pinset whose members
  -- are those pins named in the t4est pins list parameter. 
  -- 
  function NEW_PINSET ( 
      PIN                 : in TEST_PINS ) 
    return PINSET
  is
    variable PIN_SET      : PINSET := (others => FALSE);
  begin
    PIN_SET(PIN) := TRUE;
    return PIN_SET;
  end NEW_PINSET;


  function NEW_PINSET ( 
      PINS                : in TEST_PINS_LIST ) 
    return PINSET
  is
    variable PIN_SET      : PINSET := (others => FALSE);
  begin
    for PIN in PINS'RANGE loop
      PIN_SET(PINS(PIN)) := TRUE;
    end loop;
    return PIN_SET;
  end NEW_PINSET;


  --
  -- Several overloaded "+" operators are also provided to create a pinsets.
  -- The first function "promotes" a single pin to a pinset and is identical
  -- to the first prefix function above.  The remaining "+" operators are 
  -- overloaded for every posible combination of pin and pinset.
  -- 
  function "+" ( LEFT : in TEST_PINS ) return PINSET is

  variable RESULT : PINSET := ( others => FALSE );

  begin
    RESULT( LEFT ) := TRUE;
    return RESULT;
  end "+";


  function "+" ( LEFT, RIGHT : in TEST_PINS ) return PINSET is

  variable RESULT : PINSET := ( others => FALSE );

  begin
    RESULT( LEFT ) := TRUE;
    RESULT( RIGHT ) := TRUE;
    return RESULT;
  end "+";


  function "+" ( LEFT : in TEST_PINS; RIGHT : in PINSET ) return PINSET is

  variable RESULT : PINSET := RIGHT;

  begin
    RESULT( LEFT ) := TRUE;
    return RESULT;
  end "+";


  function "+" ( LEFT : in PINSET; RIGHT : in TEST_PINS ) return PINSET is
 
  variable RESULT : PINSET := LEFT;

  begin
    RESULT( RIGHT ) := TRUE;
    return RESULT;
  end "+";


  function "+" ( LEFT : in PINSET; RIGHT : in PINSET ) return PINSET is

  begin
    return LEFT or RIGHT;
  end "+";


  --
  -- Two overloaded "-" operators are provided to perform set
  -- "subtraction".  These functions remove the pin (or pinset), named in
  -- their RIGHT argument, from the pinset given in their LEFT argument.
  --
  function "-" ( LEFT : in PINSET; RIGHT : in TEST_PINS ) return PINSET is
 
  variable RESULT : PINSET := LEFT;

  begin
    RESULT( RIGHT ) := FALSE;
    return RESULT;
  end "-";


  function "-" ( LEFT, RIGHT : in PINSET ) return PINSET is

  begin
    return LEFT and not RIGHT;
  end "-";


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Function to allow the construction of FRAME_DATA objects.
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- This function takes a PINS_FORMAT_LIST and builds a 
  -- FRAME_DATA record that contains a FRAME_SET_ARRAY (pointer)
  -- and a FRAME_SET_MAP that assiciates each pin in TEST_PINS
  -- with it's appropriate FRAME_SET.  Given a PIN and a PIN_CODE
  -- This data structure allows a single FRAME to be selected and
  -- applied for the given PIN.
  --
  function BUILD_FRAME_DATA ( PFL : PINS_FORMAT_LIST )
    return FRAME_DATA is

  variable RESULT : FRAME_DATA;

  begin
    RESULT.FRAMES := new FRAME_SET_ARRAY( 1 to PFL'length );
    for I in 1 to PFL'length loop
      RESULT.FRAMES.all( I ) := PFL( I ).FS;
      for PIN in TEST_PINS'left to TEST_PINS'right loop
        if PFL( I ).PINS( PIN ) then
          RESULT.FS_MAP( PIN ) := I;
        end if;
      end loop;
    end loop;
    return RESULT;
  end BUILD_FRAME_DATA;
      

  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Waveform operators APPLY, DELAY, MATCH, HANDSHAKE and TAG
  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

  procedure APPLY (
      signal   CONNECT     :   out WAVES_PORT_LIST;
      constant TIMING      : in    FRAME;
      constant PIN         : in    TEST_PINS)
  is
  begin
    if TIMING.LEN > 0 then
      for I in 1 to TIMING.LEN loop
        CONNECT.SIGNALS( INDEX( PIN ) ) <= transport 
          TIMING.EVENTS( I ).VALUE after TIMING.EVENTS( I ).TIME;
      end loop;
      CONNECT.DIRECTION( INDEX( PIN ) ) <= TIMING.DIRECTION;
    end if; 
  end APPLY;


  procedure APPLY (
      signal   CONNECT     :   out WAVES_PORT_LIST ;
      constant TIMING      : in    FRAME_LIST;
      constant PINS        : in    PINSET )
  is

  variable I : positive := 1;

  begin
    for PIN in PINS'range loop
      if PINS( PIN ) then
        if TIMING( I ).LEN > 0 then
          for J in 1 to TIMING( I ).LEN loop
            CONNECT.SIGNALS( INDEX( PIN ) ) <=
              transport TIMING( I ).EVENTS( J ).VALUE 
              after TIMING( I ).EVENTS( J ).TIME;
          end loop;
          CONNECT.DIRECTION( INDEX( PIN ) ) <= TIMING( I ).DIRECTION;
        end if;
        I := I + 1;
      end if; 
    end loop;
  end APPLY;


  procedure APPLY (
      signal   CONNECT     :   out WAVES_PORT_LIST ;
      constant CODES       : in    PIN_CODE_STRING;
      variable TIMING      : in    FRAME_DATA;
      constant PINS        : in    PINSET := ALL_PINS )
  is

  variable THE_FRAME_SET : FRAME_SET;
  variable THE_FRAME     : FRAME;

  begin
    for PIN in PINS'range loop
      if PINS( PIN ) then
        assert TIMING.FS_MAP( PIN ) > 0
          report "Error in APPLY, no timing information specified for PIN."
          severity ERROR;
        THE_FRAME_SET := TIMING.FRAMES.all( TIMING.FS_MAP( PIN ));
        THE_FRAME := THE_FRAME_SET( INDEX( CODES( INDEX( PIN ) ) ) );
        if THE_FRAME.LEN > 0 then
          for I in 1 to THE_FRAME.LEN loop
            CONNECT.SIGNALS( INDEX( PIN ) ) <=
              transport THE_FRAME.EVENTS( I ).VALUE 
              after THE_FRAME.EVENTS( I ).TIME;
          end loop;
          CONNECT.DIRECTION( INDEX( PIN ) ) <= THE_FRAME.DIRECTION;
        end if;
      end if;
    end loop;
  end APPLY;

  -- 
  -- APPLY functions for tiled waveform construction and performance
  -- level modeling.
  --
  procedure APPLY (
      signal   SIGNALS     :   out WAVES_LOGIC_VECTOR;
      signal   DIRECTION   :   out WAVES_DIRECTION_VECTOR;
      constant TIMING      : in    FRAME;
      constant PIN         : in    TEST_PINS)
  is
  begin
    assert index( PIN ) = SIGNALS'left
      report "Error in APPLY, PIN is not in SIGNALS'range."
      severity ERROR;
    if TIMING.LEN > 0 then
      for I in 1 to TIMING.LEN loop
        SIGNALS( INDEX( PIN ) ) <= transport 
          TIMING.EVENTS( I ).VALUE after TIMING.EVENTS( I ).TIME;
      end loop;
      DIRECTION( INDEX( PIN ) ) <= TIMING.DIRECTION;
    end if; 
  end APPLY;


  procedure APPLY (
      signal   SIGNALS     :   out WAVES_LOGIC_VECTOR;
      signal   DIRECTION   :   out WAVES_DIRECTION_VECTOR;
      constant TIMING      : in    FRAME_LIST;
      constant PINS        : in    PINSET )
  is

  variable I : positive := 1;

  begin
    for PIN in PINS'range loop
      if PINS( PIN ) then
        assert index( PIN ) >= SIGNALS'left and
               index( PIN ) <= SIGNALS'right
          report "Error in APPLY, PIN is not in SIGNALS'range."
          severity ERROR;
        if TIMING( I ).LEN > 0 then
          for J in 1 to TIMING( I ).LEN loop
            SIGNALS( INDEX( PIN ) ) <=
              transport TIMING( I ).EVENTS( J ).VALUE 
              after TIMING( I ).EVENTS( J ).TIME;
          end loop;
          DIRECTION( INDEX( PIN ) ) <= TIMING( I ).DIRECTION;
        end if;
        I := I + 1;
      end if; 
    end loop;
  end APPLY;


  procedure APPLY (
      signal   SIGNALS     :   out WAVES_LOGIC_VECTOR;
      signal   DIRECTION   :   out WAVES_DIRECTION_VECTOR;
      constant CODES       : in    PIN_CODE_STRING;
      variable TIMING      : in    FRAME_DATA;
      constant PINS        : in    PINSET := ALL_PINS )
  is

  variable THE_FRAME_SET : FRAME_SET;
  variable THE_FRAME     : FRAME;

  begin
    for PIN in PINS'range loop
      if PINS( PIN ) then
        assert index( PIN ) >= SIGNALS'left and
               index( PIN ) <= SIGNALS'right
          report "Error in APPLY, PIN is not in SIGNALS'range."
          severity ERROR;
        assert TIMING.FS_MAP( PIN ) > 0
          report "Error in APPLY, no timing information specified for PIN."
          severity ERROR;
        THE_FRAME_SET := TIMING.FRAMES.all( TIMING.FS_MAP( PIN ));
        THE_FRAME := THE_FRAME_SET( INDEX( CODES( INDEX( PIN ) ) ) );
        if THE_FRAME.LEN > 0 then
          for I in 1 to THE_FRAME.LEN loop
            SIGNALS( INDEX( PIN ) ) <=
              transport THE_FRAME.EVENTS( I ).VALUE 
              after THE_FRAME.EVENTS( I ).TIME;
          end loop;
          DIRECTION( INDEX( PIN ) ) <= THE_FRAME.DIRECTION;
        end if;
      end if;
    end loop;
  end APPLY;


  --
  -- Delay procedure used with the Apply procedures.
  --  
  procedure DELAY (
      NOMINAL            : DELAY_TIME ) is

  begin
    wait for NOMINAL;
  end DELAY;
  
  procedure DELAY (
      NOMINAL             : DELAY_TIME;
      EARLIEST_AND_LATEST : DELAY_TIME ) is

  begin
    wait for NOMINAL;
  end DELAY;
  
  procedure DELAY (
      NOMINAL            : DELAY_TIME;
      EARLIEST           : DELAY_TIME;
      LATEST             : DELAY_TIME ) is

  begin
    wait for NOMINAL;
  end DELAY;



  --
  -- The MATCH procedures signal a request to the environment for a
  -- match event.  The MATCH procedures do not suspend the execution of
  -- the data set.  This request includes a pin or pin set indicating 
  -- which pin(s) to sample and the time (relative to the beginning of 
  -- the current slice) that the pins are to be sampled.  The environment
  -- responds to the match request by comparing the actual response of
  -- the UUT with the expected response (indicated by the data set) at
  -- the time specified by the match request.  The environment returns
  -- a flag with the value TRUE to the data set if the actual response 
  -- of the UUT matches the expected response at the given time.  Otherwise
  -- a flag with the value FALSE is returned.
  -- 
  procedure MATCH (
      signal   REQUEST :   out WAVES_MATCH_REQUEST;
      constant PIN     : in    TEST_PINS;
      constant SAMPLE  : in    DELAY_TIME ) is

  begin
    REQUEST.PINS <= transport +PIN;
    REQUEST.SAMPLE <= transport SAMPLE;
    REQUEST.REQUEST <= transport TRUE;
    wait for 0 fs;
    REQUEST.REQUEST <= transport FALSE;
  end MATCH;

  procedure MATCH (
      signal   REQUEST :   out WAVES_MATCH_REQUEST;
      constant PINS    : in    PINSET;
      constant SAMPLE  : in    DELAY_TIME ) is

  begin
    REQUEST.PINS <= transport PINS;
    REQUEST.SAMPLE <= transport SAMPLE;
    REQUEST.REQUEST <= transport TRUE;
    wait for 0 fs;
    REQUEST.REQUEST <= transport FALSE;    
  end MATCH;

  --
  -- The HANDSHAKE procedure signals a request to the environment for
  -- a handshake event.  Issuing a handshake request causes the execution
  -- of the data set to suspend until the handshake request is satisfied.
  -- This request includes the name of the pin and the logic value that is
  -- required on the pin to satisfy the handshake request.  The environment
  -- responds to the handshake request by returning a flag with the value 
  -- of TRUE to the data set when the an event occurs on the given pin of
  -- the UUT that corresponds to the requested logic value.
  --

  procedure HANDSHAKE (
      signal   REQUEST :   out WAVES_HANDSHAKE_REQUEST;
      signal   ACK     : in    WAVES_HANDSHAKE_ACK;
      constant PIN     : in    TEST_PINS;
      constant VALUE   : in    LOGIC_VALUE ) is

  begin
    REQUEST.PIN <= transport PIN;
    REQUEST.VALUE <= transport VALUE;
    REQUEST.REQUEST <= transport TRUE;
    wait until ACK = TRUE;
    wait until ACK = FALSE;
    REQUEST.REQUEST <= transport FALSE;
  end HANDSHAKE;

  --
  -- The TAG procedure apply the string parameter to the output
  -- waveform, in effect labeling (tagging) the current slice. 
  --
  procedure TAG (
      signal   TAG :   out WAVES_TAG;
      constant STR : in    STRING ) is

  variable LEN : NATURAL := STR'length;

  begin
    assert LEN <= 80
      report "Warning in TAG procedure, Applying first 80 characters of tag string."
      severity warning;
    if LEN > 80 then
      LEN := 80;
    end if;
    TAG.LEN <= transport LEN;
    TAG.TAG( 1 to LEN ) <= transport STR( 1 to LEN );
  end TAG;


  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- The first MERGE_STRING function inserts a character into a string
  -- at the position given by PIN.  It is an error if the PIN parameter
  -- does not specify a legal position in the first string. 
  --
  -- The second MERGE_STRING function overlays the first string with 
  -- the second string beginning at the position given by PIN.  It is
  -- an error if the PIN parameter does not specify a legal position in
  -- the first string.  It is also an error if the second string is
  -- to long to fit in the first string starting at the position given
  -- by PIN.
  -- 
  function MERGE_STRING( A : STRING;  B : CHARACTER;  PIN : TEST_PINS )
    return STRING
  is
    variable X : STRING(A'RANGE) := A;
  begin
    assert index( PIN ) >= A'left and
           index( PIN ) <= A'right
      report "Error in MERGE_STRING, PIN is not in A'range."
      severity ERROR;
    X(INDEX( PIN )) := B;
    return X;
  end MERGE_STRING;


  function MERGE_STRING( A, B : STRING; PIN : TEST_PINS) 
    return STRING
  is
    variable X : STRING(A'RANGE) := A;
    variable DELTA : INTEGER := INDEX( PIN );
  begin
    assert index( PIN ) >= A'left and
           index( PIN ) <= A'right
      report "Error in MERGE_STRING, PIN is not in A'range."
      severity ERROR;
    assert index( PIN ) + B'length - 1 <= A'length
      report "Error in MERGE_STRING, B will not fir in A."
      severity ERROR;
    for I in B'RANGE loop 
      X(DELTA) := B(I);
      DELTA := DELTA + 1;
    end loop;
    return X;
  end MERGE_STRING;



  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  -- Functions and procedures that define the format and functionality
  -- of the WAVES standard external file.
  -- 
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  --
  --
  -- The following functions initialize a FILE_SLICE with a STRING of
  -- proper length.  The first returns length of TEST_PINS and
  -- the second return length of parameter LENGTH.   The string is
  -- initialized to the leftmost pin code, guaranteeing that the file
  -- slice is always legal.
  --
  function NEW_FILE_SLICE return FILE_SLICE
  is
    variable X : LINE := new STRING(TEST_PIN_RANGE);
  begin
    for I in X'RANGE loop
      X(I) := PIN_CODES(PIN_CODES'LEFT);
    end loop;
    return(X, null, 0 hr, 0, FALSE, 0, '0', '1');
  end NEW_FILE_SLICE;

--  function NEW_FILE_SLICE (
--    constant LENGTH : in POSITIVE)
--  return FILE_SLICE
--  is
--    variable X : LINE := new STRING(1 to LENGTH);
--  begin
--    for I in X'RANGE loop
--      X(I) := PIN_CODES(PIN_CODES'LEFT);
--    end loop;
--    return(X, null, 0 hr, 0, FALSE, 0, '0', '1');
--  end NEW_FILE_SLICE;
--

    -- 
    -- Internal procedure for reading a slice from the external file.
    -- Procedure READ_SLICE scans the WAVES external file for key 
    -- characters and generates a file slice record according to the
    -- semantics of the external file format.  A file slice consists of
    -- data fields and control fields followed by a slice terminator.
    -- Comments are also allowed.  There are eight characters that
    -- have special meaning in the external file.  These characters and
    -- a brief comment are listed below.
    -- 
    --     '%' - comment to end of current line
    --     ';' - file slice terminator
    --
    -- Data fields:
    --
    --         - any sequence of non-special characters

    --     '^' - hexidecimal field using '0' and '1' for conversion
    --           to a bit level pin code string
    --     '~' - hexidecimal field using user-defined characters for
    --           conversion to bit level pin code string
    --     '=' - skip to column command
    --
    -- Control fields:
    --
    --     '+' - sets vector repeat count
    --     ':' - sets timing data
    --     '#' - sets the user-defined characters for conversion
    --           from hexidecimal to bit level pin code strings
    --
    --
    procedure READ_SLICE (
        file     EX_FILE   :       TEXT;
        variable FILE_DATA : inout FILE_SLICE;
        constant PINS      : in    PINSET ) 
    is
    variable CHAR      : CHARACTER;
    variable GOOD      : BOOLEAN;
    variable ILINE     : LINE; 
    variable INDEX     : NATURAL;
    variable PIN_INDEX : NATURAL := 1;

    --
    -- Procedures and functions that are local to the READ_SLICE
    -- procedure.
    --

    --
    -- Return TRUE if the input character is white space.
    --
    function IS_WHITE ( 
        C                : CHARACTER ) 
      return BOOLEAN 
    is
    begin
      return (C = ' ') or (C = HT);
    end IS_WHITE;

    --
    -- Ensure that a non-white character remains on the current line, 
    -- reading new lines as needed.  Sets ENDFILE status. 
    -- 
    procedure SKIP_WHITE (
        IS_EOF : inout BOOLEAN) 
    is
      variable TRASH     : CHARACTER;
    begin
    IS_EOF := FALSE;
    loop
      while ILINE'LENGTH > 0 loop
        if IS_WHITE(ILINE(ILINE.all'LEFT)) then
          READ(ILINE, TRASH);
        else
          return; 
        end if;
      end loop;
      IS_EOF := ENDFILE(EX_FILE);
      exit when IS_EOF; 
      READLINE(EX_FILE, ILINE); 
      WAVES_CURRENT_LINE := WAVES_CURRENT_LINE + 1;
    end loop;
    end SKIP_WHITE;

    --
    -- Read the next non-white character from the input line, reading new 
    -- lines as necessary.
    -- 
    procedure READ_CHAR 
    is
    begin
      SKIP_WHITE(FILE_DATA.END_OF_FILE);
      if not FILE_DATA.END_OF_FILE then
        READ(ILINE, CHAR);
      end if;
    end READ_CHAR;      

    --
    -- Set the index into the FILE_DATA.CODES field to the appropriate
    -- value for storing the current pin code from the external file.
    -- This procedure takes into account the pin set (PINS) that defines the
    -- active pins for this call to read slice as well as the possibility
    -- that a skip command (=) was encountered in the external file.
    -- 
    procedure SET_INDEX
    is
    
    variable I : integer;

    begin
      I := PIN_INDEX;
      while I <= TEST_PINS'pos( TEST_PINS'right ) + 1 loop
        exit when PINS( TEST_PINS'val( I - 1 ) );
        I := I + 1;
      end loop;
      INDEX := I;
      assert INDEX >= FILE_DATA.CODES.all'LEFT and 
             INDEX <= FILE_DATA.CODES.all'RIGHT
        report "Error, External file token format incorrect or line too long."
        severity ERROR;
      PIN_INDEX := I + 1;
    end SET_INDEX;

    --
    -- This procedure supports the skip command (=) by reading the index
    -- value from the external file into the PIN_INDEX variable.  The 
    -- SET_INDEX procedure must be called before the pin code following
    -- the skip command is stored into the FILE_DATA.CODES field.
    --
    procedure UPDATE_INDEX 
    is
    begin
      SKIP_WHITE(FILE_DATA.END_OF_FILE);
      READ(ILINE, PIN_INDEX, GOOD);
      assert GOOD 
        report "Error reading index from external file."
        severity ERROR;
      assert PINS( TEST_PINS'val( PIN_INDEX - 1 ) )
        report "Skip command (=) in external file specified illegal index."
        severity ERROR;
    end UPDATE_INDEX;


    --
    -- This procedure reads the timing information for the current slice.
    -- This information must be in the form of a time (eg. 20 ns) or an
    -- integer.  
    --
    procedure GET_TIMING
    is
      variable PLOCAL : TIME;
    begin
      SKIP_WHITE(FILE_DATA.END_OF_FILE);
      READ(ILINE, PLOCAL, GOOD);
      if GOOD then
        FILE_DATA.FS_TIME := PLOCAL;
        FILE_DATA.FS_INTEGER := 0;
      else
        READ(ILINE, FILE_DATA.FS_INTEGER, GOOD);
        FILE_DATA.FS_TIME := 0 hr;
        assert GOOD
            report "Error in timing format in external file."
            severity ERROR;
      end if;
    end GET_TIMING;

    --
    -- This procedure reads a hexidecimal template for Zero and One 
    -- Conversion characters.  These characters are used to construct
    -- the binary string from hexidecimal strings.
    --
    procedure GET_HEXIDECIMAL_TEMPLATE is
    begin
      if ILINE'LENGTH = 0 then
        READLINE(EX_FILE, ILINE);
        WAVES_CURRENT_LINE := WAVES_CURRENT_LINE + 1;
        if FILE_DATA.END_OF_FILE then
          assert FALSE
          report "Error - Unexpected EOF in GET_HEXIDECIMAL_TEMPLATE."
          severity ERROR;
        end if;
      end if;
      READ_CHAR;
      FILE_DATA.ZERO := CHAR;
      READ_CHAR;
      FILE_DATA.ONE  := CHAR;
    end GET_HEXIDECIMAL_TEMPLATE;

    --
    -- This function converts a hexidecimal character to a four bit
    -- binary string based on the current values of the ZERO and ONE
    -- parameters.
    --
    function To_Binary( CHAR : Character;
                        ZERO : Character;
                        ONE  : Character ) return String is
    begin
      case CHAR is
        when '0' =>       return ZERO & ZERO & ZERO & ZERO;
        when '1' =>       return ZERO & ZERO & ZERO & ONE ;
        when '2' =>       return ZERO & ZERO & ONE  & ZERO;
        when '3' =>       return ZERO & ZERO & ONE  & ONE ;
        when '4' =>       return ZERO & ONE  & ZERO & ZERO;
        when '5' =>       return ZERO & ONE  & ZERO & ONE ;
        when '6' =>       return ZERO & ONE  & ONE  & ZERO;
        when '7' =>       return ZERO & ONE  & ONE  & ONE ;
        when '8' =>       return ONE  & ZERO & ZERO & ZERO;
        when '9' =>       return ONE  & ZERO & ZERO & ONE ;
        when 'a' | 'A' => return ONE  & ZERO & ONE  & ZERO;
        when 'b' | 'B' => return ONE  & ZERO & ONE  & ONE ;
        when 'c' | 'C' => return ONE  & ONE  & ZERO & ZERO;
        when 'd' | 'D' => return ONE  & ONE  & ZERO & ONE ;
        when 'e' | 'E' => return ONE  & ONE  & ONE  & ZERO;
        when 'f' | 'F' => return ONE  & ONE  & ONE  & ONE ;
        when others => assert FALSE
                       report "Illegal character in hexidecimal string."
                       severity ERROR;
                       return BEL & BEL & BEL & BEL;
      end case;
    end To_Binary;

    -- Read a hexidecimal string from the external file.  Continue reading
    -- until white space is seen.  If end of line occurs before
    -- white space, next line is read and string continues.
    --
    procedure GET_HEXIDECIMAL_STRING( ZERO : Character;
                                      ONE  : Character ) is
    variable START           : Natural := 1;
    variable FIELD_WIDTH     : Natural := 1;
    variable NEW_FIELD_WIDTH : Natural := 1;
    variable TEMP_STRING     : LINE := new STRING(TEST_PIN_RANGE);
    variable GOOD            : Boolean := FALSE;
    begin
      loop
        if ILINE'LENGTH = 0 then
          READLINE(EX_FILE, ILINE);
          WAVES_CURRENT_LINE := WAVES_CURRENT_LINE + 1;
          if FILE_DATA.END_OF_FILE then 
            assert FALSE
              report "Error - Unexpected EOF in GET_HEXIDECIMAL_STRING."
              severity ERROR;
          end if;
        end if;
        READ(ILINE, CHAR);
        if IS_WHITE(CHAR) then
          assert FIELD_WIDTH > 1
          report "Encountered Illegal empty '^ ' hexidecimal String."
          severity ERROR;
          exit;
        end if;
        if CHAR = ':' then     -- Field width specifier
          Read( ILINE, NEW_FIELD_WIDTH, GOOD );
          assert GOOD
          report "Illegal field width specifier in hexidecimal string."
          severity ERROR;
          exit;
        end if;
        TEMP_STRING( FIELD_WIDTH to FIELD_WIDTH + 3 ) := 
            To_Binary( CHAR, ZERO, ONE );
        FIELD_WIDTH := FIELD_WIDTH + 4;
      end loop;  
      FIELD_WIDTH := FIELD_WIDTH - 1;
      SET_INDEX;
      if GOOD and NEW_FIELD_WIDTH < FIELD_WIDTH then  -- Truncate on left.
        FIELD_WIDTH := NEW_FIELD_WIDTH;
        START := START + ( 4 - ( FIELD_WIDTH - (( FIELD_WIDTH / 4 ) * 4 )));
      elsif NEW_FIELD_WIDTH > FIELD_WIDTH then -- Fill to Left.
        for I in 1 to NEW_FIELD_WIDTH - FIELD_WIDTH loop
          FILE_DATA.CODES( INDEX ) := ZERO;
          SET_INDEX;
        end loop; 
      else
        null;  -- Do nothing.
      end if;
      FILE_DATA.CODES( INDEX to INDEX + FIELD_WIDTH - 1 ) := 
          TEMP_STRING( START to START + FIELD_WIDTH - 1 );
      for I in 1 to FIELD_WIDTH - 1 loop
        SET_INDEX;
      end loop; 
    end GET_HEXIDECIMAL_STRING;

    -- Read a pin code string from the external file.  Continue reading
    -- until white space is seen.  If end of line occurs before
    -- white space, next line is read and string continues. 
    --
    procedure GET_PIN_CODE_STRING is

    begin
      loop
        SET_INDEX;
        FILE_DATA.CODES(INDEX) := CHAR;
        if ILINE'LENGTH = 0 then
          READLINE(EX_FILE, ILINE);
          WAVES_CURRENT_LINE := WAVES_CURRENT_LINE + 1;
          if FILE_DATA.END_OF_FILE then 
            assert FALSE
              report "Error - Unexpected EOF in GET_PIN_CODE_STRING."
              severity ERROR;
          end if;
        end if;
        READ(ILINE, CHAR);
        if IS_WHITE(CHAR) then
          return;
        end if;
      end loop;  
    end GET_PIN_CODE_STRING;

  -- The body of READ_SLICE.  The procedure dispatches based on an initial
  -- character, which is either special or "other".
  -- 
  begin
    if FILE_DATA.REPEAT_COUNT > 0 then
      FILE_DATA.REPEAT_COUNT := FILE_DATA.REPEAT_COUNT - 1;
      return;
    end if;
    if FILE_DATA.TAG /= null then
      DEALLOCATE( FILE_DATA.TAG );
    end if;
    FILE_DATA.END_OF_FILE := ENDFILE(EX_FILE);
    if FILE_DATA.END_OF_FILE then
      return;
    end if;
    READLINE(EX_FILE, ILINE); 
    WAVES_CURRENT_LINE := WAVES_CURRENT_LINE + 1;
    loop                -- Begin reading until end of slice. 
      READ_CHAR;
      case CHAR is
        when '=' =>      -- Process skip to command.
          UPDATE_INDEX;
        when ':' =>      -- Get slice timing.
          GET_TIMING;
        when '+' =>      -- Set the REPEAT_COUNT for this file slice.
          Read( ILINE, FILE_DATA.REPEAT_COUNT, GOOD );
          assert GOOD
          report "Illegal vector repeat value must be Natural number."
          severity ERROR;          
        when ';' =>      -- Vector terminator
          WAVES_CURRENT_VECTOR := WAVES_CURRENT_VECTOR + 1;
          if FILE_DATA.REPEAT_COUNT > 0 then
            FILE_DATA.REPEAT_COUNT := FILE_DATA.REPEAT_COUNT - 1;
          end if;
          return;
        when '%' =>      -- Ignore rest of line unless it is a waveform tag
          if ILINE /= null and ILINE'length > 0 then
            if ILINE.all( ILINE'left ) = '@' then
              if FILE_DATA.TAG /= null then
                DEALLOCATE( FILE_DATA.TAG );
              end if; 
              FILE_DATA.TAG := new STRING( ILINE.all'range );
              FILE_DATA.TAG.all := ILINE.all;
            end if;
          end if;
          FILE_DATA.END_OF_FILE := ENDFILE(EX_FILE);
          if FILE_DATA.END_OF_FILE then
            return;
          else
            READLINE(EX_FILE, ILINE);
            WAVES_CURRENT_LINE := WAVES_CURRENT_LINE + 1;
          end if;
        when '^' =>      -- Process Hex field.
          GET_HEXIDECIMAL_STRING( '0', '1' );
        when '~' =>      -- User-defined Hex processing.
          GET_HEXIDECIMAL_STRING( FILE_DATA.ZERO, FILE_DATA.ONE );
        when '#' =>      -- Set Hex template characters.
          GET_HEXIDECIMAL_TEMPLATE;
        when others =>   -- read a pin code string.
          exit when FILE_DATA.END_OF_FILE;
          GET_PIN_CODE_STRING;
      end case;
    end loop;
  end READ_SLICE;

  -- -=-=-=-=-=-=-=-=-= READ_FILE_SLICE PROCEDURES =-=-=-=-=-=-=-=-=-=-=-=- 
  -- 
  -- The following definitions support the fixed file format of Level 1
  -- WAVES.  The FILE DATA record stores information most recently 
  -- read by the procedure.  The optional ACTIVE PINS indicates the
  -- external file supplies data for only those pins, the default is 
  -- all TEST PINS.  The order of the ACTIVE PINS must correspond to
  -- the order of signals in the external file.  Note the order of the
  -- ACTIVE PINS does not have to match the order of the TEST PINS. 
  -- 

  --
  -- This procedure takes a single TEST_PINS vector.
  --
  procedure READ_FILE_SLICE (
      file     EX_FILE   :       TEXT;
      variable FILE_DATA : inout FILE_SLICE; 
      constant PIN       : in    TEST_PINS) 
  is
  begin
    READ_SLICE(EX_FILE, FILE_DATA, +PIN );
  end READ_FILE_SLICE;

  --
  -- This procedure accepts a PINSET which corresponds to
  -- the signals in the external file. 
  --
  procedure READ_FILE_SLICE (
      file     EX_FILE   :       TEXT;
      variable FILE_DATA : inout FILE_SLICE; 
      constant PINS      : in    PINSET := ALL_PINS ) 
  is
  begin
    READ_SLICE(EX_FILE, FILE_DATA, PINS);
  end READ_FILE_SLICE;

  --
  -- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

end WAVES_OBJECTS;

