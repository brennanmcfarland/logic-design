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
-- Description : declaration of TEST_PINS package
--
---------------------------------------------------------------------------------------------------
--The TEST_PINS package contains declaration of enumerated type named TEST_PINS.
--This declaration contains one enumerated value for each port
-- find in test vector file: Functional.vec
--An order of declared values match the order of ports in test vector file.

package UUT_TEST_PINS is
type TEST_PINS is (
	CLK,
	RESET,
	ENABLE,
	LOAD,
	D_3,
	D_2,
	D_1,
	D_0,
	Q_3,
	Q_2,
	Q_1,
	Q_0);
end UUT_TEST_PINS;
