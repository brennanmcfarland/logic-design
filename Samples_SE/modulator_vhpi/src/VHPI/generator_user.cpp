/*
//--------------------------------------------------------------------------------------------------
//
// Title       : generator
// Design      : modulator_vhpi
// Author      : Aldec
// Company     : Aldec
//
//----------------------------------------------------------------------------
// VHPI Language Interface - (C) Copyright 2004 by Aldec, Inc.
//
// File        : generator_user.cpp
// Generated   : 3:23:32 PM Monday, August 08, 2005
// By          : VHPI Wizard ver. 2.0
//
//----------------------------------------------------------------------------
//
// Description : User function definition
//
//----------------------------------------------------------------------------
*/


#include <stdlib.h>
#include "vhpi_user.h"
#include "generator_vhpi.h"
#include "utilities.h"
#include <math.h>
#include <string.h>

#define VALUE_REF( NAME, TYPE )     ( *( _hPortHdls[getId( NAME, _hPortHdls )].TYPE ) )
#define FIELD_REF( NAME, FIELD )    ( _hPortHdls[getId( NAME, _hPortHdls )].FIELD )
#define USER_REF( NAME )            ( _hPortHdls[getId( "UserVars", _hPortHdls )].pUserVars->NAME )

#define VHDL_TO_C( NAME )           ( varUpdate( NAME, _hPortHdls ) )
#define C_TO_VHDL( NAME )           ( objUpdate( NAME, _hPortHdls ) )


// MAIN C CODE FUNCTION CALLED FROM VHPI CALLBACKS INDICATED BY REASON:
// 0 - simulation initialization (execf() function)
// 1 - delay event callback	(handle to clock passed)
// 2 - value change callback (handle to changed signal passed)
// 3 - end of simulation callback

// ------------------------------------------------------------------------------------------------------------------------------------------------
// VALUE TRANSFER FROM VHDL TO C:
// ------------------------------------------------------------------------------------------------------------------------------------------------
// Simplified:
//  VHDL_TO_C( "port_name" );                                   // if only information structure is used
//                                                              // if additional options needed use below function calls
// Advanced:
//  varUpdate( "port_name", _hPortHdls );                       // if only information structure is used (same as above)
//  varUpdate( "port_name", _hPortHdls, &localVar, typeFlag );  // if additional local variable is used and not default C type is used
//  varUpdate( "port_name", _hPortHdls, NULL, typeFlag );       // if only information structure and not default C type is used
//  varUpdate( "port_name", _hPortHdls, &localVar );            // if additional local variable is used
//
// e.g.:
// a. to update local variable var0 from port "in0":
//  varUpdate( "in0", _hPortHdls, &var0 );  
//
// b. to update variable in information structure from port "in0":
//  VHDL_TO_C( "in0" );
//  or
//  varUpdate( "in0", _hPortHdls );
//
// c. to update variable in information structure from port "in0" when conversion from std_logic_vector to int[n] is used:
//  varUpdate( "in0", _hPortHdls, NULL, typeIntVecVar );  
//
// Port handle can be used instead of port name.
// ------------------------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------------------------------------------------------------
// REFERENCE TO USER VARIABLE ASSOCIATED WITH PORT IN INFORMATION STRUCTURE (see SValObjPtrs in "utilities.h" header file):
// ------------------------------------------------------------------------------------------------------------------------------------------------
//  VALUE_REF( <name>, <type> )
// where
//  <name> is port name enclosed in doublequotes 
//  <type> is one of predefined variable types: BOOL, INT, REAL.
// 
// e.g.:
//  VALUE_REF( "CLK", BOOL )        - boolean variable associated with CLK port
//  VALUE_REF( "DATA", INT ) = 278; - assignment to integer variable associated with DATA port
//
// Port handle (without doublequotes) can be used instead of signal name.
// e.g.
//  VALUE_REF( _hHdl, BOOL )        - boolean variable associated with port handled by _hHdl
//  VALUE_REF( _hHdl, INT ) = 278;  - assignment to integer variable associated with port handled by _hHdl
// ------------------------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------------------------------------------------------------
// REFERENCE TO USER VARIABLE IN USER VARIABLES STRUCTURE (see SUserVars in "utilities.h" header file):
// ------------------------------------------------------------------------------------------------------------------------------------------------
//  USER_REF(<name>)
// where <name> is one of variables in SUserVars structure.
//
// e.g.:
//  USER_REF( user_2 )              - reference to user_2 variable in SUserVars structure
//  USER_REF( user_3 ) = 1.0        - assignment to user_3 variable
// ------------------------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------------------------------------------------------------
// VALUE TRANSFER FROM C TO VHDL:
// ------------------------------------------------------------------------------------------------------------------------------------------------
// Simplified:
//  C_TO_VHDL( "port_name" );                                   // if only information structure is used
//                                                              // if additional options needed use below function calls
// Advanced:
//  objUpdate( "port_name", _hPortHdls );                       // if only information structure is used (same as above)
//  objUpdate( "port_name", _hPortHdls, &localVar, typeFlag );  // if additional local variable is used and not default C type is used
//  objUpdate( "port_name", _hPortHdls, NULL, typeFlag );       // if only information structure and not default C type is used
//  objUpdate( "port_name", _hPortHdls, &localVar );            // if additional local variable is used
//
// e.g.:
// a. to update port "in0" from local variable var0 :
//  objUpdate( "in0", _hPortHdls, &var0 );  
// 
// b. to update port "in0" from variable in information structure:
//  C_TO_VHDL( "in0" );
//  or
//  objUpdate( "in0", _hPortHdls );
// 
// c. to update port "in0" from variable in information structure when conversion from std_logic_vector to int[n] is used:
//  objUpdate( "in0", _hPortHdls, NULL, typeIntVecVar );
//
// Port handle can be used instead of port name.
// ------------------------------------------------------------------------------------------------------------------------------------------------


void generator_user( vhpiHandleT _hHdl, int _reason, TValObjPtrs* _hPortHdls )
{
	// local variables for usage convenience
	// <type> <localVarName> = _hPortHdls[getId( "UserVars", _hPortHdls )].pUserVars-><varName>;
	
	// initialization function, _hHdl=NULL
	if ( _reason == 0 )
	{
		
		// put your code here
		// it will be executed on simulation initialization
		
		// initialize output port to 1.0
		VALUE_REF( "Wave", REAL ) = 1.0;
		C_TO_VHDL( "Wave" );
		
		// initialize user variables to 0.0 (current X position and delta for waves generator)
		USER_REF( rDelta ) = 0.0;
		USER_REF( rValueX ) = 0.0;
	}


	// value change callback, _hHdl points to signal changed
	if ( _reason == 2 )
	{	
		// put your code here
		// it will be executed every time value of any port is changed

		// if "Freq" port changes
		if ( strcmp( FIELD_REF( _hHdl, szName ), "Freq" ) == 0 ) 
		{								   
			// update variable in port information structure
			VHDL_TO_C( _hHdl );
			// calculate and assign rDelta variable
			USER_REF( rDelta ) = M_PI * VALUE_REF( _hHdl, INT ) / 1000.0;
		}						

		// if "Sel" port changes
		if ( strcmp( FIELD_REF( _hHdl, szName ), "Sel" ) == 0 )
		{
			// update variable in port information structure
			VHDL_TO_C( _hHdl );
		}

		// if "CLK" port changes
		if ( strcmp( FIELD_REF( _hHdl, szName ), "CLK" ) == 0 )
		{
			// declare and assign local variables for code readability
			double rValueX = USER_REF( rValueX );
			double rDelta = USER_REF( rDelta );
			// declare variable for previous value storage
			bool prevCLK = VALUE_REF( _hHdl, BOOL );
			// update variable in port information structure
			VHDL_TO_C( _hHdl );
			// detect rising edge on CLK
			if ( ( prevCLK == false ) && (VALUE_REF( _hHdl, BOOL ) == true ) )
			{
				rValueX = fmod( ( rValueX + rDelta ), ( M_PI * 2.0 ) );
				// select shape of generated signal
				switch ( VALUE_REF( "Sel", INT ) )
				{
				case 1: // sine wave ( Sel == "01" )
					VALUE_REF( "Wave", REAL ) = sin( rValueX );
					break;
				case 2:	// cosine wave ( Sel == "10" )
					VALUE_REF( "Wave", REAL ) = cos( rValueX );
					break;
				case 3:	// sawtooth wave ( Sel == "11" )
					VALUE_REF( "Wave", REAL ) = ( rValueX * ( 1 / M_PI ) ) - 1.0;
					break;
				default: // generation disabled
					VALUE_REF( "Wave", REAL ) = 1.0;
					break;
				}
				// copy local variable to information table to store it for next CLK edge
				USER_REF( rValueX ) = rValueX;
				// update output
				C_TO_VHDL( "Wave" );
			}
		}
	}
	// end of simulation callback, _hHdl=NULL
	if ( _reason == 3 ) 
	{
		// put your code here
		// it will be executed at the end of simulation

	}

	// update user variables structure if local variables were used (see the beginning of this function)
	// USER_REF( <varName> ) = <localVarName>;
}
