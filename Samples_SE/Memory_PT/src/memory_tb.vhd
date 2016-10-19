library ieee;
use ieee.std_logic_1164.all;

entity memory_tb is
end memory_tb;

architecture TB_ARCHITECTURE of memory_tb is
	-- Component declaration of the tested unit
	component memory
	generic(
		maxa : INTEGER := 1023;
		maxd : INTEGER := 15);
	port(
		CLK : in std_logic;
		WE : in std_logic;
		RE : in std_logic;
		ADDR : in INTEGER range 0 to maxa;
		DI : in INTEGER range 0 to maxd;
		DO : out INTEGER range 0 to maxd);
	end component;
	
	constant CLK_period : TIME := 10 ns;	

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLK : std_logic := '0';
	signal WE : std_logic;
	signal RE : std_logic;
	signal ADDR : INTEGER range 0 to 1023;
	signal DI : INTEGER range 0 to 15;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal DO : INTEGER range 0 to 15;

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

begin

	-- Unit Under Test port map
	UUT : memory
		generic map(
			maxa => 1024,
			maxd => 15)
		port map
			(CLK => CLK,
			WE => WE,
			RE => RE,
			ADDR => ADDR,
			DI => DI,
			DO => DO );

	STIMULUS: process
	begin  -- of stimulus process
		WE <= '1'; RE <= '0'; -- start in WRITE mode
		ADDR <= 0;
		DI <= 15;
	    wait for 10 ns; --0 fs
		ADDR <= 4;
		DI <= 11;
	    wait for 10 ns; --10 ns
		ADDR <= 1;
		DI <= 14;
	    wait for 10 ns; --20 ns
		ADDR <= 2;
		DI <= 13;
	    wait for 10 ns; --30 ns
		ADDR <= 3;
		DI <= 12;
	    wait for 10 ns; --40 ns
		WE <= '0'; RE <= '1'; -- switch to READ mode
		ADDR <= 0;
		DI <= 0;
	    wait for 10 ns; --50 ns
		ADDR <= 1;
	    wait for 10 ns; --60 ns
		ADDR <= 2;
	    wait for 10 ns; --70 ns
		ADDR <= 3;
	    wait for 10 ns; --80 ns
		ADDR <= 4;
	    wait for 10 ns; --90 ns
		ADDR <= 100;
	    wait for 10 ns; --100 ns
		END_SIM <= TRUE;
	--	end of stimulus events
		wait;
	end process; -- end of stimulus process

	CLOCK_CLK : process
	constant CLK_hp : TIME := CLK_period/2.0;		
	begin
		if not END_SIM then
			CLK <= not CLK;
			wait for CLK_hp; 
		else
			wait;
		end if;
	end process;

end TB_ARCHITECTURE;
