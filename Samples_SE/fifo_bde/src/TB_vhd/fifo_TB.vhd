
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_TEXTIO.all;
library STD;
use STD.TEXTIO.all;

	-- Add your library and packages declaration here ...

entity fifo_tb is
end fifo_tb;

architecture TB_ARCHITECTURE of fifo_tb is	  
file RESULTS: TEXT open WRITE_MODE is "results_vhd.txt";

	-- Component declaration of the tested unit
	component fifo
	port(
		DIP : in std_logic_vector(31 downto 0);
		DOP : out std_logic_vector(31 downto 0);
		CLKP : in std_logic;
		EMPTYP : out std_logic;
		FULLP : out std_logic;
		LASTP : out std_logic;
		POPP : in std_logic;
		PUSHP : in std_logic );
end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal DIP : std_logic_vector(31 downto 0);
	signal CLKP : std_logic;
	signal POPP : std_logic;
	signal PUSHP : std_logic;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal DOP : std_logic_vector(31 downto 0);
	signal EMPTYP : std_logic;
	signal FULLP : std_logic;
	signal LASTP : std_logic;

	-- Add your code here ...
procedure WRITE_RESULTS(
	DIP : std_logic_vector(31 downto 0);
	CLKP : std_logic;
	PUSHP : std_logic;
	POPP : std_logic;
	DOP : std_logic_vector(31 downto 0);
	FULLP : std_logic;
	EMPTYP : std_logic;
	LASTP : std_logic) is 

	variable L_OUT : LINE;
begin
	write(l_out, now, right, 15, ps);
	write(l_out,DIP, right, 33);
	write(l_out,CLKP, right, 2);
	write(l_out,PUSHP, right, 2);
	write(l_out,POPP, right, 2);
	write(l_out,DOP, right, 33);
	write(l_out,FULLP, right, 2);
	write(l_out,EMPTYP, right, 2);
	write(l_out,LASTP, right, 2);
	writeline(RESULTS, L_OUT);
end;

begin

	-- Unit Under Test port map
	UUT : fifo
		port map
			(DIP => DIP,
			DOP => DOP,
			CLKP => CLKP,
			EMPTYP => EMPTYP,
			FULLP => FULLP,
			LASTP => LASTP,
			POPP => POPP,
			PUSHP => PUSHP );
	WRITE_TO_FILE: WRITE_RESULTS(DIP,CLKP,PUSHP,POPP,DOP,FULLP,EMPTYP,LASTP);

	--Below VHDL code is an inserted .\compile\fifo_f.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	DIP <= "00000000000000000000000000000000";
	CLKP <= '0';
	PUSHP <= '0';
	POPP <= '0';
    wait for 20 ns; --0 fs
	CLKP <= '1';
    wait for 20 ns; --20 ns
	DIP <= "00010001000000000000000000010001";
	CLKP <= '0';
	PUSHP <= '1';
    wait for 20 ns; --40 ns
	CLKP <= '1';
    wait for 10 ns; --60 ns
	DIP <= "00100010000000000000000000100010";
    wait for 10 ns; --70 ns
	CLKP <= '0';
    wait for 20 ns; --80 ns
	CLKP <= '1';
    wait for 10 ns; --100 ns
	DIP <= "00110011000000000000000000110011";
    wait for 10 ns; --110 ns
	CLKP <= '0';
    wait for 20 ns; --120 ns
	CLKP <= '1';
    wait for 10 ns; --140 ns
	DIP <= "01000100000000000000000001000100";
    wait for 10 ns; --150 ns
	CLKP <= '0';
    wait for 20 ns; --160 ns
	CLKP <= '1';
    wait for 10 ns; --180 ns
	DIP <= "01010101000000000000000001010101";
    wait for 10 ns; --190 ns
	CLKP <= '0';
    wait for 20 ns; --200 ns
	CLKP <= '1';
    wait for 10 ns; --220 ns
	DIP <= "01100110111111110000000001100110";
    wait for 10 ns; --230 ns
	CLKP <= '0';
    wait for 20 ns; --240 ns
	CLKP <= '1';
    wait for 10 ns; --260 ns
	DIP <= "01110111111111111111111101110111";
    wait for 10 ns; --270 ns
	CLKP <= '0';
    wait for 20 ns; --280 ns
	CLKP <= '1';
    wait for 10 ns; --300 ns
	DIP <= "10001000000000001111111110001000";
    wait for 10 ns; --310 ns
	CLKP <= '0';
    wait for 20 ns; --320 ns
	CLKP <= '1';
    wait for 10 ns; --340 ns
	DIP <= "10011001000000000000000010011001";
    wait for 10 ns; --350 ns
	CLKP <= '0';
    wait for 20 ns; --360 ns
	CLKP <= '1';
    wait for 10 ns; --380 ns
	DIP <= "10101010000000000000000010101010";
    wait for 10 ns; --390 ns
	CLKP <= '0';
    wait for 20 ns; --400 ns
	CLKP <= '1';
    wait for 10 ns; --420 ns
	DIP <= "10111011000000000000000010111011";
    wait for 10 ns; --430 ns
	CLKP <= '0';
    wait for 20 ns; --440 ns
	CLKP <= '1';
    wait for 10 ns; --460 ns
	DIP <= "11001100000000000000000011001100";
    wait for 10 ns; --470 ns
	CLKP <= '0';
    wait for 20 ns; --480 ns
	CLKP <= '1';
    wait for 10 ns; --500 ns
	DIP <= "11011101000000000000000011011101";
    wait for 10 ns; --510 ns
	CLKP <= '0';
    wait for 20 ns; --520 ns
	CLKP <= '1';
    wait for 10 ns; --540 ns
	DIP <= "11101110000000000000000011101110";
    wait for 10 ns; --550 ns
	CLKP <= '0';
    wait for 20 ns; --560 ns
	CLKP <= '1';
    wait for 10 ns; --580 ns
	DIP <= "11111111000000000000000011111111";
    wait for 10 ns; --590 ns
	CLKP <= '0';
    wait for 20 ns; --600 ns
	CLKP <= '1';
    wait for 10 ns; --620 ns
	DIP <= "11111111111111111111111111111111";
    wait for 10 ns; --630 ns
	CLKP <= '0';
    wait for 20 ns; --640 ns
	CLKP <= '1';
    wait for 10 ns; --660 ns
	DIP <= "00000000000000000000000000000000";
    wait for 10 ns; --670 ns
	CLKP <= '0';
    wait for 20 ns; --680 ns
	CLKP <= '1';
    wait for 10 ns; --700 ns
	PUSHP <= '0';
	POPP <= '1';
    wait for 10 ns; --710 ns
	CLKP <= '0';
    wait for 20 ns; --720 ns
	CLKP <= '1';
    wait for 20 ns; --740 ns
	CLKP <= '0';
    wait for 20 ns; --760 ns
	CLKP <= '1';
    wait for 20 ns; --780 ns
	CLKP <= '0';
    wait for 20 ns; --800 ns
	CLKP <= '1';
    wait for 20 ns; --820 ns
	CLKP <= '0';
    wait for 20 ns; --840 ns
	CLKP <= '1';
    wait for 20 ns; --860 ns
	CLKP <= '0';
    wait for 20 ns; --880 ns
	CLKP <= '1';
    wait for 20 ns; --900 ns
	CLKP <= '0';
    wait for 20 ns; --920 ns
	CLKP <= '1';
    wait for 20 ns; --940 ns
	CLKP <= '0';
    wait for 20 ns; --960 ns
	CLKP <= '1';
    wait for 20 ns; --980 ns
	CLKP <= '0';
    wait for 20 ns; --1 us
	CLKP <= '1';
    wait for 20 ns; --1020 ns
	CLKP <= '0';
    wait for 20 ns; --1040 ns
	CLKP <= '1';
    wait for 20 ns; --1060 ns
	CLKP <= '0';
    wait for 20 ns; --1080 ns
	CLKP <= '1';
    wait for 20 ns; --1100 ns
	CLKP <= '0';
    wait for 20 ns; --1120 ns
	CLKP <= '1';
    wait for 20 ns; --1140 ns
	CLKP <= '0';
    wait for 20 ns; --1160 ns
	CLKP <= '1';
    wait for 20 ns; --1180 ns
	CLKP <= '0';
    wait for 20 ns; --1200 ns
	CLKP <= '1';
    wait for 20 ns; --1220 ns
	CLKP <= '0';
    wait for 20 ns; --1240 ns
	CLKP <= '1';
    wait for 20 ns; --1260 ns
	CLKP <= '0';
    wait for 20 ns; --1280 ns
	CLKP <= '1';
    wait for 20 ns; --1300 ns
	CLKP <= '0';
    wait for 20 ns; --1320 ns
	CLKP <= '1';
    wait for 20 ns; --1340 ns
	CLKP <= '0';
    wait for 20 ns; --1360 ns
	CLKP <= '1';
    wait for 20 ns; --1380 ns
	CLKP <= '0';
    wait for 20 ns; --1400 ns
	CLKP <= '1';
    wait for 20 ns; --1420 ns
	CLKP <= '0';
    wait for 20 ns; --1440 ns
	CLKP <= '1';
    wait for 20 ns; --1460 ns
	CLKP <= '0';
    wait for 20 ns; --1480 ns
	CLKP <= '1';
    wait for 20 ns; --1500 ns
	CLKP <= '0';
    wait for 20 ns; --1520 ns
	CLKP <= '1';
    wait for 20 ns; --1540 ns
	CLKP <= '0';
    wait for 20 ns; --1560 ns
	CLKP <= '1';
    wait for 20 ns; --1580 ns
	CLKP <= '0';
    wait for 20 ns; --1600 ns
	CLKP <= '1';
    wait for 20 ns; --1620 ns
	CLKP <= '0';
    wait for 20 ns; --1640 ns
	CLKP <= '1';
    wait for 20 ns; --1660 ns
	CLKP <= '0';
    wait for 20 ns; --1680 ns
	CLKP <= '1';
    wait for 20 ns; --1700 ns
	CLKP <= '0';
    wait for 20 ns; --1720 ns
	CLKP <= '1';
    wait for 20 ns; --1740 ns
	CLKP <= '0';
    wait for 20 ns; --1760 ns
	CLKP <= '1';
    wait for 20 ns; --1780 ns
	CLKP <= '0';
    wait for 20 ns; --1800 ns
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	



	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_fifo of fifo_tb is
	for TB_ARCHITECTURE
		for UUT : fifo
			use entity work.fifo(fifo);
		end for;
	end for;
end TESTBENCH_FOR_fifo;

