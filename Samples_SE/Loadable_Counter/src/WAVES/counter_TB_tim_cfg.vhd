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
-- Description : declaration of the Timing configuration of the Test Bench
--
---------------------------------------------------------------------------------------------------
configuration TIMING_FOR_counter of counter_wb is
	for TB_ARCHITECTURE
		for UUT : counter
			--
			-- The user should replace :
			-- ENTITY_NAME with an entity name from a backannotated VHDL file,
			-- ARCH_NAME   with an architecture name from a backannotated VHDL file,
			-- and uncomment the line below
			use entity work.counter (structure);
			--
		end for;
	end for;
end TIMING_FOR_counter;

