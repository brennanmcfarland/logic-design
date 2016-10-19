--------------------------------------------------------------------------------
-- Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: I.25
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Mon Jan 16 11:54:55 2006
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf top.pcf -tpw 0 -rpw 100 -s 7 -ar Structure top.ncd time_sim.vhd 
-- Device	: 2vp2fg256-7 (PRODUCTION 1.92 2005-11-04)
-- Input file	: top.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\EDA\Xilinx
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    ENABLE : in STD_LOGIC := 'X'; 
    DISPA : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    DISPB : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    FIBO : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal ENABLE_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal RESET_IBUF_1 : STD_LOGIC; 
  signal U1_n0005_0 : STD_LOGIC; 
  signal U1_n0005_map28_0 : STD_LOGIC; 
  signal U1_n0005_map21_0 : STD_LOGIC; 
  signal U1_n0005_map6_0 : STD_LOGIC; 
  signal U1_n000525_O : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal U1_FIB_n0004_1_cyo : STD_LOGIC; 
  signal U1_FIB_n0004_3_cyo : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal U1_FIBOUT_1_DXMUX_2 : STD_LOGIC; 
  signal U1_n0003_1_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_1_DYMUX_3 : STD_LOGIC; 
  signal U1_n0003_0_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_1_SRFFMUX_4 : STD_LOGIC; 
  signal U1_FIBOUT_1_CLKINVNOT : STD_LOGIC; 
  signal U1_FIBOUT_1_CEINV_5 : STD_LOGIC; 
  signal U1_FIBOUT_3_DXMUX_6 : STD_LOGIC; 
  signal U1_n0003_3_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_3_DYMUX_7 : STD_LOGIC; 
  signal U1_n0003_2_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_3_SRFFMUX_8 : STD_LOGIC; 
  signal U1_FIBOUT_3_CLKINVNOT : STD_LOGIC; 
  signal U1_FIBOUT_3_CEINV_9 : STD_LOGIC; 
  signal U1_FIBOUT_5_DXMUX_10 : STD_LOGIC; 
  signal U1_n0003_5_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_5_DYMUX_11 : STD_LOGIC; 
  signal U1_n0003_4_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_5_SRFFMUX_12 : STD_LOGIC; 
  signal U1_FIBOUT_5_CLKINVNOT : STD_LOGIC; 
  signal U1_FIBOUT_5_CEINV_13 : STD_LOGIC; 
  signal U1_FIBOUT_7_DXMUX_14 : STD_LOGIC; 
  signal U1_n0003_7_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_7_DYMUX_15 : STD_LOGIC; 
  signal U1_n0003_6_1_O_pack_1 : STD_LOGIC; 
  signal U1_FIBOUT_7_SRFFMUX_16 : STD_LOGIC; 
  signal U1_FIBOUT_7_CLKINVNOT : STD_LOGIC; 
  signal U1_FIBOUT_7_CEINV_17 : STD_LOGIC; 
  signal U1_n0005 : STD_LOGIC; 
  signal U1_n000525_O_pack_1 : STD_LOGIC; 
  signal U1_n0005_map6 : STD_LOGIC; 
  signal DISPA_1_OBUF_18 : STD_LOGIC; 
  signal DISPA_6_OBUF_19 : STD_LOGIC; 
  signal DISPA_2_OBUF_20 : STD_LOGIC; 
  signal DISPA_5_OBUF_21 : STD_LOGIC; 
  signal DISPA_3_OBUF_22 : STD_LOGIC; 
  signal DISPB_6_OBUF_23 : STD_LOGIC; 
  signal DISPB_1_OBUF_24 : STD_LOGIC; 
  signal DISPA_0_OBUF_25 : STD_LOGIC; 
  signal DISPA_4_OBUF_26 : STD_LOGIC; 
  signal DISPB_5_OBUF_27 : STD_LOGIC; 
  signal DISPB_2_OBUF_28 : STD_LOGIC; 
  signal DISPB_4_OBUF_29 : STD_LOGIC; 
  signal DISPB_3_OBUF_30 : STD_LOGIC; 
  signal U1_PREV_FIB_1_DXMUX_31 : STD_LOGIC; 
  signal U1_PREV_FIB_1_DYMUX_32 : STD_LOGIC; 
  signal U1_PREV_FIB_1_SRFFMUX_33 : STD_LOGIC; 
  signal U1_PREV_FIB_1_CLKINVNOT : STD_LOGIC; 
  signal U1_PREV_FIB_1_CEINV_34 : STD_LOGIC; 
  signal U1_PREV_FIB_3_DXMUX_35 : STD_LOGIC; 
  signal U1_PREV_FIB_3_DYMUX_36 : STD_LOGIC; 
  signal U1_PREV_FIB_3_SRFFMUX_37 : STD_LOGIC; 
  signal U1_PREV_FIB_3_CLKINVNOT : STD_LOGIC; 
  signal U1_PREV_FIB_3_CEINV_38 : STD_LOGIC; 
  signal FIBO_7_O : STD_LOGIC; 
  signal DISPA_0_O : STD_LOGIC; 
  signal DISPA_1_O : STD_LOGIC; 
  signal DISPA_2_O : STD_LOGIC; 
  signal DISPA_3_O : STD_LOGIC; 
  signal DISPB_0_O : STD_LOGIC; 
  signal DISPA_4_O : STD_LOGIC; 
  signal DISPB_1_O : STD_LOGIC; 
  signal DISPA_5_O : STD_LOGIC; 
  signal DISPB_2_O : STD_LOGIC; 
  signal DISPA_6_O : STD_LOGIC; 
  signal DISPB_3_O : STD_LOGIC; 
  signal DISPB_4_O : STD_LOGIC; 
  signal DISPB_5_O : STD_LOGIC; 
  signal DISPB_6_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal U1_PREV_FIB_5_DXMUX_39 : STD_LOGIC; 
  signal U1_PREV_FIB_5_DYMUX_40 : STD_LOGIC; 
  signal U1_PREV_FIB_5_SRFFMUX_41 : STD_LOGIC; 
  signal U1_PREV_FIB_5_CLKINVNOT : STD_LOGIC; 
  signal U1_PREV_FIB_5_CEINV_42 : STD_LOGIC; 
  signal U1_PREV_FIB_7_DXMUX_43 : STD_LOGIC; 
  signal U1_PREV_FIB_7_DYMUX_44 : STD_LOGIC; 
  signal U1_PREV_FIB_7_SRFFMUX_45 : STD_LOGIC; 
  signal U1_PREV_FIB_7_CLKINVNOT : STD_LOGIC; 
  signal U1_PREV_FIB_7_CEINV_46 : STD_LOGIC; 
  signal U1_n0005_map28 : STD_LOGIC; 
  signal U1_n0005_map21 : STD_LOGIC; 
  signal DISPB_0_OBUF_47 : STD_LOGIC; 
  signal U1_n0004_1_CYINIT_48 : STD_LOGIC; 
  signal U1_n0004_1_CY0F_49 : STD_LOGIC; 
  signal U1_n0004_1_CYSELF_50 : STD_LOGIC; 
  signal U1_FIB_n0004_0_lut_O : STD_LOGIC; 
  signal U1_n0004_1_XORG_51 : STD_LOGIC; 
  signal U1_n0004_1_CYMUXG_52 : STD_LOGIC; 
  signal U1_FIB_n0004_0_cyo : STD_LOGIC; 
  signal U1_n0004_1_CY0G_53 : STD_LOGIC; 
  signal U1_n0004_1_CYSELG_54 : STD_LOGIC; 
  signal U1_FIB_n0004_1_lut_O : STD_LOGIC; 
  signal U1_n0004_2_XORF_55 : STD_LOGIC; 
  signal U1_n0004_2_CYINIT_56 : STD_LOGIC; 
  signal U1_n0004_2_CY0F_57 : STD_LOGIC; 
  signal U1_FIB_n0004_2_lut_O : STD_LOGIC; 
  signal U1_n0004_2_XORG_58 : STD_LOGIC; 
  signal U1_FIB_n0004_2_cyo : STD_LOGIC; 
  signal U1_n0004_2_CYSELF_59 : STD_LOGIC; 
  signal U1_n0004_2_CYMUXFAST_60 : STD_LOGIC; 
  signal U1_n0004_2_CYAND_61 : STD_LOGIC; 
  signal U1_n0004_2_FASTCARRY_62 : STD_LOGIC; 
  signal U1_n0004_2_CYMUXG2_63 : STD_LOGIC; 
  signal U1_n0004_2_CYMUXF2_64 : STD_LOGIC; 
  signal U1_n0004_2_CY0G_65 : STD_LOGIC; 
  signal U1_n0004_2_CYSELG_66 : STD_LOGIC; 
  signal U1_FIB_n0004_3_lut_O : STD_LOGIC; 
  signal U1_n0004_4_XORF_67 : STD_LOGIC; 
  signal U1_n0004_4_CYINIT_68 : STD_LOGIC; 
  signal U1_n0004_4_CY0F_69 : STD_LOGIC; 
  signal U1_FIB_n0004_4_lut_O : STD_LOGIC; 
  signal U1_n0004_4_XORG_70 : STD_LOGIC; 
  signal U1_FIB_n0004_4_cyo : STD_LOGIC; 
  signal U1_n0004_4_CYSELF_71 : STD_LOGIC; 
  signal U1_n0004_4_CYMUXFAST_72 : STD_LOGIC; 
  signal U1_n0004_4_CYAND_73 : STD_LOGIC; 
  signal U1_n0004_4_FASTCARRY_74 : STD_LOGIC; 
  signal U1_n0004_4_CYMUXG2_75 : STD_LOGIC; 
  signal U1_n0004_4_CYMUXF2_76 : STD_LOGIC; 
  signal U1_n0004_4_CY0G_77 : STD_LOGIC; 
  signal U1_n0004_4_CYSELG_78 : STD_LOGIC; 
  signal U1_FIB_n0004_5_lut_O : STD_LOGIC; 
  signal U1_n0004_6_XORF_79 : STD_LOGIC; 
  signal U1_n0004_6_CYINIT_80 : STD_LOGIC; 
  signal U1_n0004_6_CY0F_81 : STD_LOGIC; 
  signal U1_n0004_6_CYSELF_82 : STD_LOGIC; 
  signal U1_FIB_n0004_6_lut_O : STD_LOGIC; 
  signal U1_n0004_6_XORG_83 : STD_LOGIC; 
  signal U1_FIB_n0004_6_cyo : STD_LOGIC; 
  signal U1_FIB_n0004_7_lut_O : STD_LOGIC; 
  signal FIBO_0_O : STD_LOGIC; 
  signal FIBO_1_O : STD_LOGIC; 
  signal ENABLE_INBUF : STD_LOGIC; 
  signal FIBO_2_O : STD_LOGIC; 
  signal FIBO_3_O : STD_LOGIC; 
  signal FIBO_4_O : STD_LOGIC; 
  signal FIBO_5_O : STD_LOGIC; 
  signal FIBO_6_O : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal U1_n0004 : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U1_FIBOUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_PREV_FIB : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  U1_FIBOUT_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_1_1_O_pack_1,
      O => U1_FIBOUT_1_DXMUX_2
    );
  U1_FIBOUT_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_0_1_O_pack_1,
      O => U1_FIBOUT_1_DYMUX_3
    );
  U1_FIBOUT_1_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_FIBOUT_1_SRFFMUX_4
    );
  U1_FIBOUT_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_FIBOUT_1_CLKINVNOT
    );
  U1_FIBOUT_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_FIBOUT_1_CEINV_5
    );
  U1_FIBOUT_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_3_1_O_pack_1,
      O => U1_FIBOUT_3_DXMUX_6
    );
  U1_FIBOUT_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_2_1_O_pack_1,
      O => U1_FIBOUT_3_DYMUX_7
    );
  U1_FIBOUT_3_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_FIBOUT_3_SRFFMUX_8
    );
  U1_FIBOUT_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_FIBOUT_3_CLKINVNOT
    );
  U1_FIBOUT_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_FIBOUT_3_CEINV_9
    );
  U1_FIBOUT_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_5_1_O_pack_1,
      O => U1_FIBOUT_5_DXMUX_10
    );
  U1_FIBOUT_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_4_1_O_pack_1,
      O => U1_FIBOUT_5_DYMUX_11
    );
  U1_FIBOUT_5_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X19Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_FIBOUT_5_SRFFMUX_12
    );
  U1_FIBOUT_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_FIBOUT_5_CLKINVNOT
    );
  U1_FIBOUT_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_FIBOUT_5_CEINV_13
    );
  U1_FIBOUT_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_7_1_O_pack_1,
      O => U1_FIBOUT_7_DXMUX_14
    );
  U1_FIBOUT_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0003_6_1_O_pack_1,
      O => U1_FIBOUT_7_DYMUX_15
    );
  U1_FIBOUT_7_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X19Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_FIBOUT_7_SRFFMUX_16
    );
  U1_FIBOUT_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_FIBOUT_7_CLKINVNOT
    );
  U1_FIBOUT_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_FIBOUT_7_CEINV_17
    );
  U1_n0005_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0005,
      O => U1_n0005_0
    );
  U1_n0005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n000525_O_pack_1,
      O => U1_n000525_O
    );
  U1_n000525 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(2),
      ADR1 => U1_FIBOUT(3),
      ADR2 => U1_FIBOUT(1),
      ADR3 => U1_FIBOUT(0),
      O => U1_n000525_O_pack_1
    );
  U1_n0005_map6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0005_map6,
      O => U1_n0005_map6_0
    );
  U1_Mrom_data_Mrom_DISPA1 : X_LUT4
    generic map(
      INIT => X"0584",
      LOC => "SLICE_X23Y1"
    )
    port map (
      ADR0 => U1_FIBOUT(6),
      ADR1 => U1_FIBOUT(4),
      ADR2 => U1_FIBOUT(7),
      ADR3 => U1_FIBOUT(5),
      O => DISPA_1_OBUF_18
    );
  U1_Mrom_data_Mrom_DISPA2 : X_LUT4
    generic map(
      INIT => X"3170",
      LOC => "SLICE_X22Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(5),
      ADR1 => U1_FIBOUT(7),
      ADR2 => U1_FIBOUT(4),
      ADR3 => U1_FIBOUT(6),
      O => DISPA_2_OBUF_20
    );
  U1_Mrom_data_Mrom_DISPA3 : X_LUT4
    generic map(
      INIT => X"8942",
      LOC => "SLICE_X34Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(6),
      ADR1 => U1_FIBOUT(5),
      ADR2 => U1_FIBOUT(7),
      ADR3 => U1_FIBOUT(4),
      O => DISPA_3_OBUF_22
    );
  U1_Mrom_data_Mrom_DISPB1 : X_LUT4
    generic map(
      INIT => X"1190",
      LOC => "SLICE_X12Y1"
    )
    port map (
      ADR0 => U1_FIBOUT(3),
      ADR1 => U1_FIBOUT(2),
      ADR2 => U1_FIBOUT(0),
      ADR3 => U1_FIBOUT(1),
      O => DISPB_1_OBUF_24
    );
  U1_Mrom_data_Mrom_DISPA4 : X_LUT4
    generic map(
      INIT => X"D004",
      LOC => "SLICE_X36Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(4),
      ADR1 => U1_FIBOUT(5),
      ADR2 => U1_FIBOUT(7),
      ADR3 => U1_FIBOUT(6),
      O => DISPA_4_OBUF_26
    );
  U1_Mrom_data_Mrom_DISPB2 : X_LUT4
    generic map(
      INIT => X"10F2",
      LOC => "SLICE_X6Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(2),
      ADR1 => U1_FIBOUT(1),
      ADR2 => U1_FIBOUT(0),
      ADR3 => U1_FIBOUT(3),
      O => DISPB_2_OBUF_28
    );
  U1_Mrom_data_Mrom_DISPB3 : X_LUT4
    generic map(
      INIT => X"8294",
      LOC => "SLICE_X12Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(1),
      ADR1 => U1_FIBOUT(0),
      ADR2 => U1_FIBOUT(2),
      ADR3 => U1_FIBOUT(3),
      O => DISPB_3_OBUF_30
    );
  U1_PREV_FIB_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(1),
      O => U1_PREV_FIB_1_DXMUX_31
    );
  U1_PREV_FIB_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(0),
      O => U1_PREV_FIB_1_DYMUX_32
    );
  U1_PREV_FIB_1_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_PREV_FIB_1_SRFFMUX_33
    );
  U1_PREV_FIB_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_PREV_FIB_1_CLKINVNOT
    );
  U1_PREV_FIB_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_PREV_FIB_1_CEINV_34
    );
  U1_PREV_FIB_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(3),
      O => U1_PREV_FIB_3_DXMUX_35
    );
  U1_PREV_FIB_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(2),
      O => U1_PREV_FIB_3_DYMUX_36
    );
  U1_PREV_FIB_3_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X16Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_PREV_FIB_3_SRFFMUX_37
    );
  U1_PREV_FIB_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_PREV_FIB_3_CLKINVNOT
    );
  U1_PREV_FIB_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_PREV_FIB_3_CEINV_38
    );
  U1_n0003_0_1 : X_LUT4
    generic map(
      INIT => X"FF66",
      LOC => "SLICE_X16Y1"
    )
    port map (
      ADR0 => U1_FIBOUT(0),
      ADR1 => U1_PREV_FIB(0),
      ADR2 => VCC,
      ADR3 => U1_n0005_0,
      O => U1_n0003_0_1_O_pack_1
    );
  U1_n0003_2_1 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X17Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U1_n0004(2),
      ADR3 => U1_n0005_0,
      O => U1_n0003_2_1_O_pack_1
    );
  U1_n0003_4_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X19Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_n0005_0,
      ADR2 => VCC,
      ADR3 => U1_n0004(4),
      O => U1_n0003_4_1_O_pack_1
    );
  U1_n0003_6_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X19Y2"
    )
    port map (
      ADR0 => U1_n0005_0,
      ADR1 => VCC,
      ADR2 => U1_n0004(6),
      ADR3 => VCC,
      O => U1_n0003_6_1_O_pack_1
    );
  FIBO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => FIBO_7_O,
      O => FIBO(7)
    );
  DISPA_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => DISPA_0_O,
      O => DISPA(0)
    );
  DISPA_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => DISPA_1_O,
      O => DISPA(1)
    );
  DISPA_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => DISPA_2_O,
      O => DISPA(2)
    );
  DISPA_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => DISPA_3_O,
      O => DISPA(3)
    );
  DISPB_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => DISPB_0_O,
      O => DISPB(0)
    );
  DISPA_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => DISPA_4_O,
      O => DISPA(4)
    );
  DISPB_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => DISPB_1_O,
      O => DISPB(1)
    );
  DISPA_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => DISPA_5_O,
      O => DISPA(5)
    );
  DISPB_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => DISPB_2_O,
      O => DISPB(2)
    );
  DISPA_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => DISPA_6_O,
      O => DISPA(6)
    );
  DISPB_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => DISPB_3_O,
      O => DISPB(3)
    );
  DISPB_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD143"
    )
    port map (
      I => DISPB_4_O,
      O => DISPB(4)
    );
  DISPB_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => DISPB_5_O,
      O => DISPB(5)
    );
  DISPB_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => DISPB_6_O,
      O => DISPB(6)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_1
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX6P"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX6P",
      PATHPULSE => 369 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX6P",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  U1_PREV_FIB_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(5),
      O => U1_PREV_FIB_5_DXMUX_39
    );
  U1_PREV_FIB_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(4),
      O => U1_PREV_FIB_5_DYMUX_40
    );
  U1_PREV_FIB_5_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_PREV_FIB_5_SRFFMUX_41
    );
  U1_PREV_FIB_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_PREV_FIB_5_CLKINVNOT
    );
  U1_PREV_FIB_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_PREV_FIB_5_CEINV_42
    );
  U1_PREV_FIB_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(7),
      O => U1_PREV_FIB_7_DXMUX_43
    );
  U1_PREV_FIB_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(6),
      O => U1_PREV_FIB_7_DYMUX_44
    );
  U1_PREV_FIB_7_SRFFMUX : X_INV
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => RESET_IBUF_1,
      O => U1_PREV_FIB_7_SRFFMUX_45
    );
  U1_PREV_FIB_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => CLK_BUFGP,
      O => U1_PREV_FIB_7_CLKINVNOT
    );
  U1_PREV_FIB_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_IBUF_0,
      O => U1_PREV_FIB_7_CEINV_46
    );
  U1_n0005_map28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0005_map28,
      O => U1_n0005_map28_0
    );
  U1_n000562 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X17Y1"
    )
    port map (
      ADR0 => U1_PREV_FIB(2),
      ADR1 => U1_PREV_FIB(3),
      ADR2 => U1_PREV_FIB(0),
      ADR3 => U1_PREV_FIB(1),
      O => U1_n0005_map28
    );
  U1_n0005_map21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0005_map21,
      O => U1_n0005_map21_0
    );
  U1_n000549 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y1"
    )
    port map (
      ADR0 => U1_PREV_FIB(6),
      ADR1 => U1_PREV_FIB(5),
      ADR2 => U1_PREV_FIB(7),
      ADR3 => U1_PREV_FIB(4),
      O => U1_n0005_map21
    );
  U1_Mrom_data_Mrom_DISPB : X_LUT4
    generic map(
      INIT => X"0291",
      LOC => "SLICE_X4Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(2),
      ADR1 => U1_FIBOUT(1),
      ADR2 => U1_FIBOUT(0),
      ADR3 => U1_FIBOUT(3),
      O => DISPB_0_OBUF_47
    );
  U1_n0004_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y0"
    )
    port map (
      IA => U1_n0004_1_CY0F_49,
      IB => U1_n0004_1_CYINIT_48,
      SEL => U1_n0004_1_CYSELF_50,
      O => U1_FIB_n0004_0_cyo
    );
  U1_n0004_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => U1_n0004_1_CYINIT_48
    );
  U1_n0004_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(0),
      O => U1_n0004_1_CY0F_49
    );
  U1_n0004_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_0_lut_O,
      O => U1_n0004_1_CYSELF_50
    );
  U1_n0004_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_1_XORG_51,
      O => U1_n0004(1)
    );
  U1_n0004_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y0"
    )
    port map (
      I0 => U1_FIB_n0004_0_cyo,
      I1 => U1_FIB_n0004_1_lut_O,
      O => U1_n0004_1_XORG_51
    );
  U1_n0004_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_1_CYMUXG_52,
      O => U1_FIB_n0004_1_cyo
    );
  U1_n0004_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X18Y0"
    )
    port map (
      IA => U1_n0004_1_CY0G_53,
      IB => U1_FIB_n0004_0_cyo,
      SEL => U1_n0004_1_CYSELG_54,
      O => U1_n0004_1_CYMUXG_52
    );
  U1_n0004_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(1),
      O => U1_n0004_1_CY0G_53
    );
  U1_n0004_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_1_lut_O,
      O => U1_n0004_1_CYSELG_54
    );
  U1_FIB_n0004_1_lut : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => U1_PREV_FIB(1),
      ADR1 => U1_FIBOUT(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_FIB_n0004_1_lut_O
    );
  U1_FIB_n0004_3_lut : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X18Y1"
    )
    port map (
      ADR0 => U1_FIBOUT(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_PREV_FIB(3),
      O => U1_FIB_n0004_3_lut_O
    );
  U1_n0004_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_2_XORF_55,
      O => U1_n0004(2)
    );
  U1_n0004_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      I0 => U1_n0004_2_CYINIT_56,
      I1 => U1_FIB_n0004_2_lut_O,
      O => U1_n0004_2_XORF_55
    );
  U1_n0004_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      IA => U1_n0004_2_CY0F_57,
      IB => U1_n0004_2_CY0F_57,
      SEL => U1_n0004_2_CYSELF_59,
      O => U1_n0004_2_CYMUXF2_64
    );
  U1_n0004_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      IA => U1_n0004_2_CY0F_57,
      IB => U1_n0004_2_CYINIT_56,
      SEL => U1_n0004_2_CYSELF_59,
      O => U1_FIB_n0004_2_cyo
    );
  U1_n0004_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_1_cyo,
      O => U1_n0004_2_CYINIT_56
    );
  U1_n0004_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(2),
      O => U1_n0004_2_CY0F_57
    );
  U1_n0004_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_2_lut_O,
      O => U1_n0004_2_CYSELF_59
    );
  U1_n0004_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_2_XORG_58,
      O => U1_n0004(3)
    );
  U1_n0004_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      I0 => U1_FIB_n0004_2_cyo,
      I1 => U1_FIB_n0004_3_lut_O,
      O => U1_n0004_2_XORG_58
    );
  U1_n0004_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_2_CYMUXFAST_60,
      O => U1_FIB_n0004_3_cyo
    );
  U1_n0004_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_1_cyo,
      O => U1_n0004_2_FASTCARRY_62
    );
  U1_n0004_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      I0 => U1_n0004_2_CYSELG_66,
      I1 => U1_n0004_2_CYSELF_59,
      O => U1_n0004_2_CYAND_61
    );
  U1_n0004_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      IA => U1_n0004_2_CYMUXG2_63,
      IB => U1_n0004_2_FASTCARRY_62,
      SEL => U1_n0004_2_CYAND_61,
      O => U1_n0004_2_CYMUXFAST_60
    );
  U1_n0004_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y1"
    )
    port map (
      IA => U1_n0004_2_CY0G_65,
      IB => U1_n0004_2_CYMUXF2_64,
      SEL => U1_n0004_2_CYSELG_66,
      O => U1_n0004_2_CYMUXG2_63
    );
  U1_n0004_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(3),
      O => U1_n0004_2_CY0G_65
    );
  U1_n0004_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y1",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_3_lut_O,
      O => U1_n0004_2_CYSELG_66
    );
  U1_n0004_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_4_XORF_67,
      O => U1_n0004(4)
    );
  U1_n0004_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      I0 => U1_n0004_4_CYINIT_68,
      I1 => U1_FIB_n0004_4_lut_O,
      O => U1_n0004_4_XORF_67
    );
  U1_n0004_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      IA => U1_n0004_4_CY0F_69,
      IB => U1_n0004_4_CY0F_69,
      SEL => U1_n0004_4_CYSELF_71,
      O => U1_n0004_4_CYMUXF2_76
    );
  U1_n0004_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      IA => U1_n0004_4_CY0F_69,
      IB => U1_n0004_4_CYINIT_68,
      SEL => U1_n0004_4_CYSELF_71,
      O => U1_FIB_n0004_4_cyo
    );
  U1_n0004_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_3_cyo,
      O => U1_n0004_4_CYINIT_68
    );
  U1_n0004_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(4),
      O => U1_n0004_4_CY0F_69
    );
  U1_n0004_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_4_lut_O,
      O => U1_n0004_4_CYSELF_71
    );
  U1_n0004_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_4_XORG_70,
      O => U1_n0004(5)
    );
  U1_n0004_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      I0 => U1_FIB_n0004_4_cyo,
      I1 => U1_FIB_n0004_5_lut_O,
      O => U1_n0004_4_XORG_70
    );
  U1_n0004_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_3_cyo,
      O => U1_n0004_4_FASTCARRY_74
    );
  U1_n0004_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      I0 => U1_n0004_4_CYSELG_78,
      I1 => U1_n0004_4_CYSELF_71,
      O => U1_n0004_4_CYAND_73
    );
  U1_n0004_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      IA => U1_n0004_4_CYMUXG2_75,
      IB => U1_n0004_4_FASTCARRY_74,
      SEL => U1_n0004_4_CYAND_73,
      O => U1_n0004_4_CYMUXFAST_72
    );
  U1_n0004_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y2"
    )
    port map (
      IA => U1_n0004_4_CY0G_77,
      IB => U1_n0004_4_CYMUXF2_76,
      SEL => U1_n0004_4_CYSELG_78,
      O => U1_n0004_4_CYMUXG2_75
    );
  U1_n0004_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(5),
      O => U1_n0004_4_CY0G_77
    );
  U1_n0004_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y2",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_5_lut_O,
      O => U1_n0004_4_CYSELG_78
    );
  U1_FIB_n0004_5_lut : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X18Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_FIBOUT(5),
      ADR2 => VCC,
      ADR3 => U1_PREV_FIB(5),
      O => U1_FIB_n0004_5_lut_O
    );
  U1_n0004_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_6_XORF_79,
      O => U1_n0004(6)
    );
  U1_n0004_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y3"
    )
    port map (
      I0 => U1_n0004_6_CYINIT_80,
      I1 => U1_FIB_n0004_6_lut_O,
      O => U1_n0004_6_XORF_79
    );
  U1_n0004_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y3"
    )
    port map (
      IA => U1_n0004_6_CY0F_81,
      IB => U1_n0004_6_CYINIT_80,
      SEL => U1_n0004_6_CYSELF_82,
      O => U1_FIB_n0004_6_cyo
    );
  U1_n0004_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_4_CYMUXFAST_72,
      O => U1_n0004_6_CYINIT_80
    );
  U1_n0004_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X18Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(6),
      O => U1_n0004_6_CY0F_81
    );
  U1_n0004_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIB_n0004_6_lut_O,
      O => U1_n0004_6_CYSELF_82
    );
  U1_n0004_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y3",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_n0004_6_XORG_83,
      O => U1_n0004(7)
    );
  U1_n0004_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y3"
    )
    port map (
      I0 => U1_FIB_n0004_6_cyo,
      I1 => U1_FIB_n0004_7_lut_O,
      O => U1_n0004_6_XORG_83
    );
  FIBO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => FIBO_0_O,
      O => FIBO(0)
    );
  FIBO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => FIBO_1_O,
      O => FIBO(1)
    );
  ENABLE_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE,
      O => ENABLE_INBUF
    );
  ENABLE_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 369 ps
    )
    port map (
      I => ENABLE_INBUF,
      O => ENABLE_IBUF_0
    );
  FIBO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => FIBO_2_O,
      O => FIBO(2)
    );
  FIBO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => FIBO_3_O,
      O => FIBO(3)
    );
  FIBO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => FIBO_4_O,
      O => FIBO(4)
    );
  FIBO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => FIBO_5_O,
      O => FIBO(5)
    );
  FIBO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => FIBO_6_O,
      O => FIBO(6)
    );
  U1_FIB_n0004_7_lut : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X18Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_FIBOUT(7),
      ADR2 => U1_PREV_FIB(7),
      ADR3 => VCC,
      O => U1_FIB_n0004_7_lut_O
    );
  U1_FIBOUT_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y1",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_1_DYMUX_3,
      CE => U1_FIBOUT_1_CEINV_5,
      CLK => U1_FIBOUT_1_CLKINVNOT,
      SET => U1_FIBOUT_1_SRFFMUX_4,
      RST => GND,
      O => U1_FIBOUT(0)
    );
  U1_n0003_1_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X16Y1"
    )
    port map (
      ADR0 => U1_n0004(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_n0005_0,
      O => U1_n0003_1_1_O_pack_1
    );
  U1_FIBOUT_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y1",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_1_DXMUX_2,
      CE => U1_FIBOUT_1_CEINV_5,
      CLK => U1_FIBOUT_1_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_1_SRFFMUX_4,
      O => U1_FIBOUT(1)
    );
  U1_FIBOUT_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y0",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_3_DYMUX_7,
      CE => U1_FIBOUT_3_CEINV_9,
      CLK => U1_FIBOUT_3_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_3_SRFFMUX_8,
      O => U1_FIBOUT(2)
    );
  U1_n0003_3_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X17Y0"
    )
    port map (
      ADR0 => U1_n0005_0,
      ADR1 => VCC,
      ADR2 => U1_n0004(3),
      ADR3 => VCC,
      O => U1_n0003_3_1_O_pack_1
    );
  U1_FIBOUT_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y0",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_3_DXMUX_6,
      CE => U1_FIBOUT_3_CEINV_9,
      CLK => U1_FIBOUT_3_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_3_SRFFMUX_8,
      O => U1_FIBOUT(3)
    );
  U1_FIBOUT_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_5_DYMUX_11,
      CE => U1_FIBOUT_5_CEINV_13,
      CLK => U1_FIBOUT_5_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_5_SRFFMUX_12,
      O => U1_FIBOUT(4)
    );
  U1_n0003_5_1 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X19Y3"
    )
    port map (
      ADR0 => U1_n0004(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_n0005_0,
      O => U1_n0003_5_1_O_pack_1
    );
  U1_FIBOUT_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_5_DXMUX_10,
      CE => U1_FIBOUT_5_CEINV_13,
      CLK => U1_FIBOUT_5_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_5_SRFFMUX_12,
      O => U1_FIBOUT(5)
    );
  U1_FIBOUT_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_7_DYMUX_15,
      CE => U1_FIBOUT_7_CEINV_17,
      CLK => U1_FIBOUT_7_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_7_SRFFMUX_16,
      O => U1_FIBOUT(6)
    );
  U1_FIB_n0004_0_lut : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X18Y0"
    )
    port map (
      ADR0 => U1_PREV_FIB(0),
      ADR1 => U1_FIBOUT(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_FIB_n0004_0_lut_O
    );
  U1_FIB_n0004_2_lut : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X18Y1"
    )
    port map (
      ADR0 => U1_PREV_FIB(2),
      ADR1 => U1_FIBOUT(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_FIB_n0004_2_lut_O
    );
  U1_FIB_n0004_4_lut : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X18Y2"
    )
    port map (
      ADR0 => U1_FIBOUT(4),
      ADR1 => U1_PREV_FIB(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_FIB_n0004_4_lut_O
    );
  U1_n0003_7_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X19Y2"
    )
    port map (
      ADR0 => U1_n0005_0,
      ADR1 => U1_n0004(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_n0003_7_1_O_pack_1
    );
  U1_FIBOUT_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      I => U1_FIBOUT_7_DXMUX_14,
      CE => U1_FIBOUT_7_CEINV_17,
      CLK => U1_FIBOUT_7_CLKINVNOT,
      SET => GND,
      RST => U1_FIBOUT_7_SRFFMUX_16,
      O => U1_FIBOUT(7)
    );
  U1_n000576 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X19Y0"
    )
    port map (
      ADR0 => U1_n0005_map21_0,
      ADR1 => U1_n0005_map6_0,
      ADR2 => U1_n000525_O,
      ADR3 => U1_n0005_map28_0,
      O => U1_n0005
    );
  U1_n000512 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X23Y1"
    )
    port map (
      ADR0 => U1_FIBOUT(4),
      ADR1 => U1_FIBOUT(5),
      ADR2 => U1_FIBOUT(6),
      ADR3 => U1_FIBOUT(7),
      O => U1_n0005_map6
    );
  U1_Mrom_data_Mrom_DISPA6 : X_LUT4
    generic map(
      INIT => X"4190",
      LOC => "SLICE_X22Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(5),
      ADR1 => U1_FIBOUT(7),
      ADR2 => U1_FIBOUT(4),
      ADR3 => U1_FIBOUT(6),
      O => DISPA_6_OBUF_19
    );
  U1_Mrom_data_Mrom_DISPA5 : X_LUT4
    generic map(
      INIT => X"C2A8",
      LOC => "SLICE_X34Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(6),
      ADR1 => U1_FIBOUT(5),
      ADR2 => U1_FIBOUT(7),
      ADR3 => U1_FIBOUT(4),
      O => DISPA_5_OBUF_21
    );
  U1_Mrom_data_Mrom_DISPB6 : X_LUT4
    generic map(
      INIT => X"2904",
      LOC => "SLICE_X12Y1"
    )
    port map (
      ADR0 => U1_FIBOUT(3),
      ADR1 => U1_FIBOUT(2),
      ADR2 => U1_FIBOUT(1),
      ADR3 => U1_FIBOUT(0),
      O => DISPB_6_OBUF_23
    );
  U1_Mrom_data_Mrom_DISPA : X_LUT4
    generic map(
      INIT => X"0921",
      LOC => "SLICE_X36Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(6),
      ADR1 => U1_FIBOUT(5),
      ADR2 => U1_FIBOUT(7),
      ADR3 => U1_FIBOUT(4),
      O => DISPA_0_OBUF_25
    );
  U1_Mrom_data_Mrom_DISPB5 : X_LUT4
    generic map(
      INIT => X"CA28",
      LOC => "SLICE_X6Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(2),
      ADR1 => U1_FIBOUT(1),
      ADR2 => U1_FIBOUT(0),
      ADR3 => U1_FIBOUT(3),
      O => DISPB_5_OBUF_27
    );
  U1_Mrom_data_Mrom_DISPB4 : X_LUT4
    generic map(
      INIT => X"B002",
      LOC => "SLICE_X12Y0"
    )
    port map (
      ADR0 => U1_FIBOUT(1),
      ADR1 => U1_FIBOUT(0),
      ADR2 => U1_FIBOUT(2),
      ADR3 => U1_FIBOUT(3),
      O => DISPB_4_OBUF_29
    );
  U1_PREV_FIB_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y0",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_1_DYMUX_32,
      CE => U1_PREV_FIB_1_CEINV_34,
      CLK => U1_PREV_FIB_1_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_1_SRFFMUX_33,
      O => U1_PREV_FIB(0)
    );
  U1_PREV_FIB_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y0",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_1_DXMUX_31,
      CE => U1_PREV_FIB_1_CEINV_34,
      CLK => U1_PREV_FIB_1_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_1_SRFFMUX_33,
      O => U1_PREV_FIB(1)
    );
  U1_PREV_FIB_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_3_DYMUX_36,
      CE => U1_PREV_FIB_3_CEINV_38,
      CLK => U1_PREV_FIB_3_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_3_SRFFMUX_37,
      O => U1_PREV_FIB(2)
    );
  U1_PREV_FIB_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_3_DXMUX_35,
      CE => U1_PREV_FIB_3_CEINV_38,
      CLK => U1_PREV_FIB_3_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_3_SRFFMUX_37,
      O => U1_PREV_FIB(3)
    );
  U1_PREV_FIB_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y1",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_5_DYMUX_40,
      CE => U1_PREV_FIB_5_CEINV_42,
      CLK => U1_PREV_FIB_5_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_5_SRFFMUX_41,
      O => U1_PREV_FIB(4)
    );
  U1_PREV_FIB_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y1",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_5_DXMUX_39,
      CE => U1_PREV_FIB_5_CEINV_42,
      CLK => U1_PREV_FIB_5_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_5_SRFFMUX_41,
      O => U1_PREV_FIB(5)
    );
  U1_PREV_FIB_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_7_DYMUX_44,
      CE => U1_PREV_FIB_7_CEINV_46,
      CLK => U1_PREV_FIB_7_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_7_SRFFMUX_45,
      O => U1_PREV_FIB(6)
    );
  U1_PREV_FIB_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => U1_PREV_FIB_7_DXMUX_43,
      CE => U1_PREV_FIB_7_CEINV_46,
      CLK => U1_PREV_FIB_7_CLKINVNOT,
      SET => GND,
      RST => U1_PREV_FIB_7_SRFFMUX_45,
      O => U1_PREV_FIB(7)
    );
  U1_FIB_n0004_6_lut : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X18Y3"
    )
    port map (
      ADR0 => U1_FIBOUT(6),
      ADR1 => VCC,
      ADR2 => U1_PREV_FIB(6),
      ADR3 => VCC,
      O => U1_FIB_n0004_6_lut_O
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  FIBO_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(7),
      O => FIBO_7_O
    );
  DISPA_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_0_OBUF_25,
      O => DISPA_0_O
    );
  DISPA_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_1_OBUF_18,
      O => DISPA_1_O
    );
  DISPA_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_2_OBUF_20,
      O => DISPA_2_O
    );
  DISPA_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_3_OBUF_22,
      O => DISPA_3_O
    );
  DISPB_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_0_OBUF_47,
      O => DISPB_0_O
    );
  DISPA_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_4_OBUF_26,
      O => DISPA_4_O
    );
  DISPB_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_1_OBUF_24,
      O => DISPB_1_O
    );
  DISPA_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_5_OBUF_21,
      O => DISPA_5_O
    );
  DISPB_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_2_OBUF_28,
      O => DISPB_2_O
    );
  DISPA_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPA_6_OBUF_19,
      O => DISPA_6_O
    );
  DISPB_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_3_OBUF_30,
      O => DISPB_3_O
    );
  DISPB_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_4_OBUF_29,
      O => DISPB_4_O
    );
  DISPB_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_5_OBUF_27,
      O => DISPB_5_O
    );
  DISPB_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 369 ps
    )
    port map (
      I => DISPB_6_OBUF_23,
      O => DISPB_6_O
    );
  FIBO_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(0),
      O => FIBO_0_O
    );
  FIBO_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(1),
      O => FIBO_1_O
    );
  FIBO_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(2),
      O => FIBO_2_O
    );
  FIBO_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(3),
      O => FIBO_3_O
    );
  FIBO_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(4),
      O => FIBO_4_O
    );
  FIBO_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(5),
      O => FIBO_5_O
    );
  FIBO_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 369 ps
    )
    port map (
      I => U1_FIBOUT(6),
      O => FIBO_6_O
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

