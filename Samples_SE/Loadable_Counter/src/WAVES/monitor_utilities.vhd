--* This source file is part of 'WAVES based' testbench.
--*   Copyright (C) ALDEC Inc.
--*
--* The IEEE Standard for Waveform and Vector Exchange to Support Design 
--*  and Test Verification (WAVES) is an formal notation inteneded for use 
--*  in all phases of the development of electronics system.  
--*
--* This VHDL file contains the declaration of the MONITOR_UTILITIES package.
--
--  Title   : MONITOR_UTILITIES
--
--  Library : This package shall be compiled into a current project library. 
--
--  Purpose : This package contains declaration of concurent procedure named MONITOR_RESULTS
--		      which provides support for checking the actual ports value
--            against then expected value of tested Unit Under Test (UUT).
--            This procedure is used in 'WAVES based' Test Bench 
--            automatically generated by Active VHDL Wizard.
--
-- --------------------------------------------------------------------
--  Modification history :
-- --------------------------------------------------------------------
--   Version:  1.0
--   Date   :  01 December 1997
--   Reason :  First version of 'WAVES based' Test Bench Wizard
-- --------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;
USE IEEE.waves_1164_utilities.all;

package MONITOR_UTILITIES is

procedure MONITOR_RESULTS (
	file REPORT_FILE: 	TEXT; 
	ACTUAL_OUTPUT: 		in STD_LOGIC_VECTOR; 
	EXPECTED_OUTPUT:		in STD_ULOGIC_VECTOR;
	ACTUAL_TIME:			in TIME;
	constant PIN_STRING:			in STRING;
	signal ERROR_STATUS:	out STD_LOGIC);

procedure MONITOR_RESULTS (
	file REPORT_FILE: 	TEXT; 
	ACTUAL_OUTPUT: 		in STD_LOGIC; 
	EXPECTED_OUTPUT:		in STD_ULOGIC;
	ACTUAL_TIME:			in TIME;
	constant PIN_STRING:			in STRING;
	signal ERROR_STATUS:	out STD_LOGIC);

end MONITOR_UTILITIES;

package body MONITOR_UTILITIES is

procedure MONITOR_RESULTS (
	file REPORT_FILE: 	TEXT; 
	ACTUAL_OUTPUT: 		in STD_LOGIC_VECTOR; 
	EXPECTED_OUTPUT:		in STD_ULOGIC_VECTOR;
	ACTUAL_TIME:			in TIME;
	constant PIN_STRING:	in STRING;
	signal ERROR_STATUS:	out STD_LOGIC) is
	
	variable L: LINE;
	
begin
	assert(Compatible (actual => ACTUAL_OUTPUT, expected => EXPECTED_OUTPUT))
		report "Error on " & PIN_STRING & " port." 
		severity WARNING;  

	if not (Compatible (ACTUAL_OUTPUT, EXPECTED_OUTPUT)) then
		ERROR_STATUS <= '1';
		write (L, STRING'("Time: "));
		write (L, ACTUAL_TIME);
		write (L, STRING'("; Port "));
		write (L, STRING'(PIN_STRING));
		write (L, STRING'(" expected: "));
		write (L, EXPECTED_OUTPUT);
		write (L, STRING'(", current: "));
		write (L, ACTUAL_OUTPUT);
		writeline (REPORT_FILE,L);
	end if;
end;

procedure MONITOR_RESULTS (
	file REPORT_FILE: 	TEXT; 
	ACTUAL_OUTPUT: 		in STD_LOGIC; 
	EXPECTED_OUTPUT:		in STD_ULOGIC;
	ACTUAL_TIME:			in TIME;
	constant PIN_STRING:	in STRING;
	signal ERROR_STATUS:	out STD_LOGIC) is
	
	variable L: LINE;
	
begin
	assert(Compatible (actual => ACTUAL_OUTPUT, expected => EXPECTED_OUTPUT))
		report "Error on " & PIN_STRING & " port." 
		severity WARNING;  

	if not (Compatible (ACTUAL_OUTPUT, EXPECTED_OUTPUT)) then
		ERROR_STATUS <= '1';
		write (L, STRING'("Time: "));
		write (L, ACTUAL_TIME);
		write (L, STRING'("; Port "));
		write (L, STRING'(PIN_STRING));
		write (L, STRING'(" expected: "));
		write (L, EXPECTED_OUTPUT);
		write (L, STRING'(", current: "));
		write (L, ACTUAL_OUTPUT);
		writeline (REPORT_FILE,L);
	end if;
end;

end MONITOR_UTILITIES;


