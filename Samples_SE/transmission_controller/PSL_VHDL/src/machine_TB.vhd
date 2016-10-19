library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity machine_tb is
end machine_tb;

architecture TB_ARCHITECTURE of machine_tb is
	-- Component declaration of the tested unit
	component machine
	port(
		CLK : in std_logic;
		DATA : in std_logic_vector(7 downto 0);
		DRDY : in std_logic;
		ENA : in std_logic;
		REQ : in std_logic;
		RESET : in std_logic;
		ACK : out std_logic;
		EXC : out std_logic;
		IDL : out std_logic;
		Y : out std_logic_vector(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLK : std_logic;
	signal DATA : std_logic_vector(7 downto 0);
	signal DRDY : std_logic;
	signal ENA : std_logic;
	signal REQ : std_logic;
	signal RESET : std_logic;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal ACK : std_logic;
	signal EXC : std_logic;
	signal IDL : std_logic;
	signal Y : std_logic_vector(7 downto 0);

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : machine
		port map (
			CLK => CLK,
			DATA => DATA,
			DRDY => DRDY,
			ENA => ENA,
			REQ => REQ,
			RESET => RESET,
			ACK => ACK,
			EXC => EXC,
			IDL => IDL,
			Y => Y
		);


STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	RESET <= '1';
	DRDY <= '0';
	REQ <= '0';
	ENA <= '0';
	DATA <= "10101010";
    wait for 10 ns; --0 fs
	RESET <= '0';
    wait for 10 ns; --10 ns
	ENA <= '1';
    wait for 20 ns; --20 ns
	REQ <= '1';
    wait for 20 ns; --40 ns
	DRDY <= '1';
    wait for 40 ns; --60 ns
	REQ <= '0';
    wait for 30 ns; --100 ns
	DRDY <= '0';
    wait for 50 ns; --130 ns
	REQ <= '1';
    wait for 20 ns; --180 ns
	DATA <= "0000XXXX";
    wait for 10 ns; --200 ns
	DRDY <= '1';
    wait for 30 ns; --210 ns
	DRDY <= '0';
    wait for 20 ns; --240 ns
	DRDY <= '1';
	DATA <= "01010101";
    wait for 40 ns; --260 ns
	DRDY <= '0';
	REQ <= '0';
    wait for 50 ns; --300 ns
	RESET <= '1';
	wait for 2 ps;  --350 ns
	RESET <= '0';
	wait for 9998 ps;
	REQ <= '1';
	END_SIM <= TRUE;
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	
CLOCK_CLK : process
begin
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 5 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 5 ns; --5 ns
	else
		wait;
	end if;
end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_machine of machine_tb is
	for TB_ARCHITECTURE
		for UUT : machine
			use entity work.machine(behavior);
		end for;
	end for;
end TESTBENCH_FOR_machine;

