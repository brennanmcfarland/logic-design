library ieee;
use ieee.std_logic_1164.all;

library aldec;
use aldec.signal_agent_pkg.all;

entity testbench is
end entity testbench;


architecture beh of testbench is


	component pulse_gen is
  	port(
       clk : in std_logic;
       enable : in std_logic;
       reset : in std_logic;
       pulse : out std_logic
  	);
	end component pulse_gen;

	
	signal clk, enable, gate, reset, pulse: std_logic := '0';
	shared variable finish: boolean := false;			 
	
	---------- signals from internal modules ----------
	signal full1, full2, full3 : std_logic;
	
	
begin	
	
	uut: component pulse_gen port map (clk, enable, reset, pulse);
		
	stimulus: process 
	begin				
		enable <= '1';
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
		wait for 6750 ns;
		
		finish := true;
		wait;
	end process stimulus;
	
	
	clock_gen: process	  
	begin
		
		if finish then
			wait;
		end if;
		
		wait for 50 ns;
		clk <= not clk;
		
	end process clock_gen;

	signal_agent ( "/uut/full1", "full1", 1 );
	signal_agent ( "/uut/u2/FULL", "full2", 1 );
	signal_agent ( "/uut/u3/FULL", "full3", 1 );
	signal_agent ( "gate", "/uut/gate", 1 );
	
	gate_pulse: process (full1, full2, full3)
	begin
		if full1 = '1' and full2 = '1' and full3 = '1' then
			gate <= '1';
		else 
			gate <= '0';
		end if;			
	end process gate_pulse;
		
end architecture beh;