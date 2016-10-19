-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 235 06/17/2009 Service Pack 2 SJ Full Version"

-- DATE "11/20/2009 14:29:32"

-- 
-- Device: Altera EP1S20F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY IEEE, stratix;
USE IEEE.std_logic_1164.all;
USE stratix.stratix_components.all;

ENTITY 	Press_top IS
    PORT (
	CLK : IN std_logic;
	CLK_T : IN std_logic;
	DET : IN std_logic;
	RST : IN std_logic;
	STP : IN std_logic;
	STR : IN std_logic;
	clr : IN std_logic;
	OUTPUT : OUT std_logic;
	LIMIT : OUT std_logic_vector(5 DOWNTO 0);
	TIMER : OUT std_logic_vector(9 DOWNTO 0);
	Y : OUT std_logic_vector(2 DOWNTO 0)
	);
END Press_top;

ARCHITECTURE structure OF Press_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLK_T : std_logic;
SIGNAL ww_DET : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_STP : std_logic;
SIGNAL ww_STR : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_OUTPUT : std_logic;
SIGNAL ww_LIMIT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_TIMER : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(2 DOWNTO 0);
SIGNAL \U101|U202|limit_down:lim_cnt[1]~5_cout\ : std_logic;
SIGNAL \CLK_T~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \U101|U201|Y~3\ : std_logic;
SIGNAL \STR~combout\ : std_logic;
SIGNAL \STP~combout\ : std_logic;
SIGNAL \U101|U201|Mux2~2_combout\ : std_logic;
SIGNAL \U101|U201|Mux2~3_combout\ : std_logic;
SIGNAL \U101|U201|CET~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \DET~combout\ : std_logic;
SIGNAL \U101|U202|time_down~0_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[0]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[0]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[0]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[1]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[1]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[1]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[2]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[2]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[2]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[3]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[3]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[3]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[4]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[4]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[5]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[5]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[5]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[6]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[6]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[6]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[7]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[7]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[7]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[8]~regout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[8]~1\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[8]~1COUT1_5\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[9]~regout\ : std_logic;
SIGNAL \U101|U202|TIM~1_combout\ : std_logic;
SIGNAL \U101|U202|TIM~2_combout\ : std_logic;
SIGNAL \U101|U202|TIM~3_combout\ : std_logic;
SIGNAL \U101|U202|TIM~4_combout\ : std_logic;
SIGNAL \U101|U202|TIM~regout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[0]~1_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[0]~regout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~5COUT0_12\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~5COUT1_13\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~regout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~2\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~2COUT1_15\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[2]~regout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[2]~2\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[2]~2COUT1_6\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[3]~regout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[3]~2\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[4]~2\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[4]~2COUT1_6\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[5]~regout\ : std_logic;
SIGNAL \U101|U202|LessThan1~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[0]~3_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[4]~regout\ : std_logic;
SIGNAL \U101|U202|LessThan1~1_combout\ : std_logic;
SIGNAL \U101|U202|LIM~regout\ : std_logic;
SIGNAL \U101|U201|MDS_machine~7_combout\ : std_logic;
SIGNAL \U101|U201|MDS~45_combout\ : std_logic;
SIGNAL \U101|U201|MDS_machine~3_combout\ : std_logic;
SIGNAL \U101|U201|Mux2~0_combout\ : std_logic;
SIGNAL \U101|U201|Mux2~1_combout\ : std_logic;
SIGNAL \U101|U201|MDS[2]~51_combout\ : std_logic;
SIGNAL \U101|U201|MDS[2]~52_combout\ : std_logic;
SIGNAL \U101|U201|MDS[2]~43_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~46_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~47_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~48_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~49_combout\ : std_logic;
SIGNAL \U101|U201|OUTPUT~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \U101|U201|MDS\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U101|U201|Y\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U101|U201|ALT_INV_OUTPUT~0_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[0]~regout\ : std_logic;
SIGNAL \ALT_INV_clr~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLK_T <= CLK_T;
ww_DET <= DET;
ww_RST <= RST;
ww_STP <= STP;
ww_STR <= STR;
ww_clr <= clr;
OUTPUT <= ww_OUTPUT;
LIMIT <= ww_LIMIT;
TIMER <= ww_TIMER;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U101|U201|ALT_INV_OUTPUT~0_combout\ <= NOT \U101|U201|OUTPUT~0_combout\;
\U101|U202|ALT_INV_limit_down:lim_cnt[0]~regout\ <= NOT \U101|U202|limit_down:lim_cnt[0]~regout\;
\ALT_INV_clr~combout\ <= NOT \clr~combout\;

\CLK_T~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK_T,
	combout => \CLK_T~combout\);

\RST~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

\clr~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

\U101|U201|Y[1]\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Y~3\ = \clr~combout\ & (\U101|U201|MDS\(1))
-- \U101|U201|Y\(1) = DFFEAS(\U101|U201|Y~3\, GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \clr~combout\,
	datad => \U101|U201|MDS\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|Y~3\,
	regout => \U101|U201|Y\(1));

\STR~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_STR,
	combout => \STR~combout\);

\STP~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_STP,
	combout => \STP~combout\);

\U101|U201|Mux2~2\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Mux2~2_combout\ = \U101|U201|MDS\(0) & \RST~combout\ & (\STR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|MDS\(0),
	datab => \RST~combout\,
	datad => \STR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|Mux2~2_combout\);

\U101|U201|Mux2~3\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Mux2~3_combout\ = !\U101|U201|MDS\(0) & !\U101|U201|MDS\(2) & (!\STR~combout\ # !\STP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|MDS\(0),
	datab => \U101|U201|MDS\(2),
	datac => \STP~combout\,
	datad => \STR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|Mux2~3_combout\);

\U101|U201|CET~6\ : stratix_lcell
-- Equation(s):
-- \U101|U201|CET~6_combout\ = \U101|U201|MDS\(2) & \U101|U201|MDS\(0) # !\U101|U201|MDS\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U201|MDS\(2),
	datac => \U101|U201|MDS\(1),
	datad => \U101|U201|MDS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|CET~6_combout\);

\~GND\ : stratix_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

\DET~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DET,
	combout => \DET~combout\);

\U101|U202|time_down~0\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down~0_combout\ = \DET~combout\ # !\clr~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \DET~combout\,
	datad => \clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|time_down~0_combout\);

\U101|U202|time_down:tim_cnt[0]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[0]~regout\ = DFFEAS(!\U101|U202|time_down:tim_cnt[0]~regout\, GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, \~GND~combout\, GLOBAL(\U101|U202|time_down~0_combout\), , \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[0]~1\ = CARRY(\U101|U202|time_down:tim_cnt[0]~regout\)
-- \U101|U202|time_down:tim_cnt[0]~1COUT1_5\ = CARRY(\U101|U202|time_down:tim_cnt[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	datab => \U101|U202|time_down:tim_cnt[0]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[0]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[0]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[0]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[1]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[1]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[1]~regout\ $ !\U101|U202|time_down:tim_cnt[0]~1\, GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, VCC, GLOBAL(\U101|U202|time_down~0_combout\), , 
-- \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[1]~1\ = CARRY(!\U101|U202|time_down:tim_cnt[1]~regout\ & !\U101|U202|time_down:tim_cnt[0]~1\)
-- \U101|U202|time_down:tim_cnt[1]~1COUT1_5\ = CARRY(!\U101|U202|time_down:tim_cnt[1]~regout\ & !\U101|U202|time_down:tim_cnt[0]~1COUT1_5\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	datab => \U101|U202|time_down:tim_cnt[1]~regout\,
	datac => VCC,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin0 => \U101|U202|time_down:tim_cnt[0]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[0]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[1]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[1]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[1]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[2]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[2]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[2]~regout\ $ (\U101|U202|time_down:tim_cnt[1]~1\), GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, \~GND~combout\, GLOBAL(\U101|U202|time_down~0_combout\), , 
-- \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[2]~1\ = CARRY(\U101|U202|time_down:tim_cnt[2]~regout\ # !\U101|U202|time_down:tim_cnt[1]~1\)
-- \U101|U202|time_down:tim_cnt[2]~1COUT1_5\ = CARRY(\U101|U202|time_down:tim_cnt[2]~regout\ # !\U101|U202|time_down:tim_cnt[1]~1COUT1_5\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	dataa => \U101|U202|time_down:tim_cnt[2]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin0 => \U101|U202|time_down:tim_cnt[1]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[1]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[2]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[2]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[2]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[3]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[3]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[3]~regout\ $ (!\U101|U202|time_down:tim_cnt[2]~1\), GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, VCC, GLOBAL(\U101|U202|time_down~0_combout\), , 
-- \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[3]~1\ = CARRY(!\U101|U202|time_down:tim_cnt[3]~regout\ & (!\U101|U202|time_down:tim_cnt[2]~1\))
-- \U101|U202|time_down:tim_cnt[3]~1COUT1_5\ = CARRY(!\U101|U202|time_down:tim_cnt[3]~regout\ & (!\U101|U202|time_down:tim_cnt[2]~1COUT1_5\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	dataa => \U101|U202|time_down:tim_cnt[3]~regout\,
	datac => VCC,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin0 => \U101|U202|time_down:tim_cnt[2]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[2]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[3]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[3]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[3]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[4]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[4]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[4]~regout\ $ (\U101|U202|time_down:tim_cnt[3]~1\), GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, VCC, GLOBAL(\U101|U202|time_down~0_combout\), , 
-- \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[4]~1\ = CARRY(\U101|U202|time_down:tim_cnt[4]~regout\ # !\U101|U202|time_down:tim_cnt[3]~1COUT1_5\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	dataa => \U101|U202|time_down:tim_cnt[4]~regout\,
	datac => VCC,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin0 => \U101|U202|time_down:tim_cnt[3]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[3]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[4]~regout\,
	cout => \U101|U202|time_down:tim_cnt[4]~1\);

\U101|U202|time_down:tim_cnt[5]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[5]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[5]~regout\ $ !\U101|U202|time_down:tim_cnt[4]~1\, GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, \~GND~combout\, GLOBAL(\U101|U202|time_down~0_combout\), , 
-- \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[5]~1\ = CARRY(!\U101|U202|time_down:tim_cnt[5]~regout\ & !\U101|U202|time_down:tim_cnt[4]~1\)
-- \U101|U202|time_down:tim_cnt[5]~1COUT1_5\ = CARRY(!\U101|U202|time_down:tim_cnt[5]~regout\ & !\U101|U202|time_down:tim_cnt[4]~1\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	datab => \U101|U202|time_down:tim_cnt[5]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin => \U101|U202|time_down:tim_cnt[4]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[5]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[5]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[5]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[6]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[6]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[6]~regout\ $ (!\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[5]~1\) # (\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[5]~1COUT1_5\), 
-- GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, VCC, GLOBAL(\U101|U202|time_down~0_combout\), , \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[6]~1\ = CARRY(\U101|U202|time_down:tim_cnt[6]~regout\ # !\U101|U202|time_down:tim_cnt[5]~1\)
-- \U101|U202|time_down:tim_cnt[6]~1COUT1_5\ = CARRY(\U101|U202|time_down:tim_cnt[6]~regout\ # !\U101|U202|time_down:tim_cnt[5]~1COUT1_5\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	datab => \U101|U202|time_down:tim_cnt[6]~regout\,
	datac => VCC,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin => \U101|U202|time_down:tim_cnt[4]~1\,
	cin0 => \U101|U202|time_down:tim_cnt[5]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[5]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[6]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[6]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[6]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[7]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[7]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[7]~regout\ $ (!(!\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[6]~1\) # (\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[6]~1COUT1_5\)), 
-- GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, \~GND~combout\, GLOBAL(\U101|U202|time_down~0_combout\), , \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[7]~1\ = CARRY(!\U101|U202|time_down:tim_cnt[7]~regout\ & (!\U101|U202|time_down:tim_cnt[6]~1\))
-- \U101|U202|time_down:tim_cnt[7]~1COUT1_5\ = CARRY(!\U101|U202|time_down:tim_cnt[7]~regout\ & (!\U101|U202|time_down:tim_cnt[6]~1COUT1_5\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	dataa => \U101|U202|time_down:tim_cnt[7]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin => \U101|U202|time_down:tim_cnt[4]~1\,
	cin0 => \U101|U202|time_down:tim_cnt[6]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[6]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[7]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[7]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[7]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[8]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[8]~regout\ = DFFEAS(\U101|U202|time_down:tim_cnt[8]~regout\ $ ((!\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[7]~1\) # (\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[7]~1COUT1_5\)), 
-- GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, \~GND~combout\, GLOBAL(\U101|U202|time_down~0_combout\), , \U101|U201|CET~6_combout\)
-- \U101|U202|time_down:tim_cnt[8]~1\ = CARRY(\U101|U202|time_down:tim_cnt[8]~regout\ # !\U101|U202|time_down:tim_cnt[7]~1\)
-- \U101|U202|time_down:tim_cnt[8]~1COUT1_5\ = CARRY(\U101|U202|time_down:tim_cnt[8]~regout\ # !\U101|U202|time_down:tim_cnt[7]~1COUT1_5\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	dataa => \U101|U202|time_down:tim_cnt[8]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin => \U101|U202|time_down:tim_cnt[4]~1\,
	cin0 => \U101|U202|time_down:tim_cnt[7]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[7]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[8]~regout\,
	cout0 => \U101|U202|time_down:tim_cnt[8]~1\,
	cout1 => \U101|U202|time_down:tim_cnt[8]~1COUT1_5\);

\U101|U202|time_down:tim_cnt[9]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|time_down:tim_cnt[9]~regout\ = DFFEAS((!\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[8]~1\) # (\U101|U202|time_down:tim_cnt[4]~1\ & \U101|U202|time_down:tim_cnt[8]~1COUT1_5\) $ !\U101|U202|time_down:tim_cnt[9]~regout\, 
-- GLOBAL(\CLK_T~combout\), VCC, , \U101|U202|TIM~4_combout\, \~GND~combout\, GLOBAL(\U101|U202|time_down~0_combout\), , \U101|U201|CET~6_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	datac => \~GND~combout\,
	datad => \U101|U202|time_down:tim_cnt[9]~regout\,
	aclr => GND,
	aload => \U101|U202|time_down~0_combout\,
	sload => \U101|U201|CET~6_combout\,
	ena => \U101|U202|TIM~4_combout\,
	cin => \U101|U202|time_down:tim_cnt[4]~1\,
	cin0 => \U101|U202|time_down:tim_cnt[8]~1\,
	cin1 => \U101|U202|time_down:tim_cnt[8]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|time_down:tim_cnt[9]~regout\);

\U101|U202|TIM~1\ : stratix_lcell
-- Equation(s):
-- \U101|U202|TIM~1_combout\ = !\U101|U202|time_down:tim_cnt[2]~regout\ & (!\U101|U202|time_down:tim_cnt[1]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|time_down:tim_cnt[2]~regout\,
	datad => \U101|U202|time_down:tim_cnt[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|TIM~1_combout\);

\U101|U202|TIM~2\ : stratix_lcell
-- Equation(s):
-- \U101|U202|TIM~2_combout\ = !\U101|U202|time_down:tim_cnt[5]~regout\ & !\U101|U202|time_down:tim_cnt[8]~regout\ & !\U101|U202|time_down:tim_cnt[7]~regout\ & !\U101|U202|time_down:tim_cnt[6]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|time_down:tim_cnt[5]~regout\,
	datab => \U101|U202|time_down:tim_cnt[8]~regout\,
	datac => \U101|U202|time_down:tim_cnt[7]~regout\,
	datad => \U101|U202|time_down:tim_cnt[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|TIM~2_combout\);

\U101|U202|TIM~3\ : stratix_lcell
-- Equation(s):
-- \U101|U202|TIM~3_combout\ = !\U101|U202|time_down:tim_cnt[3]~regout\ & !\U101|U202|time_down:tim_cnt[4]~regout\ & \U101|U202|TIM~1_combout\ & \U101|U202|TIM~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|time_down:tim_cnt[3]~regout\,
	datab => \U101|U202|time_down:tim_cnt[4]~regout\,
	datac => \U101|U202|TIM~1_combout\,
	datad => \U101|U202|TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|TIM~3_combout\);

\U101|U202|TIM~4\ : stratix_lcell
-- Equation(s):
-- \U101|U202|TIM~4_combout\ = \U101|U201|CET~6_combout\ # !\U101|U202|time_down:tim_cnt[9]~regout\ & (\U101|U202|time_down:tim_cnt[0]~regout\ # !\U101|U202|TIM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "babb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|CET~6_combout\,
	datab => \U101|U202|time_down:tim_cnt[9]~regout\,
	datac => \U101|U202|time_down:tim_cnt[0]~regout\,
	datad => \U101|U202|TIM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|TIM~4_combout\);

\U101|U202|TIM\ : stratix_lcell
-- Equation(s):
-- \U101|U202|TIM~regout\ = DFFEAS(!\U101|U202|TIM~4_combout\, GLOBAL(\CLK_T~combout\), !GLOBAL(\U101|U202|time_down~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~combout\,
	datad => \U101|U202|TIM~4_combout\,
	aclr => \U101|U202|time_down~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|TIM~regout\);

\U101|U202|limit_down:lim_cnt[0]~1\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[0]~1_combout\ = \U101|U201|MDS\(0) # !\U101|U201|MDS\(2) # !\U101|U201|MDS\(1) # !\DET~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DET~combout\,
	datab => \U101|U201|MDS\(1),
	datac => \U101|U201|MDS\(0),
	datad => \U101|U201|MDS\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|limit_down:lim_cnt[0]~1_combout\);

\U101|U202|limit_down:lim_cnt[0]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[0]~regout\ = DFFEAS(\U101|U202|limit_down:lim_cnt[0]~regout\ $ (!\U101|U202|limit_down:lim_cnt[0]~1_combout\ & !\U101|U202|LessThan1~1_combout\), GLOBAL(\CLK~combout\), GLOBAL(\clr~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U101|U202|limit_down:lim_cnt[0]~1_combout\,
	datab => \U101|U202|limit_down:lim_cnt[0]~regout\,
	datac => \U101|U202|LessThan1~1_combout\,
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|limit_down:lim_cnt[0]~regout\);

\U101|U202|limit_down:lim_cnt[1]~5\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[1]~5COUT0_12\ = CARRY(!\U101|U202|limit_down:lim_cnt[0]~regout\)
-- \U101|U202|limit_down:lim_cnt[1]~5COUT1_13\ = CARRY(!\U101|U202|limit_down:lim_cnt[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|limit_down:lim_cnt[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \U101|U202|limit_down:lim_cnt[1]~5_cout\,
	cout0 => \U101|U202|limit_down:lim_cnt[1]~5COUT0_12\,
	cout1 => \U101|U202|limit_down:lim_cnt[1]~5COUT1_13\);

\U101|U202|limit_down:lim_cnt[1]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[1]~regout\ = DFFEAS(\U101|U202|limit_down:lim_cnt[1]~regout\ $ !\U101|U202|limit_down:lim_cnt[1]~5COUT0_12\, GLOBAL(\CLK~combout\), VCC, , \U101|U202|limit_down:lim_cnt[0]~3_combout\, VCC, !GLOBAL(\clr~combout\), , )
-- \U101|U202|limit_down:lim_cnt[1]~2\ = CARRY(!\U101|U202|limit_down:lim_cnt[1]~regout\ & !\U101|U202|limit_down:lim_cnt[1]~5COUT0_12\)
-- \U101|U202|limit_down:lim_cnt[1]~2COUT1_15\ = CARRY(!\U101|U202|limit_down:lim_cnt[1]~regout\ & !\U101|U202|limit_down:lim_cnt[1]~5COUT1_13\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U101|U202|limit_down:lim_cnt[1]~regout\,
	datac => VCC,
	aclr => GND,
	aload => \ALT_INV_clr~combout\,
	ena => \U101|U202|limit_down:lim_cnt[0]~3_combout\,
	cin0 => \U101|U202|limit_down:lim_cnt[1]~5COUT0_12\,
	cin1 => \U101|U202|limit_down:lim_cnt[1]~5COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|limit_down:lim_cnt[1]~regout\,
	cout0 => \U101|U202|limit_down:lim_cnt[1]~2\,
	cout1 => \U101|U202|limit_down:lim_cnt[1]~2COUT1_15\);

\U101|U202|limit_down:lim_cnt[2]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[2]~regout\ = DFFEAS(\U101|U202|limit_down:lim_cnt[2]~regout\ $ (\U101|U202|limit_down:lim_cnt[1]~2\), GLOBAL(\CLK~combout\), VCC, , \U101|U202|limit_down:lim_cnt[0]~3_combout\, VCC, !GLOBAL(\clr~combout\), , )
-- \U101|U202|limit_down:lim_cnt[2]~2\ = CARRY(\U101|U202|limit_down:lim_cnt[2]~regout\ # !\U101|U202|limit_down:lim_cnt[1]~2\)
-- \U101|U202|limit_down:lim_cnt[2]~2COUT1_6\ = CARRY(\U101|U202|limit_down:lim_cnt[2]~regout\ # !\U101|U202|limit_down:lim_cnt[1]~2COUT1_15\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U101|U202|limit_down:lim_cnt[2]~regout\,
	datac => VCC,
	aclr => GND,
	aload => \ALT_INV_clr~combout\,
	ena => \U101|U202|limit_down:lim_cnt[0]~3_combout\,
	cin0 => \U101|U202|limit_down:lim_cnt[1]~2\,
	cin1 => \U101|U202|limit_down:lim_cnt[1]~2COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|limit_down:lim_cnt[2]~regout\,
	cout0 => \U101|U202|limit_down:lim_cnt[2]~2\,
	cout1 => \U101|U202|limit_down:lim_cnt[2]~2COUT1_6\);

\U101|U202|limit_down:lim_cnt[3]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[3]~regout\ = DFFEAS(\U101|U202|limit_down:lim_cnt[3]~regout\ $ (!\U101|U202|limit_down:lim_cnt[2]~2\), GLOBAL(\CLK~combout\), VCC, , \U101|U202|limit_down:lim_cnt[0]~3_combout\, \~GND~combout\, !GLOBAL(\clr~combout\), , )
-- \U101|U202|limit_down:lim_cnt[3]~2\ = CARRY(!\U101|U202|limit_down:lim_cnt[3]~regout\ & (!\U101|U202|limit_down:lim_cnt[2]~2COUT1_6\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U101|U202|limit_down:lim_cnt[3]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \ALT_INV_clr~combout\,
	ena => \U101|U202|limit_down:lim_cnt[0]~3_combout\,
	cin0 => \U101|U202|limit_down:lim_cnt[2]~2\,
	cin1 => \U101|U202|limit_down:lim_cnt[2]~2COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|limit_down:lim_cnt[3]~regout\,
	cout => \U101|U202|limit_down:lim_cnt[3]~2\);

\U101|U202|limit_down:lim_cnt[4]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[4]~regout\ = DFFEAS(\U101|U202|limit_down:lim_cnt[4]~regout\ $ \U101|U202|limit_down:lim_cnt[3]~2\, GLOBAL(\CLK~combout\), VCC, , \U101|U202|limit_down:lim_cnt[0]~3_combout\, \~GND~combout\, !GLOBAL(\clr~combout\), , )
-- \U101|U202|limit_down:lim_cnt[4]~2\ = CARRY(\U101|U202|limit_down:lim_cnt[4]~regout\ # !\U101|U202|limit_down:lim_cnt[3]~2\)
-- \U101|U202|limit_down:lim_cnt[4]~2COUT1_6\ = CARRY(\U101|U202|limit_down:lim_cnt[4]~regout\ # !\U101|U202|limit_down:lim_cnt[3]~2\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U101|U202|limit_down:lim_cnt[4]~regout\,
	datac => \~GND~combout\,
	aclr => GND,
	aload => \ALT_INV_clr~combout\,
	ena => \U101|U202|limit_down:lim_cnt[0]~3_combout\,
	cin => \U101|U202|limit_down:lim_cnt[3]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|limit_down:lim_cnt[4]~regout\,
	cout0 => \U101|U202|limit_down:lim_cnt[4]~2\,
	cout1 => \U101|U202|limit_down:lim_cnt[4]~2COUT1_6\);

\U101|U202|limit_down:lim_cnt[5]\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[5]~regout\ = DFFEAS((!\U101|U202|limit_down:lim_cnt[3]~2\ & \U101|U202|limit_down:lim_cnt[4]~2\) # (\U101|U202|limit_down:lim_cnt[3]~2\ & \U101|U202|limit_down:lim_cnt[4]~2COUT1_6\) $ 
-- !\U101|U202|limit_down:lim_cnt[5]~regout\, GLOBAL(\CLK~combout\), VCC, , \U101|U202|limit_down:lim_cnt[0]~3_combout\, \~GND~combout\, !GLOBAL(\clr~combout\), , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \~GND~combout\,
	datad => \U101|U202|limit_down:lim_cnt[5]~regout\,
	aclr => GND,
	aload => \ALT_INV_clr~combout\,
	ena => \U101|U202|limit_down:lim_cnt[0]~3_combout\,
	cin => \U101|U202|limit_down:lim_cnt[3]~2\,
	cin0 => \U101|U202|limit_down:lim_cnt[4]~2\,
	cin1 => \U101|U202|limit_down:lim_cnt[4]~2COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|limit_down:lim_cnt[5]~regout\);

\U101|U202|LessThan1~0\ : stratix_lcell
-- Equation(s):
-- \U101|U202|LessThan1~0_combout\ = !\U101|U202|limit_down:lim_cnt[2]~regout\ & \U101|U202|limit_down:lim_cnt[0]~regout\ & !\U101|U202|limit_down:lim_cnt[1]~regout\ & !\U101|U202|limit_down:lim_cnt[3]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|limit_down:lim_cnt[2]~regout\,
	datab => \U101|U202|limit_down:lim_cnt[0]~regout\,
	datac => \U101|U202|limit_down:lim_cnt[1]~regout\,
	datad => \U101|U202|limit_down:lim_cnt[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|LessThan1~0_combout\);

\U101|U202|limit_down:lim_cnt[0]~3\ : stratix_lcell
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[0]~3_combout\ = !\U101|U202|limit_down:lim_cnt[5]~regout\ & !\U101|U202|limit_down:lim_cnt[0]~1_combout\ & (\U101|U202|limit_down:lim_cnt[4]~regout\ # !\U101|U202|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0045",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|limit_down:lim_cnt[5]~regout\,
	datab => \U101|U202|limit_down:lim_cnt[4]~regout\,
	datac => \U101|U202|LessThan1~0_combout\,
	datad => \U101|U202|limit_down:lim_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|limit_down:lim_cnt[0]~3_combout\);

\U101|U202|LessThan1~1\ : stratix_lcell
-- Equation(s):
-- \U101|U202|LessThan1~1_combout\ = \U101|U202|limit_down:lim_cnt[5]~regout\ # !\U101|U202|limit_down:lim_cnt[4]~regout\ & \U101|U202|LessThan1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|limit_down:lim_cnt[4]~regout\,
	datac => \U101|U202|limit_down:lim_cnt[5]~regout\,
	datad => \U101|U202|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U202|LessThan1~1_combout\);

\U101|U202|LIM\ : stratix_lcell
-- Equation(s):
-- \U101|U202|LIM~regout\ = DFFEAS(\U101|U202|LessThan1~1_combout\, GLOBAL(\CLK~combout\), GLOBAL(\clr~combout\), , , \U101|U202|LessThan1~1_combout\, \U101|U202|limit_down:lim_cnt[0]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U101|U202|LessThan1~1_combout\,
	datac => \U101|U202|LessThan1~1_combout\,
	aclr => \ALT_INV_clr~combout\,
	aload => \U101|U202|limit_down:lim_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U202|LIM~regout\);

\U101|U201|MDS_machine~7\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS_machine~7_combout\ = \U101|U202|TIM~regout\ # \U101|U202|LIM~regout\ # !\STP~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STP~combout\,
	datac => \U101|U202|TIM~regout\,
	datad => \U101|U202|LIM~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS_machine~7_combout\);

\U101|U201|MDS~45\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS~45_combout\ = \RST~combout\ & \STP~combout\ & !\U101|U202|TIM~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RST~combout\,
	datac => \STP~combout\,
	datad => \U101|U202|TIM~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS~45_combout\);

\U101|U201|MDS_machine~3\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS_machine~3_combout\ = \U101|U202|TIM~regout\ # \DET~combout\ # !\STP~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdfd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STP~combout\,
	datab => \U101|U202|TIM~regout\,
	datac => \DET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS_machine~3_combout\);

\U101|U201|Mux2~0\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Mux2~0_combout\ = \U101|U201|MDS\(0) & (\U101|U201|MDS~45_combout\ # \U101|U201|MDS\(2)) # !\U101|U201|MDS\(0) & (\U101|U201|MDS_machine~3_combout\ & !\U101|U201|MDS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|MDS~45_combout\,
	datab => \U101|U201|MDS_machine~3_combout\,
	datac => \U101|U201|MDS\(0),
	datad => \U101|U201|MDS\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|Mux2~0_combout\);

\U101|U201|Mux2~1\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Mux2~1_combout\ = \U101|U201|MDS\(2) & (\U101|U201|Mux2~0_combout\ & \RST~combout\ # !\U101|U201|Mux2~0_combout\ & (\U101|U201|MDS_machine~7_combout\)) # !\U101|U201|MDS\(2) & (\U101|U201|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \U101|U201|MDS_machine~7_combout\,
	datac => \U101|U201|MDS\(2),
	datad => \U101|U201|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|Mux2~1_combout\);

\U101|U201|MDS[0]\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS\(0) = DFFEAS(\U101|U201|MDS\(1) & (\U101|U201|Mux2~1_combout\) # !\U101|U201|MDS\(1) & (\U101|U201|Mux2~2_combout\ # \U101|U201|Mux2~3_combout\), GLOBAL(\CLK~combout\), VCC, , , , , !\clr~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe54",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \U101|U201|MDS\(1),
	datab => \U101|U201|Mux2~2_combout\,
	datac => \U101|U201|Mux2~3_combout\,
	datad => \U101|U201|Mux2~1_combout\,
	aclr => GND,
	sclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U201|MDS\(0));

\U101|U201|MDS[2]~51\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[2]~51_combout\ = \U101|U201|MDS\(1) & (\U101|U202|TIM~regout\ & \U101|U201|MDS\(0)) # !\U101|U201|MDS\(1) & !\RST~combout\ & (!\U101|U201|MDS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \U101|U202|TIM~regout\,
	datac => \U101|U201|MDS\(1),
	datad => \U101|U201|MDS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[2]~51_combout\);

\U101|U201|MDS[2]~52\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[2]~52_combout\ = \U101|U201|MDS[2]~51_combout\ & (\U101|U201|MDS\(0) # !\STR~combout\ # !\STP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STP~combout\,
	datab => \U101|U201|MDS\(0),
	datac => \STR~combout\,
	datad => \U101|U201|MDS[2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[2]~52_combout\);

\U101|U201|MDS[2]~43\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[2]~43_combout\ = \RST~combout\ # \U101|U201|MDS\(1) & !\U101|U201|MDS\(0) & \U101|U201|MDS_machine~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \U101|U201|MDS\(1),
	datac => \U101|U201|MDS\(0),
	datad => \U101|U201|MDS_machine~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[2]~43_combout\);

\U101|U201|MDS[2]\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS\(2) = DFFEAS(\clr~combout\ & (\U101|U201|MDS\(2) & (\U101|U201|MDS[2]~43_combout\) # !\U101|U201|MDS\(2) & \U101|U201|MDS[2]~52_combout\), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \clr~combout\,
	datab => \U101|U201|MDS\(2),
	datac => \U101|U201|MDS[2]~52_combout\,
	datad => \U101|U201|MDS[2]~43_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U201|MDS\(2));

\U101|U201|MDS[1]~46\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[1]~46_combout\ = \U101|U201|MDS\(0) & \RST~combout\ # !\U101|U201|MDS\(0) & !\U101|U201|MDS\(2) & (\STP~combout\ # !\RST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa31",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \U101|U201|MDS\(2),
	datac => \STP~combout\,
	datad => \U101|U201|MDS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[1]~46_combout\);

\U101|U201|MDS[1]~47\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[1]~47_combout\ = !\STR~combout\ & \clr~combout\ & !\U101|U201|MDS\(1) & \U101|U201|MDS[1]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STR~combout\,
	datab => \clr~combout\,
	datac => \U101|U201|MDS\(1),
	datad => \U101|U201|MDS[1]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[1]~47_combout\);

\U101|U201|MDS[1]~48\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[1]~48_combout\ = \U101|U201|MDS\(0) & (\U101|U201|MDS\(2)) # !\U101|U201|MDS\(0) & (\U101|U201|MDS\(2) & (!\U101|U201|MDS_machine~7_combout\) # !\U101|U201|MDS\(2) & !\U101|U201|MDS_machine~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c1f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|MDS_machine~3_combout\,
	datab => \U101|U201|MDS\(0),
	datac => \U101|U201|MDS\(2),
	datad => \U101|U201|MDS_machine~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[1]~48_combout\);

\U101|U201|MDS[1]~49\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS[1]~49_combout\ = \U101|U201|MDS[1]~48_combout\ # \STP~combout\ & !\U101|U202|TIM~regout\ & \U101|U201|MDS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STP~combout\,
	datab => \U101|U202|TIM~regout\,
	datac => \U101|U201|MDS\(0),
	datad => \U101|U201|MDS[1]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|MDS[1]~49_combout\);

\U101|U201|MDS[1]\ : stratix_lcell
-- Equation(s):
-- \U101|U201|MDS\(1) = DFFEAS(\U101|U201|MDS[1]~47_combout\ # \RST~combout\ & \U101|U201|Y~3\ & \U101|U201|MDS[1]~49_combout\, GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \RST~combout\,
	datab => \U101|U201|Y~3\,
	datac => \U101|U201|MDS[1]~47_combout\,
	datad => \U101|U201|MDS[1]~49_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U201|MDS\(1));

\U101|U201|OUTPUT~0\ : stratix_lcell
-- Equation(s):
-- \U101|U201|OUTPUT~0_combout\ = \U101|U202|TIM~regout\ # \U101|U201|MDS\(2) & \U101|U201|MDS\(0) # !\U101|U201|MDS\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|MDS\(1),
	datab => \U101|U201|MDS\(2),
	datac => \U101|U202|TIM~regout\,
	datad => \U101|U201|MDS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U101|U201|OUTPUT~0_combout\);

\CLK~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

\U101|U201|Y[0]\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Y\(0) = DFFEAS(\clr~combout\ & (\U101|U201|MDS\(0)), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \clr~combout\,
	datad => \U101|U201|MDS\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U201|Y\(0));

\U101|U201|Y[2]\ : stratix_lcell
-- Equation(s):
-- \U101|U201|Y\(2) = DFFEAS(\U101|U201|MDS\(2) & (\clr~combout\), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \U101|U201|MDS\(2),
	datad => \clr~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U101|U201|Y\(2));

\OUTPUT~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U201|ALT_INV_OUTPUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT);

\LIMIT[0]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LIMIT(0));

\LIMIT[1]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|limit_down:lim_cnt[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LIMIT(1));

\LIMIT[2]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|limit_down:lim_cnt[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LIMIT(2));

\LIMIT[3]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|limit_down:lim_cnt[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LIMIT(3));

\LIMIT[4]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|limit_down:lim_cnt[4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LIMIT(4));

\LIMIT[5]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|limit_down:lim_cnt[5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LIMIT(5));

\TIMER[0]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(0));

\TIMER[1]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(1));

\TIMER[2]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(2));

\TIMER[3]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(3));

\TIMER[4]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(4));

\TIMER[5]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(5));

\TIMER[6]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(6));

\TIMER[7]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(7));

\TIMER[8]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[8]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(8));

\TIMER[9]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U202|time_down:tim_cnt[9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMER(9));

\Y[0]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U201|Y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(0));

\Y[1]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U201|Y\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(1));

\Y[2]~I\ : stratix_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U101|U201|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(2));
END structure;


