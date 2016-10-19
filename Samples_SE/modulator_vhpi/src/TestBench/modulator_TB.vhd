library ieee;
use ieee.std_logic_1164.all;

entity modulator_tb is
end modulator_tb;

architecture TB_ARCHITECTURE of modulator_tb is
	-- Component declaration of the tested unit
	component modulator
		port(
			clk : in BIT;
			SinFreq : in INTEGER;
			CosFreq : in INTEGER;
			SawFreq : in INTEGER;
			SinEnable : in BIT;
			CosEnable : in BIT;
			SawEnable : in BIT;
			OUTPUT : out REAL );
	end component;
	
	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : BIT;
	signal SinFreq : INTEGER;
	signal CosFreq : INTEGER;
	signal SawFreq : INTEGER;
	signal SinEnable : BIT;
	signal CosEnable : BIT;
	signal SawEnable : BIT;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal OUTPUT : REAL;
	
	-- Add your code here ...
	
begin
	
	-- Unit Under Test port map
	UUT : modulator
	port map (
		CosEnable => CosEnable,
		CosFreq => CosFreq,
		SawEnable => SawEnable,
		SawFreq => SawFreq,
		SinEnable => SinEnable,
		SinFreq => SinFreq,
		clk => clk,
		OUTPUT => OUTPUT
		);
	
	--Below VHDL code is an inserted .\compile\wave1.vhs
	--User can modify it ....
	
	-- clocking signal is generated until simulation time reaches 2000ns
	CLK_GEN: process
	begin -- of clk_gen process
		if now < 2000ns
			then
			CLK <= '0';
			wait for 500ps;
			CLK <= '1';
			wait for 500ps;
		else
			wait;
		end if;	
	end process; -- end of stimulus process
	
	STIMULUS: process
	begin  -- of stimulus process
		SINENABLE <= '1';
		COSENABLE <= '1';
		SAWENABLE <= '1';
		SINFREQ <= 1;
		COSFREQ <= 4;
		SAWFREQ <= 70;
		wait for 1us;
		SINFREQ <= 90;
		COSFREQ <= 60;
		SAWFREQ <= 30;
		wait;
	end process; -- end of stimulus process
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_modulator of modulator_tb is
	for TB_ARCHITECTURE
		for UUT : modulator
			use entity work.modulator(modulator);
		end for;
	end for;
end TESTBENCH_FOR_modulator;

