---------------------------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Loadable_Counter
-- Author      : marcink
-- Company     : Aldec
--
---------------------------------------------------------------------------------------------------
--
-- File        : counter_TB.vhd
-- Generated   : Mon Jun  6 16:34:57 2005
-- From        : C:\My_Designs\Samples_71\Loadable_Counter\src\WAVES\counter_TB_settings.txt
-- By          : tb_generator.pl ver. ver 1.2s
--
---------------------------------------------------------------------------------------------------
--
-- Description : main Test Bench entity
--
---------------------------------------------------------------------------------------------------

library ieee,synopsys;
use ieee.std_logic_1164.all;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;
use synopsys.std_logic_unsigned.all;

use IEEE.waves_interface.all;
use WORK.UUT_test_pins.all;
use WORK.waves_objects.all;
use WORK.DESIGN_DECLARATIONS.all;
use WORK.MONITOR_UTILITIES.all;
use WORK.WAVES_GENERATOR.all;

-- User can put library and packages declaration here

entity counter_wb is
end counter_wb;

architecture TB_ARCHITECTURE of counter_wb is
	file RESULTS: TEXT open WRITE_MODE is "results.txt";
	-- Component declaration of the tested unit
	component counter
		
		port (
			CLK : in std_logic;
			RESET : in std_logic;
			ENABLE : in std_logic;
			LOAD : in std_logic;
			D : in std_logic_vector(3 downto 0);
			Q : out std_logic_vector(3 downto 0));
	end component;
	
	-- Internal signals declarations:
	--   stimulus signals (STIM_)for the waveforms mapped into UUT inputs,
	--   observed signals (ACTUAL_) used in monitoring ACTUAL Values of UUT Outputs,
	--   bi-directional signals (BI_DIRECT_) mapped into UUT Inout ports,
	--    the BI_DIRECT_ signals are used as stimulus and also used for monitoring the UUT Inout ports
	signal STIM_CLK : std_logic;
	signal STIM_RESET : std_logic;
	signal STIM_ENABLE : std_logic;
	signal STIM_LOAD : std_logic;
	signal STIM_D : std_logic_vector(3 downto 0);
	signal ACTUAL_Q : std_logic_vector(3 downto 0);
	
	-- Expected signals used in monitoring the UUT OUTPUTS
	signal EXPECT_Q : STD_ULOGIC_vector(3 downto 0);
	-- WAVES signals OUTPUTing each slice of the waves port list
	signal WPL  : WAVES_PORT_LIST;
	signal TAG  : WAVES_TAG;
	signal ERR_STATUS: STD_LOGIC:='L';
	-- Signal END_SIM denotes end of test vectors file
	signal END_SIM : BOOLEAN:=FALSE;
	procedure WRITE_RESULTS(
		CLK : std_logic;
		RESET : std_logic;
		ENABLE : std_logic;
		LOAD : std_logic;
		D : std_logic_vector(3 downto 0);
		Q : std_logic_vector(3 downto 0)) is 
		
		variable L_OUT : LINE;
	begin
		write(l_out, now, right, 15, ps);
		write(l_out,CLK, right, 2);
		write(l_out,RESET, right, 2);
		write(l_out,ENABLE, right, 2);
		write(l_out,LOAD, right, 2);
		write(l_out,D, right, 2);
		write(l_out,Q, right, 2);
		writeline(RESULTS, L_OUT);
	end;
	
	
begin
	
	-- Process that generates the WAVES waveform
	WAVES: WAVEFORM (WPL, TAG);
	
	
	-- Processes that convert the WPL values to 1164 Logic Values
	ASSIGN_STIM_CLK: STIM_CLK <= WPL.SIGNALS(TEST_PINS'pos(CLK)+1);
	ASSIGN_STIM_RESET: STIM_RESET <= WPL.SIGNALS(TEST_PINS'pos(RESET)+1);
	ASSIGN_STIM_ENABLE: STIM_ENABLE <= WPL.SIGNALS(TEST_PINS'pos(ENABLE)+1);
	ASSIGN_STIM_LOAD: STIM_LOAD <= WPL.SIGNALS(TEST_PINS'pos(LOAD)+1);
	ASSIGN_STIM_D_0: STIM_D(0) <= WPL.SIGNALS(TEST_PINS'pos(D_0)+1);
	ASSIGN_STIM_D_1: STIM_D(1) <= WPL.SIGNALS(TEST_PINS'pos(D_1)+1);
	ASSIGN_STIM_D_2: STIM_D(2) <= WPL.SIGNALS(TEST_PINS'pos(D_2)+1);
	ASSIGN_STIM_D_3: STIM_D(3) <= WPL.SIGNALS(TEST_PINS'pos(D_3)+1);
	ASSIGN_EXPECT_Q_0: EXPECT_Q(0) <= WPL.SIGNALS(TEST_PINS'pos(Q_0)+1);
	ASSIGN_EXPECT_Q_1: EXPECT_Q(1) <= WPL.SIGNALS(TEST_PINS'pos(Q_1)+1);
	ASSIGN_EXPECT_Q_2: EXPECT_Q(2) <= WPL.SIGNALS(TEST_PINS'pos(Q_2)+1);
	ASSIGN_EXPECT_Q_3: EXPECT_Q(3) <= WPL.SIGNALS(TEST_PINS'pos(Q_3)+1);
	
	
	-- Unit Under Test port map
	UUT: counter
	port map(
		CLK => STIM_CLK,
		RESET => STIM_RESET,
		ENABLE => STIM_ENABLE,
		LOAD => STIM_LOAD,
		D => STIM_D,
		Q => ACTUAL_Q);
	-- Monitor processes to verify the UUT operational response
	MONITOR_Q:
	MONITOR_RESULTS(REP_FILE,ACTUAL_Q,EXPECT_Q,NOW,Q_NAME,ERR_STATUS);
	
	-- Process denoting end of test vectors file
	NOTIFY_END_VECTORS: process (TAG)
	begin
		if TAG.len /= 0 then
			if ERR_STATUS='L' then
				report "All vectors passed.";
			elsif ERR_STATUS='1' then
				report "Errors were encountered on the output ports, differences are listed in counter_report.log";
			end if;
			END_SIM <= TRUE;
			CLOSE_VECTOR;
			CLOSE_REPORT;
		end if;
	end process;

	WRITE_TO_FILE: WRITE_RESULTS(STIM_CLK,STIM_RESET,STIM_ENABLE,STIM_LOAD,STIM_D,ACTUAL_Q);

end TB_ARCHITECTURE;


configuration TESTBENCH_FOR_counter of counter_wb is
	for TB_ARCHITECTURE
		for UUT : counter
			use entity work.counter (counter_behav);
		end for;
	end for;
end TESTBENCH_FOR_counter;
