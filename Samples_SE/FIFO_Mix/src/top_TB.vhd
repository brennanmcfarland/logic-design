library ieee;
use ieee.std_logic_1164.all;

entity top_tb is
end top_tb;

architecture TB_ARCHITECTURE of top_tb is
	-- Component declaration of the tested unit
	component top
	port(
		CLK1 : in std_logic;
		CLK2 : in std_logic;
		CLR : in std_logic;
		DONE : out std_logic;
		Q : out std_logic_vector(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLK1 : std_logic;
	signal CLK2 : std_logic;
	signal CLR : std_logic;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal DONE : std_logic := '0';
	signal Q : std_logic_vector(7 downto 0);

begin

	-- Unit Under Test port map
	UUT : top
		port map (
			CLK1 => CLK1,
			CLK2 => CLK2,
			CLR => CLR,
			DONE => DONE,
			Q => Q
		);

	STIMULUS: process   -- CLR input generation 
	begin  
		CLR <= '0';
	    wait for 1 ns;  -- 0 ns --> 1 ns
		CLR <= '1';
	    wait for 19 ns; -- 1 ns	--> 20 ns
		CLR <= '0';
		wait;
	end process;
		
	CLOCK_CLK1 : process  -- clock generator for 'sender' 
	begin                 --  period = 10 ns
		if DONE /= '1' then
			CLK1 <= '0';
			wait for 5 ns; 
		else
			wait;		  -- stop when DONE='1'
		end if;
		if DONE /= '1' then
			CLK1 <= '1';
			wait for 5 ns; 
		else
			wait;		  -- stop when DONE='1'
		end if;
	end process;
	
	CLOCK_CLK2 : process  -- clock generator for 'ram'
	begin                 -- period = 25 ns
		if DONE /= '1' then
			CLK2 <= '0';
			wait for 12500 ps; 
		else
			wait;		  -- stop when DONE='1'
		end if;
		if DONE /= '1' then
			CLK2 <= '1';
			wait for 12500 ps; 
		else
			wait;		  -- stop when DONE='1'
		end if;
	end process;

end TB_ARCHITECTURE;

