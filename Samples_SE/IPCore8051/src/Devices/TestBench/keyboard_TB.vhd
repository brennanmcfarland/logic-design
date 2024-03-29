--*************************************************************
--* This file is automatically generated test bench template  *
--* By ACTIVE-VHDL    <TBgen v1.10>. Copyright (C) ALDEC Inc. *
--*                                                           *
--* This file was generated on:               2:39 PM, 4/6/99 *
--* Tested entity name:                              keyboard *
--* File name contains tested entity:   $dsn\src\keyboard.vhd *
--*************************************************************

library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity keyboard_tb is
end keyboard_tb;

architecture TB_ARCHITECTURE of keyboard_tb is
	-- Component declaration of the tested unit
	component keyboard
	port(
		Key_0 : in std_logic;
		Key_1 : in std_logic;
		Key_2 : in std_logic;
		Key_3 : in std_logic;
		Key_4 : in std_logic;
		Key_5 : in std_logic;
		Key_6 : in std_logic;
		Key_7 : in std_logic;
		Key_8 : in std_logic;
		Key_9 : in std_logic;
		RESET : in std_logic;
		ACKA : in std_logic;
		INTA : out std_logic;
		CODE : out std_logic_vector(3 downto 0) );
end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Key_0 : std_logic;
	signal Key_1 : std_logic;
	signal Key_2 : std_logic;
	signal Key_3 : std_logic;
	signal Key_4 : std_logic;
	signal Key_5 : std_logic;
	signal Key_6 : std_logic;
	signal Key_7 : std_logic;
	signal Key_8 : std_logic;
	signal Key_9 : std_logic;
	signal RESET : std_logic;
	signal ACKA : std_logic;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal INTA : std_logic;
	signal CODE : std_logic_vector(3 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : keyboard
		port map
			(Key_0 => Key_0,
			Key_1 => Key_1,
			Key_2 => Key_2,
			Key_3 => Key_3,
			Key_4 => Key_4,
			Key_5 => Key_5,
			Key_6 => Key_6,
			Key_7 => Key_7,
			Key_8 => Key_8,
			Key_9 => Key_9,
			RESET => RESET,
			ACKA => ACKA,
			INTA => INTA,
			CODE => CODE );

	--Below VHDL code is an inserted .\compile\keyboard.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	Key_2 <= '0';
	Key_1 <= '0';
	Key_0 <= '0';
	ACKA <= '1';
	RESET <= '0';
	Key_9 <= '0';
	Key_8 <= '0';
	Key_6 <= '0';
	Key_7 <= '0';
	Key_5 <= '0';
	Key_4 <= '0';
	Key_3 <= '0';
    wait for 100 ns; --0 ps
	RESET <= '1';
    wait for 100 ns; --100 ns
	RESET <= '0';
    wait for 100 ns; --200 ns
	Key_0 <= '1';
    wait for 100 ns; --300 ns
	Key_0 <= '0';
    wait for 100 ns; --400 ns
	ACKA <= '0';
    wait for 100 ns; --500 ns
	ACKA <= '1';
    wait for 100 ns; --600 ns
	Key_1 <= '1';
    wait for 100 ns; --700 ns
	Key_1 <= '0';
    wait for 100 ns; --800 ns
	ACKA <= '0';
    wait for 100 ns; --900 ns
	ACKA <= '1';
    wait for 100 ns; --1 us
	Key_2 <= '1';
    wait for 100 ns; --1100 ns
	Key_2 <= '0';
    wait for 100 ns; --1200 ns
	ACKA <= '0';
    wait for 100 ns; --1300 ns
	ACKA <= '1';
    wait for 100 ns; --1400 ns
	Key_3 <= '1';
    wait for 100 ns; --1500 ns
	Key_3 <= '0';
    wait for 100 ns; --1600 ns
	ACKA <= '0';
    wait for 100 ns; --1700 ns
	ACKA <= '1';
    wait for 100 ns; --1800 ns
	Key_4 <= '1';
    wait for 100 ns; --1900 ns
	Key_4 <= '0';
    wait for 100 ns; --2 us
	ACKA <= '0';
    wait for 100 ns; --2100 ns
	ACKA <= '1';
    wait for 100 ns; --2200 ns
	Key_5 <= '1';
    wait for 100 ns; --2300 ns
	Key_5 <= '0';
    wait for 100 ns; --2400 ns
	ACKA <= '0';
    wait for 100 ns; --2500 ns
	ACKA <= '1';
    wait for 100 ns; --2600 ns
	Key_6 <= '1';
    wait for 100 ns; --2700 ns
	Key_6 <= '0';
    wait for 100 ns; --2800 ns
	ACKA <= '0';
    wait for 100 ns; --2900 ns
	ACKA <= '1';
    wait for 100 ns; --3 us
	Key_7 <= '1';
    wait for 100 ns; --3100 ns
	Key_7 <= '0';
    wait for 100 ns; --3200 ns
	ACKA <= '0';
    wait for 100 ns; --3300 ns
	ACKA <= '1';
    wait for 100 ns; --3400 ns
	Key_8 <= '1';
    wait for 100 ns; --3500 ns
	Key_8 <= '0';
    wait for 100 ns; --3600 ns
	ACKA <= '0';
    wait for 100 ns; --3700 ns
	ACKA <= '1';
    wait for 100 ns; --3800 ns
	Key_9 <= '1';
    wait for 100 ns; --3900 ns
	Key_9 <= '0';
    wait for 100 ns; --4 us
	ACKA <= '0';
    wait for 100 ns; --4100 ns
	ACKA <= '1';
    wait for 100 ns; --4200 ns
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	



	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_keyboard of keyboard_tb is
	for TB_ARCHITECTURE
		for UUT : keyboard
			use entity work.keyboard(keyboard);
		end for;
	end for;
end TESTBENCH_FOR_keyboard;

