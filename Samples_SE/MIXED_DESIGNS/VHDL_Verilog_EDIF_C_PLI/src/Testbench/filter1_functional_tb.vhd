--* This automatically generated file is a part of WAVES testbench.
--*   This file was generated by Active-HDL 4.0 (TB_generator v.3.0).
--*   Copyright (C) ALDEC Inc.
--* This VHDL file contains the main Test Bench entity
--* and is a part of WAVES Testbench for entity "FILTER (FILTER)"
--* This file was generated on: Tue Oct  5 10:46:11 1999
library ieee;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;
use ieee.std_logic_1164.all;

-- User can put library and packages declaration here

-- NEW FILE

entity FILTER_functional_tb is
end FILTER_functional_tb;

architecture TB_ARCHITECTURE of FILTER_functional_tb is
file RESULTS: TEXT open WRITE_MODE is "filter.out";

	-- Component declaration of the tested unit
	component filter

	port (
		NI : in std_logic_vector(3 downto 0);
		NO : out std_logic_vector(3 downto 0);
		CLK : in std_logic;
		RESET : in std_logic);
	end component;

	-- Internal signals declarations:
	--   stimulus signals (STIM_)for the waveforms mapped into UUT inputs,
	--   observed signals (ACTUAL_) used in monitoring ACTUAL Values of UUT Outputs,
	--   bi-directional signals (BI_DIRECT_) mapped into UUT Inout ports,
	--    the BI_DIRECT_ signals are used as stimulus and also used for monitoring the UUT Inout ports
	signal NI : std_logic_vector(3 downto 0);
	signal NO : std_logic_vector(3 downto 0);
	signal CLK : std_logic;
	signal RESET : std_logic;
	signal END_SIM: BOOLEAN:=FALSE;

	procedure WRITE_RESULTS(
	NI : std_logic_vector(3 downto 0);
	NO : std_logic_vector(3 downto 0);
	CLK : std_logic;
	RESET : std_logic) is 

	variable L_OUT : LINE;
begin
	write(l_out, now, right, 15, ps);
	write(l_out,NI, right, 5);
	write(l_out,NO, right, 5);
	write(l_out,CLK, right, 2);
	write(l_out,RESET, right, 2);
	writeline(RESULTS, L_OUT);
end;

begin

	-- Unit Under Test port map
	UUT: filter
	port map(
		 NI => NI,
		 NO => NO,
		 CLK => CLK,
		 RESET => RESET);
	WRITE_TO_FILE: WRITE_RESULTS(NI,NO,CLK,RESET);
STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	NI <= "0001";
	RESET <= '1'; 
    wait for 45 ns; --5 ns
	RESET <= '0';
    wait for 2100 ns; --50 ns
	NI <= "1111";
    wait for 7200 ns; --2150 ns
	NI <= "0001";
    wait for 6580001 ps; --9350 ns
	END_SIM <= TRUE;
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	
CLOCK_CLK : process
begin
	--this process was generated based on formula: 0 0, 1 10000 -r 20000
	--wait for <time to next event>; -- <current time>
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 10 ns; --0 ps
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 10 ns; --10 ns
	else
		wait;
	end if;
end process;
end TB_ARCHITECTURE;

--configuration TESTBENCH_FOR_FILTER_FUNCTIONAL of FILTER_functional_tb is
--	for TB_ARCHITECTURE
--		for UUT : filter
--			use entity work.filter;
--		end for;
--	end for;
--end TESTBENCH_FOR_FILTER_functional;

