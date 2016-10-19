--------------------------------------------------------------------------------
-- Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: I.25
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Thu Feb 02 11:20:12 2006
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf Press_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure Press_top.ncd time_sim.vhd 
-- Device	: 3s100evq100-5 (ADVANCED 1.18 2005-12-19)
-- Input file	: Press_top.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: Press_top
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

entity Press_top is
  port (
    OUTPUT : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    DET : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    CLK_T : in STD_LOGIC := 'X'; 
    STP : in STD_LOGIC := 'X'; 
    STR : in STD_LOGIC := 'X'; 
    LIMIT : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    TIMER : out STD_LOGIC_VECTOR ( 9 downto 0 ); 
    Y : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end Press_top;

architecture Structure of Press_top is
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal U101_U202_tim2_i_0 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_0 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_1 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_1_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_3 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_3_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_5 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_5_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_7 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_8 : STD_LOGIC; 
  signal U101_U202_tim2lto8_i_a2_4_0 : STD_LOGIC; 
  signal clr_c : STD_LOGIC; 
  signal RST_c : STD_LOGIC; 
  signal STP_c : STD_LOGIC; 
  signal STR_c : STD_LOGIC; 
  signal DET_c : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal CLK_c : STD_LOGIC; 
  signal CLK_T_c : STD_LOGIC; 
  signal U101_U202_N_46_i_0 : STD_LOGIC; 
  signal U101_MDS_1_Q : STD_LOGIC; 
  signal U101_MDS_4_Q : STD_LOGIC; 
  signal U101_MDS_5_Q : STD_LOGIC; 
  signal U101_U202_N_34_i_0 : STD_LOGIC; 
  signal U101_U202_un2_lim_cnt_p4_O : STD_LOGIC; 
  signal U101_TIM : STD_LOGIC; 
  signal U101_U201_MDSsr_2_O : STD_LOGIC; 
  signal U101_U201_MDS_srsts_0_a3_0_7_0 : STD_LOGIC; 
  signal U101_U201_MDS_srsts_0_a3_1_7_0 : STD_LOGIC; 
  signal U101_U201_MDS_srsts_0_a3_3_7_0 : STD_LOGIC; 
  signal U101_U201_MDS_7_Q_0 : STD_LOGIC; 
  signal U101_U201_MDS_srsts_0_a3_0_0_7_0 : STD_LOGIC; 
  signal U101_U201_N_74_i_0 : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_a3_1_6_0 : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_a3_1_O : STD_LOGIC; 
  signal U101_U201_MDS_2_Q_1 : STD_LOGIC; 
  signal U101_U202_un1_det_2_i_o3_2_O : STD_LOGIC; 
  signal U101_U202_N_43_i_O_0 : STD_LOGIC; 
  signal U101_LIM : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_m3_0_2_O : STD_LOGIC; 
  signal U101_U201_MDS_3_Q_2 : STD_LOGIC; 
  signal U101_U201_MDS_6_Q_3 : STD_LOGIC; 
  signal U101_U201_N_75_i : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_m3_0_5_O : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_a3_6_O : STD_LOGIC; 
  signal U101_U201_N_72_i_0 : STD_LOGIC; 
  signal U101_U201_MDS_0_Q_4 : STD_LOGIC; 
  signal U101_U201_MDSc_1_1_5 : STD_LOGIC; 
  signal U101_U202_tim2lto8_i_a2_5 : STD_LOGIC; 
  signal U101_U202_tim2_i : STD_LOGIC; 
  signal U101_U202_tim2lto8_i_a2_5_pack_1 : STD_LOGIC; 
  signal OUTPUT_c : STD_LOGIC; 
  signal U101_U202_N_34_i_6 : STD_LOGIC; 
  signal LIMIT_c_0_DXMUX_7 : STD_LOGIC; 
  signal LIMIT_c_0_DYMUX_8 : STD_LOGIC; 
  signal U101_U202_un2_lim_cnt_axbxc1_O : STD_LOGIC; 
  signal LIMIT_c_0_SRINVNOT : STD_LOGIC; 
  signal LIMIT_c_0_CLKINV_9 : STD_LOGIC; 
  signal LIMIT_c_0_CEINV_10 : STD_LOGIC; 
  signal U101_U201_MDS_srsts_0_a3_1_0_7_pack_1 : STD_LOGIC; 
  signal TIMER_2_O : STD_LOGIC; 
  signal TIMER_3_O : STD_LOGIC; 
  signal TIMER_4_O : STD_LOGIC; 
  signal TIMER_5_O : STD_LOGIC; 
  signal TIMER_6_O : STD_LOGIC; 
  signal TIMER_7_O : STD_LOGIC; 
  signal TIMER_8_O : STD_LOGIC; 
  signal TIMER_9_O : STD_LOGIC; 
  signal RST_INBUF : STD_LOGIC; 
  signal STP_INBUF : STD_LOGIC; 
  signal STR_INBUF : STD_LOGIC; 
  signal OUTPUT_O : STD_LOGIC; 
  signal DET_INBUF : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal Y_0_O : STD_LOGIC; 
  signal CLK_ibuf_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_ibuf_BUFG_I0_INV : STD_LOGIC; 
  signal CLK_T_ibuf_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_T_ibuf_BUFG_I0_INV : STD_LOGIC; 
  signal TIMER_c_7_DXMUX_11 : STD_LOGIC; 
  signal U101_U202_time_down_tim_cnt_4_7_O : STD_LOGIC; 
  signal TIMER_c_7_DYMUX_12 : STD_LOGIC; 
  signal U101_U202_time_down_N_22_i_O : STD_LOGIC; 
  signal TIMER_c_7_SRINV_13 : STD_LOGIC; 
  signal TIMER_c_7_CLKINV_14 : STD_LOGIC; 
  signal LIMIT_c_3_DXMUX_15 : STD_LOGIC; 
  signal U101_U202_un2_lim_cnt_axbxc3_O : STD_LOGIC; 
  signal LIMIT_c_3_DYMUX_16 : STD_LOGIC; 
  signal U101_U202_un2_lim_cnt_axbxc2_O : STD_LOGIC; 
  signal LIMIT_c_3_SRINVNOT : STD_LOGIC; 
  signal LIMIT_c_3_CLKINV_17 : STD_LOGIC; 
  signal LIMIT_c_3_CEINV_18 : STD_LOGIC; 
  signal LIMIT_c_4_DXMUX_19 : STD_LOGIC; 
  signal U101_U202_un2_lim_cnt_axbxc4_O : STD_LOGIC; 
  signal U101_U202_un2_lim_cnt_p4_O_pack_1 : STD_LOGIC; 
  signal LIMIT_c_4_CLKINV_20 : STD_LOGIC; 
  signal LIMIT_c_4_CEINV_21 : STD_LOGIC; 
  signal U101_TIM_DXMUX_22 : STD_LOGIC; 
  signal U101_U202_tim_cnt_1_sqmuxa_O : STD_LOGIC; 
  signal U101_TIM_DYMUX_23 : STD_LOGIC; 
  signal U101_U202_time_down_tim_cnt_4_8_O : STD_LOGIC; 
  signal U101_TIM_SRINV_24 : STD_LOGIC; 
  signal U101_TIM_CLKINV_25 : STD_LOGIC; 
  signal U101_U201_MDS_7_DXMUX_26 : STD_LOGIC; 
  signal U101_U201_MDSs_i_O : STD_LOGIC; 
  signal U101_U201_MDSsr_2_O_pack_1 : STD_LOGIC; 
  signal U101_U201_MDS_7_SRINVNOT : STD_LOGIC; 
  signal U101_U201_MDS_7_CLKINV_27 : STD_LOGIC; 
  signal U101_MDS_1_DXMUX_28 : STD_LOGIC; 
  signal U101_U201_MDSc_4_O : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_a3_1_O_pack_1 : STD_LOGIC; 
  signal U101_MDS_1_SRINVNOT : STD_LOGIC; 
  signal U101_MDS_1_CLKINV_29 : STD_LOGIC; 
  signal U101_U202_un1_det_2_i_o3_2_O_pack_1 : STD_LOGIC; 
  signal U101_LIM_DYMUX_30 : STD_LOGIC; 
  signal U101_LIM_GYMUX_31 : STD_LOGIC; 
  signal U101_U202_N_43_i_O : STD_LOGIC; 
  signal U101_LIM_CLKINV_32 : STD_LOGIC; 
  signal U101_U201_MDS_2_DXMUX_33 : STD_LOGIC; 
  signal U101_U201_MDSc_3_O : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_m3_0_2_O_pack_1 : STD_LOGIC; 
  signal U101_U201_MDS_2_SRINVNOT : STD_LOGIC; 
  signal U101_U201_MDS_2_CLKINV_34 : STD_LOGIC; 
  signal U101_U201_MDS_3_DYMUX_35 : STD_LOGIC; 
  signal U101_U201_MDSc_2_O : STD_LOGIC; 
  signal U101_U201_MDS_3_SRINVNOT : STD_LOGIC; 
  signal U101_U201_MDS_3_CLKINV_36 : STD_LOGIC; 
  signal U101_MDS_5_DXMUX_37 : STD_LOGIC; 
  signal U101_U201_MDSc_0_O : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_m3_0_5_O_pack_1 : STD_LOGIC; 
  signal U101_MDS_5_SRINVNOT : STD_LOGIC; 
  signal U101_MDS_5_CLKINV_38 : STD_LOGIC; 
  signal U101_U201_MDS_6_DXMUX_39 : STD_LOGIC; 
  signal U101_U201_MDSc_O : STD_LOGIC; 
  signal U101_U201_MDS_srsts_i_a3_6_O_pack_1 : STD_LOGIC; 
  signal U101_U201_MDS_6_SRINVNOT : STD_LOGIC; 
  signal U101_U201_MDS_6_CLKINV_40 : STD_LOGIC; 
  signal Y_c_1_DXMUX_41 : STD_LOGIC; 
  signal U101_U201_N_86_i_O : STD_LOGIC; 
  signal Y_c_1_DYMUX_42 : STD_LOGIC; 
  signal U101_U201_N_85_i_O : STD_LOGIC; 
  signal Y_c_1_SRINVNOT : STD_LOGIC; 
  signal Y_c_1_CLKINV_43 : STD_LOGIC; 
  signal U101_U202_N_30_i_44 : STD_LOGIC; 
  signal Y_c_2_DYMUX_45 : STD_LOGIC; 
  signal U101_U201_N_87_i_O : STD_LOGIC; 
  signal Y_c_2_SRINVNOT : STD_LOGIC; 
  signal Y_c_2_CLKINV_46 : STD_LOGIC; 
  signal TIMER_c_1_DXMUX_47 : STD_LOGIC; 
  signal U101_U202_time_down_N_25_i_O : STD_LOGIC; 
  signal TIMER_c_1_DYMUX_48 : STD_LOGIC; 
  signal U101_U202_time_down_tim_cnt_4_0_O : STD_LOGIC; 
  signal TIMER_c_1_SRINV_49 : STD_LOGIC; 
  signal TIMER_c_1_CLKINV_50 : STD_LOGIC; 
  signal TIMER_c_3_DXMUX_51 : STD_LOGIC; 
  signal U101_U202_time_down_N_24_i_O : STD_LOGIC; 
  signal TIMER_c_3_DYMUX_52 : STD_LOGIC; 
  signal U101_U202_time_down_tim_cnt_4_2_O : STD_LOGIC; 
  signal TIMER_c_3_SRINV_53 : STD_LOGIC; 
  signal TIMER_c_3_CLKINV_54 : STD_LOGIC; 
  signal TIMER_c_5_DXMUX_55 : STD_LOGIC; 
  signal U101_U202_time_down_tim_cnt_4_5_O : STD_LOGIC; 
  signal TIMER_c_5_DYMUX_56 : STD_LOGIC; 
  signal U101_U202_time_down_N_23_i_O : STD_LOGIC; 
  signal TIMER_c_5_SRINV_57 : STD_LOGIC; 
  signal TIMER_c_5_CLKINV_58 : STD_LOGIC; 
  signal U101_U201_MDS_0_DYMUX_59 : STD_LOGIC; 
  signal U101_U201_N_73_i : STD_LOGIC; 
  signal U101_U201_MDS_0_SRINVNOT : STD_LOGIC; 
  signal U101_U201_MDS_0_CLKINV_60 : STD_LOGIC; 
  signal U101_U201_MDS_0_CEINVNOT : STD_LOGIC; 
  signal LIMIT_c_5_DYMUX_61 : STD_LOGIC; 
  signal LIMIT_c_5_CLKINV_62 : STD_LOGIC; 
  signal U101_MDS_4_DXMUX_63 : STD_LOGIC; 
  signal U101_U201_MDSc_1_O : STD_LOGIC; 
  signal U101_U201_MDSc_1_1_pack_1 : STD_LOGIC; 
  signal U101_MDS_4_SRINVNOT : STD_LOGIC; 
  signal U101_MDS_4_CLKINV_64 : STD_LOGIC; 
  signal U101_U201_N_72_i : STD_LOGIC; 
  signal U101_U201_N_74_i : STD_LOGIC; 
  signal U101_U202_N_32_i_65 : STD_LOGIC; 
  signal U101_U202_N_46_i : STD_LOGIC; 
  signal U101_U201_N_75_i_pack_1 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_CYINIT_66 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_CY0F_67 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_CYSELF_68 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_69 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_XORG_70 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_CYMUXG_71 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_0_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_CY0G_72 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_0_CYSELG_73 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_1_74 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_XORF_75 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYINIT_76 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CY0F_77 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_2_78 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_XORG_79 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_2_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYSELF_80 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYMUXFAST_81 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYAND_82 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_FASTCARRY_83 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYMUXG2_84 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYMUXF2_85 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CY0G_86 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_2_CYSELG_87 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_3_88 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_XORF_89 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYINIT_90 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CY0F_91 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_4_92 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_XORG_93 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_4_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYSELF_94 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYMUXFAST_95 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYAND_96 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_FASTCARRY_97 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYMUXG2_98 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYMUXF2_99 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CY0G_100 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_4_CYSELG_101 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_5_102 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_XORF_103 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYINIT_104 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CY0F_105 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_6_106 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_XORG_107 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_cry_6_O : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYSELF_108 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYMUXFAST_109 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYAND_110 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_FASTCARRY_111 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYMUXG2_112 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYMUXF2_113 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CY0G_114 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_6_CYSELG_115 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_7_116 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_8_XORF_117 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_s_8_CYINIT_118 : STD_LOGIC; 
  signal U101_U202_un1_tim_cnt_axb_8_119 : STD_LOGIC; 
  signal U101_U202_tim2lto8_i_a2_4 : STD_LOGIC; 
  signal Y_1_O : STD_LOGIC; 
  signal Y_2_O : STD_LOGIC; 
  signal LIMIT_0_O : STD_LOGIC; 
  signal LIMIT_1_O : STD_LOGIC; 
  signal LIMIT_2_O : STD_LOGIC; 
  signal LIMIT_3_O : STD_LOGIC; 
  signal clr_INBUF : STD_LOGIC; 
  signal LIMIT_4_O : STD_LOGIC; 
  signal LIMIT_5_O : STD_LOGIC; 
  signal CLK_T_INBUF : STD_LOGIC; 
  signal TIMER_0_O : STD_LOGIC; 
  signal TIMER_1_O : STD_LOGIC; 
  signal LIMIT_c_4_FFX_RSTAND_120 : STD_LOGIC; 
  signal U101_LIM_FFY_SET : STD_LOGIC; 
  signal U101_LIM_FFY_RSTAND_121 : STD_LOGIC; 
  signal LIMIT_c_5_FFY_RSTAND_122 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal TIMER_c : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Y_c : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal LIMIT_c : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U101_U201_MDS_srsts_0_a3_1_0 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U101_U201_MDS_srsts_i_a3_1 : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal U101_U201_MDS_srsts_0_a3_1 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U101_U201_MDS_srsts_0_a3_0_0 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U101_U201_MDS_srsts_0_a3_0 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U101_U201_MDS_srsts_0_a3_3 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
begin
  U101_U202_tim2_i_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_tim2_i,
      O => U101_U202_tim2_i_0
    );
  U101_U202_tim2_i_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_tim2lto8_i_a2_5_pack_1,
      O => U101_U202_tim2lto8_i_a2_5
    );
  U101_U202_time_down_tim2lto8_i_a2_5 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => TIMER_c(2),
      ADR1 => TIMER_c(1),
      ADR2 => TIMER_c(5),
      ADR3 => TIMER_c(3),
      O => U101_U202_tim2lto8_i_a2_5_pack_1
    );
  OUTPUT_c_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_i_a3_1(6),
      O => U101_U201_MDS_srsts_i_a3_1_6_0
    );
  U101_U201_MDS_srsts_i_a3_1_6_Q : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X16Y26"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => RST_c,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U101_U201_MDS_srsts_i_a3_1(6)
    );
  U101_U202_N_34_i_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_34_i_6,
      O => U101_U202_N_34_i_0
    );
  U101_U202_N_34_i : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X23Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U101_MDS_1_Q,
      ADR2 => U101_U202_N_43_i_O_0,
      ADR3 => DET_c,
      O => U101_U202_N_34_i_6
    );
  LIMIT_c_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(0),
      O => LIMIT_c_0_DXMUX_7
    );
  LIMIT_c_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un2_lim_cnt_axbxc1_O,
      O => LIMIT_c_0_DYMUX_8
    );
  LIMIT_c_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => LIMIT_c_0_SRINVNOT
    );
  LIMIT_c_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => LIMIT_c_0_CLKINV_9
    );
  LIMIT_c_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_34_i_0,
      O => LIMIT_c_0_CEINV_10
    );
  U101_U201_MDS_srsts_0_a3_1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y31",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_0_a3_1(7),
      O => U101_U201_MDS_srsts_0_a3_1_7_0
    );
  U101_U201_MDS_srsts_0_a3_1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y31",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_0_a3_1_0_7_pack_1,
      O => U101_U201_MDS_srsts_0_a3_1_0(7)
    );
  U101_U201_MDS_srsts_0_a3_1_0_0_7_Q : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X17Y31"
    )
    port map (
      ADR0 => U101_TIM,
      ADR1 => STP_c,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U101_U201_MDS_srsts_0_a3_1_0_7_pack_1
    );
  TIMER_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => TIMER_2_O,
      O => TIMER(2)
    );
  TIMER_obuf_3_Q : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => TIMER_3_O,
      O => TIMER(3)
    );
  TIMER_obuf_4_Q : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => TIMER_4_O,
      O => TIMER(4)
    );
  TIMER_obuf_5_Q : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => TIMER_5_O,
      O => TIMER(5)
    );
  TIMER_obuf_6_Q : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => TIMER_6_O,
      O => TIMER(6)
    );
  TIMER_obuf_7_Q : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => TIMER_7_O,
      O => TIMER(7)
    );
  TIMER_obuf_8_Q : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => TIMER_8_O,
      O => TIMER(8)
    );
  TIMER_obuf_9_Q : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => TIMER_9_O,
      O => TIMER(9)
    );
  RST_ibuf : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST,
      O => RST_INBUF
    );
  RST_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST_INBUF,
      O => RST_c
    );
  STP_ibuf : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 694 ps
    )
    port map (
      I => STP,
      O => STP_INBUF
    );
  STP_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 694 ps
    )
    port map (
      I => STP_INBUF,
      O => STP_c
    );
  STR_ibuf : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 694 ps
    )
    port map (
      I => STR,
      O => STR_INBUF
    );
  STR_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 694 ps
    )
    port map (
      I => STR_INBUF,
      O => STR_c
    );
  OUTPUT_obuf : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => OUTPUT_O,
      O => OUTPUT
    );
  DET_ibuf : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 694 ps
    )
    port map (
      I => DET,
      O => DET_INBUF
    );
  DET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 694 ps
    )
    port map (
      I => DET_INBUF,
      O => DET_c
    );
  CLK_ibuf_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  Y_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => Y_0_O,
      O => Y(0)
    );
  CLK_ibuf_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => CLK_ibuf_BUFG_I0_INV,
      I1 => GND,
      S => CLK_ibuf_BUFG_S_INVNOT,
      O => CLK_c
    );
  CLK_ibuf_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => CLK_ibuf_BUFG_S_INVNOT
    );
  CLK_ibuf_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_ibuf_BUFG_I0_INV
    );
  CLK_T_ibuf_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => CLK_T_ibuf_BUFG_I0_INV,
      I1 => GND,
      S => CLK_T_ibuf_BUFG_S_INVNOT,
      O => CLK_T_c
    );
  CLK_T_ibuf_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => CLK_T_ibuf_BUFG_S_INVNOT
    );
  CLK_T_ibuf_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T_INBUF,
      O => CLK_T_ibuf_BUFG_I0_INV
    );
  TIMER_c_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_tim_cnt_4_7_O,
      O => TIMER_c_7_DXMUX_11
    );
  TIMER_c_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_N_22_i_O,
      O => TIMER_c_7_DYMUX_12
    );
  TIMER_c_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_46_i_0,
      O => TIMER_c_7_SRINV_13
    );
  TIMER_c_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T_c,
      O => TIMER_c_7_CLKINV_14
    );
  U101_U202_time_down_N_22_i : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X13Y23"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => U101_MDS_5_Q,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_U202_un1_tim_cnt_s_6,
      O => U101_U202_time_down_N_22_i_O
    );
  LIMIT_c_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un2_lim_cnt_axbxc3_O,
      O => LIMIT_c_3_DXMUX_15
    );
  LIMIT_c_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un2_lim_cnt_axbxc2_O,
      O => LIMIT_c_3_DYMUX_16
    );
  LIMIT_c_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X22Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => LIMIT_c_3_SRINVNOT
    );
  LIMIT_c_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => LIMIT_c_3_CLKINV_17
    );
  LIMIT_c_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_34_i_0,
      O => LIMIT_c_3_CEINV_18
    );
  LIMIT_c_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un2_lim_cnt_axbxc4_O,
      O => LIMIT_c_4_DXMUX_19
    );
  LIMIT_c_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un2_lim_cnt_p4_O_pack_1,
      O => U101_U202_un2_lim_cnt_p4_O
    );
  LIMIT_c_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => LIMIT_c_4_CLKINV_20
    );
  LIMIT_c_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_34_i_0,
      O => LIMIT_c_4_CEINV_21
    );
  U101_TIM_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_tim_cnt_1_sqmuxa_O,
      O => U101_TIM_DXMUX_22
    );
  U101_TIM_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_tim_cnt_4_8_O,
      O => U101_TIM_DYMUX_23
    );
  U101_TIM_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_46_i_0,
      O => U101_TIM_SRINV_24
    );
  U101_TIM_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T_c,
      O => U101_TIM_CLKINV_25
    );
  U101_U202_time_down_tim_cnt_4_8_Q : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X13Y25"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => U101_MDS_4_Q,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_U202_un1_tim_cnt_s_8,
      O => U101_U202_time_down_tim_cnt_4_8_O
    );
  U101_U201_MDS_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSs_i_O,
      O => U101_U201_MDS_7_DXMUX_26
    );
  U101_U201_MDS_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSsr_2_O_pack_1,
      O => U101_U201_MDSsr_2_O
    );
  U101_U201_MDS_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_U201_MDS_7_SRINVNOT
    );
  U101_U201_MDS_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_U201_MDS_7_CLKINV_27
    );
  U101_MDS_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_4_O,
      O => U101_MDS_1_DXMUX_28
    );
  U101_MDS_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_i_a3_1_O_pack_1,
      O => U101_U201_MDS_srsts_i_a3_1_O
    );
  U101_MDS_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_MDS_1_SRINVNOT
    );
  U101_MDS_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_MDS_1_CLKINV_29
    );
  U101_LIM_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_det_2_i_o3_2_O_pack_1,
      O => U101_U202_un1_det_2_i_o3_2_O
    );
  U101_LIM_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_LIM_GYMUX_31,
      O => U101_LIM_DYMUX_30
    );
  U101_LIM_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_LIM_GYMUX_31,
      O => U101_U202_N_43_i_O_0
    );
  U101_LIM_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_43_i_O,
      O => U101_LIM_GYMUX_31
    );
  U101_LIM_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_LIM_CLKINV_32
    );
  U101_U201_MDS_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_3_O,
      O => U101_U201_MDS_2_DXMUX_33
    );
  U101_U201_MDS_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_i_m3_0_2_O_pack_1,
      O => U101_U201_MDS_srsts_i_m3_0_2_O
    );
  U101_U201_MDS_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_U201_MDS_2_SRINVNOT
    );
  U101_U201_MDS_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_U201_MDS_2_CLKINV_34
    );
  U101_U201_MDS_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_0_a3_0_0(7),
      O => U101_U201_MDS_srsts_0_a3_0_0_7_0
    );
  U101_U201_MDS_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_2_O,
      O => U101_U201_MDS_3_DYMUX_35
    );
  U101_U201_MDS_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_U201_MDS_3_SRINVNOT
    );
  U101_U201_MDS_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_U201_MDS_3_CLKINV_36
    );
  U101_U201_MDSc_2 : X_LUT4
    generic map(
      INIT => X"EAE0",
      LOC => "SLICE_X17Y28"
    )
    port map (
      ADR0 => U101_U201_MDS_3_Q_2,
      ADR1 => U101_TIM,
      ADR2 => U101_MDS_4_Q,
      ADR3 => RST_c,
      O => U101_U201_MDSc_2_O
    );
  U101_MDS_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_0_O,
      O => U101_MDS_5_DXMUX_37
    );
  U101_MDS_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_i_m3_0_5_O_pack_1,
      O => U101_U201_MDS_srsts_i_m3_0_5_O
    );
  U101_MDS_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_MDS_5_SRINVNOT
    );
  U101_MDS_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_MDS_5_CLKINV_38
    );
  U101_U201_MDS_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_O,
      O => U101_U201_MDS_6_DXMUX_39
    );
  U101_U201_MDS_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_i_a3_6_O_pack_1,
      O => U101_U201_MDS_srsts_i_a3_6_O
    );
  U101_U201_MDS_6_SRINV : X_INV
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_U201_MDS_6_SRINVNOT
    );
  U101_U201_MDS_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_U201_MDS_6_CLKINV_40
    );
  U101_U201_MDS_srsts_i_a3_6_Q : X_LUT4
    generic map(
      INIT => X"001D",
      LOC => "SLICE_X17Y26"
    )
    port map (
      ADR0 => U101_U201_N_72_i_0,
      ADR1 => U101_U201_MDS_6_Q_3,
      ADR2 => STR_c,
      ADR3 => U101_MDS_5_Q,
      O => U101_U201_MDS_srsts_i_a3_6_O_pack_1
    );
  Y_c_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_86_i_O,
      O => Y_c_1_DXMUX_41
    );
  Y_c_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_85_i_O,
      O => Y_c_1_DYMUX_42
    );
  Y_c_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => Y_c_1_SRINVNOT
    );
  Y_c_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => Y_c_1_CLKINV_43
    );
  U101_U201_N_85_i : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X18Y29"
    )
    port map (
      ADR0 => U101_U201_MDS_2_Q_1,
      ADR1 => U101_U201_MDS_6_Q_3,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_U201_MDS_0_Q_4,
      O => U101_U201_N_85_i_O
    );
  Y_c_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_87_i_O,
      O => Y_c_2_DYMUX_45
    );
  Y_c_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => Y_c_2_SRINVNOT
    );
  Y_c_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => Y_c_2_CLKINV_46
    );
  TIMER_c_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_N_25_i_O,
      O => TIMER_c_1_DXMUX_47
    );
  TIMER_c_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_tim_cnt_4_0_O,
      O => TIMER_c_1_DYMUX_48
    );
  TIMER_c_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_46_i_0,
      O => TIMER_c_1_SRINV_49
    );
  TIMER_c_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T_c,
      O => TIMER_c_1_CLKINV_50
    );
  U101_U202_time_down_tim_cnt_4_0_Q : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => U101_U202_un1_tim_cnt_axb_0_0,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_MDS_5_Q,
      O => U101_U202_time_down_tim_cnt_4_0_O
    );
  TIMER_c_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_N_24_i_O,
      O => TIMER_c_3_DXMUX_51
    );
  TIMER_c_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_tim_cnt_4_2_O,
      O => TIMER_c_3_DYMUX_52
    );
  TIMER_c_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_46_i_0,
      O => TIMER_c_3_SRINV_53
    );
  TIMER_c_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T_c,
      O => TIMER_c_3_CLKINV_54
    );
  U101_U202_time_down_tim_cnt_4_2_Q : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => U101_MDS_4_Q,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_U202_un1_tim_cnt_s_2,
      O => U101_U202_time_down_tim_cnt_4_2_O
    );
  TIMER_c_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_tim_cnt_4_5_O,
      O => TIMER_c_5_DXMUX_55
    );
  TIMER_c_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_time_down_N_23_i_O,
      O => TIMER_c_5_DYMUX_56
    );
  TIMER_c_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_46_i_0,
      O => TIMER_c_5_SRINV_57
    );
  TIMER_c_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T_c,
      O => TIMER_c_5_CLKINV_58
    );
  U101_U202_time_down_N_23_i : X_LUT4
    generic map(
      INIT => X"F0F1",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => U101_MDS_4_Q,
      ADR1 => U101_MDS_1_Q,
      ADR2 => U101_U202_un1_tim_cnt_s_4,
      ADR3 => U101_MDS_5_Q,
      O => U101_U202_time_down_N_23_i_O
    );
  U101_U201_MDS_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_0_a3_0(7),
      O => U101_U201_MDS_srsts_0_a3_0_7_0
    );
  U101_U201_MDS_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_73_i,
      O => U101_U201_MDS_0_DYMUX_59
    );
  U101_U201_MDS_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_U201_MDS_0_SRINVNOT
    );
  U101_U201_MDS_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_U201_MDS_0_CLKINV_60
    );
  U101_U201_MDS_0_CEINV : X_INV
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST_c,
      O => U101_U201_MDS_0_CEINVNOT
    );
  LIMIT_c_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y31",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(5),
      O => LIMIT_c_5_DYMUX_61
    );
  LIMIT_c_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y31",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => LIMIT_c_5_CLKINV_62
    );
  U101_MDS_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_1_O,
      O => U101_MDS_4_DXMUX_63
    );
  U101_MDS_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDSc_1_1_pack_1,
      O => U101_U201_MDSc_1_1_5
    );
  U101_MDS_4_SRINV : X_INV
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => U101_MDS_4_SRINVNOT
    );
  U101_MDS_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_c,
      O => U101_MDS_4_CLKINV_64
    );
  U101_U201_N_72_i_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_72_i,
      O => U101_U201_N_72_i_0
    );
  U101_U201_N_72_i_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_74_i,
      O => U101_U201_N_74_i_0
    );
  U101_U201_MDS_srsts_0_o3_0_7_Q : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X16Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U101_LIM,
      ADR2 => STP_c,
      ADR3 => U101_TIM,
      O => U101_U201_N_74_i
    );
  U101_U202_N_32_i_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y29",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_46_i,
      O => U101_U202_N_46_i_0
    );
  U101_U202_time_down_N_46_i : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X20Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => DET_c,
      ADR3 => clr_c,
      O => U101_U202_N_46_i
    );
  U101_U201_MDS_srsts_i_o3_5_Q : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X19Y28"
    )
    port map (
      ADR0 => STP_c,
      ADR1 => DET_c,
      ADR2 => VCC,
      ADR3 => U101_TIM,
      O => U101_U201_N_75_i_pack_1
    );
  U101_U201_MDS_srsts_0_a3_3_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_MDS_srsts_0_a3_3(7),
      O => U101_U201_MDS_srsts_0_a3_3_7_0
    );
  U101_U201_MDS_srsts_0_a3_3_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U201_N_75_i_pack_1,
      O => U101_U201_N_75_i
    );
  U101_U202_un1_tim_cnt_axb_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_0_69,
      O => U101_U202_un1_tim_cnt_axb_0_0
    );
  U101_U202_un1_tim_cnt_axb_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X12Y19"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_axb_0_CY0F_67,
      IB => U101_U202_un1_tim_cnt_axb_0_CYINIT_66,
      SEL => U101_U202_un1_tim_cnt_axb_0_CYSELF_68,
      O => U101_U202_un1_tim_cnt_cry_0_O
    );
  U101_U202_un1_tim_cnt_axb_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => U101_U202_un1_tim_cnt_axb_0_CYINIT_66
    );
  U101_U202_un1_tim_cnt_axb_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(0),
      O => U101_U202_un1_tim_cnt_axb_0_CY0F_67
    );
  U101_U202_un1_tim_cnt_axb_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_0_69,
      O => U101_U202_un1_tim_cnt_axb_0_CYSELF_68
    );
  U101_U202_un1_tim_cnt_axb_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_0_XORG_70,
      O => U101_U202_un1_tim_cnt_s_1
    );
  U101_U202_un1_tim_cnt_axb_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X12Y19"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_cry_0_O,
      I1 => U101_U202_un1_tim_cnt_axb_1_74,
      O => U101_U202_un1_tim_cnt_axb_0_XORG_70
    );
  U101_U202_un1_tim_cnt_axb_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_0_CYMUXG_71,
      O => U101_U202_un1_tim_cnt_cry_1_O
    );
  U101_U202_un1_tim_cnt_axb_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X12Y19"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_axb_0_CY0G_72,
      IB => U101_U202_un1_tim_cnt_cry_0_O,
      SEL => U101_U202_un1_tim_cnt_axb_0_CYSELG_73,
      O => U101_U202_un1_tim_cnt_axb_0_CYMUXG_71
    );
  U101_U202_un1_tim_cnt_axb_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(1),
      O => U101_U202_un1_tim_cnt_axb_0_CY0G_72
    );
  U101_U202_un1_tim_cnt_axb_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_1_74,
      O => U101_U202_un1_tim_cnt_axb_0_CYSELG_73
    );
  U101_U202_un1_tim_cnt_axb_1 : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X12Y19"
    )
    port map (
      ADR0 => TIMER_c(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U101_U202_tim2_i_0,
      O => U101_U202_un1_tim_cnt_axb_1_74
    );
  U101_U202_un1_tim_cnt_s_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_2_XORF_75,
      O => U101_U202_un1_tim_cnt_s_2
    );
  U101_U202_un1_tim_cnt_s_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_2_CYINIT_76,
      I1 => U101_U202_un1_tim_cnt_axb_2_78,
      O => U101_U202_un1_tim_cnt_s_2_XORF_75
    );
  U101_U202_un1_tim_cnt_s_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_2_CY0F_77,
      IB => U101_U202_un1_tim_cnt_s_2_CYINIT_76,
      SEL => U101_U202_un1_tim_cnt_s_2_CYSELF_80,
      O => U101_U202_un1_tim_cnt_cry_2_O
    );
  U101_U202_un1_tim_cnt_s_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_2_CY0F_77,
      IB => U101_U202_un1_tim_cnt_s_2_CY0F_77,
      SEL => U101_U202_un1_tim_cnt_s_2_CYSELF_80,
      O => U101_U202_un1_tim_cnt_s_2_CYMUXF2_85
    );
  U101_U202_un1_tim_cnt_s_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_cry_1_O,
      O => U101_U202_un1_tim_cnt_s_2_CYINIT_76
    );
  U101_U202_un1_tim_cnt_s_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(2),
      O => U101_U202_un1_tim_cnt_s_2_CY0F_77
    );
  U101_U202_un1_tim_cnt_s_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_2_78,
      O => U101_U202_un1_tim_cnt_s_2_CYSELF_80
    );
  U101_U202_un1_tim_cnt_s_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_2_XORG_79,
      O => U101_U202_un1_tim_cnt_s_3
    );
  U101_U202_un1_tim_cnt_s_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_cry_2_O,
      I1 => U101_U202_un1_tim_cnt_axb_3_88,
      O => U101_U202_un1_tim_cnt_s_2_XORG_79
    );
  U101_U202_un1_tim_cnt_s_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_2_CYMUXFAST_81,
      O => U101_U202_un1_tim_cnt_cry_3_O
    );
  U101_U202_un1_tim_cnt_s_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_cry_1_O,
      O => U101_U202_un1_tim_cnt_s_2_FASTCARRY_83
    );
  U101_U202_un1_tim_cnt_s_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_2_CYSELG_87,
      I1 => U101_U202_un1_tim_cnt_s_2_CYSELF_80,
      O => U101_U202_un1_tim_cnt_s_2_CYAND_82
    );
  U101_U202_un1_tim_cnt_s_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_2_CYMUXG2_84,
      IB => U101_U202_un1_tim_cnt_s_2_FASTCARRY_83,
      SEL => U101_U202_un1_tim_cnt_s_2_CYAND_82,
      O => U101_U202_un1_tim_cnt_s_2_CYMUXFAST_81
    );
  U101_U202_un1_tim_cnt_s_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_2_CY0G_86,
      IB => U101_U202_un1_tim_cnt_s_2_CYMUXF2_85,
      SEL => U101_U202_un1_tim_cnt_s_2_CYSELG_87,
      O => U101_U202_un1_tim_cnt_s_2_CYMUXG2_84
    );
  U101_U202_un1_tim_cnt_s_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(3),
      O => U101_U202_un1_tim_cnt_s_2_CY0G_86
    );
  U101_U202_un1_tim_cnt_s_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_3_88,
      O => U101_U202_un1_tim_cnt_s_2_CYSELG_87
    );
  U101_U202_un1_tim_cnt_axb_3 : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => TIMER_c(3),
      ADR1 => VCC,
      ADR2 => U101_U202_tim2_i_0,
      ADR3 => VCC,
      O => U101_U202_un1_tim_cnt_axb_3_88
    );
  U101_U202_un1_tim_cnt_s_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_4_XORF_89,
      O => U101_U202_un1_tim_cnt_s_4
    );
  U101_U202_un1_tim_cnt_s_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_4_CYINIT_90,
      I1 => U101_U202_un1_tim_cnt_axb_4_92,
      O => U101_U202_un1_tim_cnt_s_4_XORF_89
    );
  U101_U202_un1_tim_cnt_s_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_4_CY0F_91,
      IB => U101_U202_un1_tim_cnt_s_4_CYINIT_90,
      SEL => U101_U202_un1_tim_cnt_s_4_CYSELF_94,
      O => U101_U202_un1_tim_cnt_cry_4_O
    );
  U101_U202_un1_tim_cnt_s_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_4_CY0F_91,
      IB => U101_U202_un1_tim_cnt_s_4_CY0F_91,
      SEL => U101_U202_un1_tim_cnt_s_4_CYSELF_94,
      O => U101_U202_un1_tim_cnt_s_4_CYMUXF2_99
    );
  U101_U202_un1_tim_cnt_s_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_cry_3_O,
      O => U101_U202_un1_tim_cnt_s_4_CYINIT_90
    );
  U101_U202_un1_tim_cnt_s_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(4),
      O => U101_U202_un1_tim_cnt_s_4_CY0F_91
    );
  U101_U202_un1_tim_cnt_s_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_4_92,
      O => U101_U202_un1_tim_cnt_s_4_CYSELF_94
    );
  U101_U202_un1_tim_cnt_s_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_4_XORG_93,
      O => U101_U202_un1_tim_cnt_s_5
    );
  U101_U202_un1_tim_cnt_s_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_cry_4_O,
      I1 => U101_U202_un1_tim_cnt_axb_5_102,
      O => U101_U202_un1_tim_cnt_s_4_XORG_93
    );
  U101_U202_un1_tim_cnt_s_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_4_CYMUXFAST_95,
      O => U101_U202_un1_tim_cnt_cry_5_O
    );
  U101_U202_un1_tim_cnt_s_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_cry_3_O,
      O => U101_U202_un1_tim_cnt_s_4_FASTCARRY_97
    );
  U101_U202_un1_tim_cnt_s_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_4_CYSELG_101,
      I1 => U101_U202_un1_tim_cnt_s_4_CYSELF_94,
      O => U101_U202_un1_tim_cnt_s_4_CYAND_96
    );
  U101_U202_un1_tim_cnt_s_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_4_CYMUXG2_98,
      IB => U101_U202_un1_tim_cnt_s_4_FASTCARRY_97,
      SEL => U101_U202_un1_tim_cnt_s_4_CYAND_96,
      O => U101_U202_un1_tim_cnt_s_4_CYMUXFAST_95
    );
  U101_U202_un1_tim_cnt_s_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_4_CY0G_100,
      IB => U101_U202_un1_tim_cnt_s_4_CYMUXF2_99,
      SEL => U101_U202_un1_tim_cnt_s_4_CYSELG_101,
      O => U101_U202_un1_tim_cnt_s_4_CYMUXG2_98
    );
  U101_U202_un1_tim_cnt_s_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(5),
      O => U101_U202_un1_tim_cnt_s_4_CY0G_100
    );
  U101_U202_un1_tim_cnt_s_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_5_102,
      O => U101_U202_un1_tim_cnt_s_4_CYSELG_101
    );
  U101_U202_un1_tim_cnt_axb_5 : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TIMER_c(5),
      ADR2 => U101_U202_tim2_i_0,
      ADR3 => VCC,
      O => U101_U202_un1_tim_cnt_axb_5_102
    );
  U101_U202_un1_tim_cnt_s_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_6_XORF_103,
      O => U101_U202_un1_tim_cnt_s_6
    );
  U101_U202_un1_tim_cnt_s_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_6_CYINIT_104,
      I1 => U101_U202_un1_tim_cnt_axb_6_106,
      O => U101_U202_un1_tim_cnt_s_6_XORF_103
    );
  U101_U202_un1_tim_cnt_s_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_6_CY0F_105,
      IB => U101_U202_un1_tim_cnt_s_6_CYINIT_104,
      SEL => U101_U202_un1_tim_cnt_s_6_CYSELF_108,
      O => U101_U202_un1_tim_cnt_cry_6_O
    );
  U101_U202_un1_tim_cnt_s_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_6_CY0F_105,
      IB => U101_U202_un1_tim_cnt_s_6_CY0F_105,
      SEL => U101_U202_un1_tim_cnt_s_6_CYSELF_108,
      O => U101_U202_un1_tim_cnt_s_6_CYMUXF2_113
    );
  U101_U202_un1_tim_cnt_s_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_cry_5_O,
      O => U101_U202_un1_tim_cnt_s_6_CYINIT_104
    );
  U101_U202_un1_tim_cnt_s_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(6),
      O => U101_U202_un1_tim_cnt_s_6_CY0F_105
    );
  U101_U202_un1_tim_cnt_s_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_6_106,
      O => U101_U202_un1_tim_cnt_s_6_CYSELF_108
    );
  U101_U202_un1_tim_cnt_s_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_6_XORG_107,
      O => U101_U202_un1_tim_cnt_s_7
    );
  U101_U202_un1_tim_cnt_s_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_cry_6_O,
      I1 => U101_U202_un1_tim_cnt_axb_7_116,
      O => U101_U202_un1_tim_cnt_s_6_XORG_107
    );
  U101_U202_un1_tim_cnt_s_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_cry_5_O,
      O => U101_U202_un1_tim_cnt_s_6_FASTCARRY_111
    );
  U101_U202_un1_tim_cnt_s_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_6_CYSELG_115,
      I1 => U101_U202_un1_tim_cnt_s_6_CYSELF_108,
      O => U101_U202_un1_tim_cnt_s_6_CYAND_110
    );
  U101_U202_un1_tim_cnt_s_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_6_CYMUXG2_112,
      IB => U101_U202_un1_tim_cnt_s_6_FASTCARRY_111,
      SEL => U101_U202_un1_tim_cnt_s_6_CYAND_110,
      O => U101_U202_un1_tim_cnt_s_6_CYMUXFAST_109
    );
  U101_U202_un1_tim_cnt_s_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => U101_U202_un1_tim_cnt_s_6_CY0G_114,
      IB => U101_U202_un1_tim_cnt_s_6_CYMUXF2_113,
      SEL => U101_U202_un1_tim_cnt_s_6_CYSELG_115,
      O => U101_U202_un1_tim_cnt_s_6_CYMUXG2_112
    );
  U101_U202_un1_tim_cnt_s_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(7),
      O => U101_U202_un1_tim_cnt_s_6_CY0G_114
    );
  U101_U202_un1_tim_cnt_s_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_axb_7_116,
      O => U101_U202_un1_tim_cnt_s_6_CYSELG_115
    );
  U101_U202_un1_tim_cnt_axb_7 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X12Y22"
    )
    port map (
      ADR0 => TIMER_c(7),
      ADR1 => U101_U202_tim2_i_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U101_U202_un1_tim_cnt_axb_7_116
    );
  U101_U202_un1_tim_cnt_s_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_8_XORF_117,
      O => U101_U202_un1_tim_cnt_s_8
    );
  U101_U202_un1_tim_cnt_s_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X12Y23"
    )
    port map (
      I0 => U101_U202_un1_tim_cnt_s_8_CYINIT_118,
      I1 => U101_U202_un1_tim_cnt_axb_8_119,
      O => U101_U202_un1_tim_cnt_s_8_XORF_117
    );
  U101_U202_un1_tim_cnt_s_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_un1_tim_cnt_s_6_CYMUXFAST_109,
      O => U101_U202_un1_tim_cnt_s_8_CYINIT_118
    );
  U101_U202_un1_tim_cnt_s_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_tim2lto8_i_a2_4,
      O => U101_U202_tim2lto8_i_a2_4_0
    );
  U101_U202_time_down_tim2lto8_i_a2_4 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => TIMER_c(4),
      ADR1 => TIMER_c(8),
      ADR2 => VCC,
      ADR3 => TIMER_c(0),
      O => U101_U202_tim2lto8_i_a2_4
    );
  Y_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => Y_1_O,
      O => Y(1)
    );
  Y_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => Y_2_O,
      O => Y(2)
    );
  LIMIT_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => LIMIT_0_O,
      O => LIMIT(0)
    );
  LIMIT_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => LIMIT_1_O,
      O => LIMIT(1)
    );
  LIMIT_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => LIMIT_2_O,
      O => LIMIT(2)
    );
  LIMIT_obuf_3_Q : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => LIMIT_3_O,
      O => LIMIT(3)
    );
  clr_ibuf : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr,
      O => clr_INBUF
    );
  clr_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_INBUF,
      O => clr_c
    );
  LIMIT_obuf_4_Q : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => LIMIT_4_O,
      O => LIMIT(4)
    );
  LIMIT_obuf_5_Q : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => LIMIT_5_O,
      O => LIMIT(5)
    );
  CLK_T_ibuf_IBUFG : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_T,
      O => CLK_T_INBUF
    );
  TIMER_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => TIMER_0_O,
      O => TIMER(0)
    );
  TIMER_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => TIMER_1_O,
      O => TIMER(1)
    );
  U101_U201_N_87_i : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X20Y28"
    )
    port map (
      ADR0 => U101_U201_MDS_2_Q_1,
      ADR1 => U101_U201_MDS_3_Q_2,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_U201_MDS_0_Q_4,
      O => U101_U201_N_87_i_O
    );
  U101_U201_MDS_srsts_i_o3_4_Q : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X18Y28"
    )
    port map (
      ADR0 => U101_U201_MDS_7_Q_0,
      ADR1 => STR_c,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U101_U201_N_73_i
    );
  U101_U201_MDSc_1_1 : X_LUT4
    generic map(
      INIT => X"C400",
      LOC => "SLICE_X17Y30"
    )
    port map (
      ADR0 => U101_TIM,
      ADR1 => STP_c,
      ADR2 => U101_U201_MDS_7_Q_0,
      ADR3 => RST_c,
      O => U101_U201_MDSc_1_1_pack_1
    );
  U101_U202_un2_lim_cnt_axbxc1 : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X22Y28"
    )
    port map (
      ADR0 => LIMIT_c(0),
      ADR1 => VCC,
      ADR2 => LIMIT_c(1),
      ADR3 => VCC,
      O => U101_U202_un2_lim_cnt_axbxc1_O
    );
  U101_U202_un1_tim_cnt_axb_0 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X12Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TIMER_c(0),
      ADR2 => VCC,
      ADR3 => U101_U202_tim2_i_0,
      O => U101_U202_un1_tim_cnt_axb_0_69
    );
  U101_U202_un1_tim_cnt_axb_2 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TIMER_c(2),
      ADR2 => VCC,
      ADR3 => U101_U202_tim2_i_0,
      O => U101_U202_un1_tim_cnt_axb_2_78
    );
  U101_U202_un2_lim_cnt_axbxc2 : X_LUT4
    generic map(
      INIT => X"C9C9",
      LOC => "SLICE_X22Y29"
    )
    port map (
      ADR0 => LIMIT_c(0),
      ADR1 => LIMIT_c(2),
      ADR2 => LIMIT_c(1),
      ADR3 => VCC,
      O => U101_U202_un2_lim_cnt_axbxc2_O
    );
  U101_U202_un2_lim_cnt_p4 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X22Y26"
    )
    port map (
      ADR0 => LIMIT_c(0),
      ADR1 => LIMIT_c(2),
      ADR2 => LIMIT_c(3),
      ADR3 => LIMIT_c(1),
      O => U101_U202_un2_lim_cnt_p4_O_pack_1
    );
  U101_U201_MDSsr_2 : X_LUT4
    generic map(
      INIT => X"31FF",
      LOC => "SLICE_X17Y29"
    )
    port map (
      ADR0 => U101_U201_N_74_i_0,
      ADR1 => U101_U201_MDS_srsts_0_a3_0_0_7_0,
      ADR2 => U101_U201_MDS_7_Q_0,
      ADR3 => U101_U201_MDS_srsts_i_a3_1_6_0,
      O => U101_U201_MDSsr_2_O_pack_1
    );
  U101_U201_MDS_srsts_i_a3_1_Q : X_LUT4
    generic map(
      INIT => X"1155",
      LOC => "SLICE_X16Y29"
    )
    port map (
      ADR0 => U101_U201_MDS_2_Q_1,
      ADR1 => U101_MDS_1_Q,
      ADR2 => VCC,
      ADR3 => U101_U201_N_74_i_0,
      O => U101_U201_MDS_srsts_i_a3_1_O_pack_1
    );
  U101_U201_MDS_srsts_i_m3_0_2_Q : X_LUT4
    generic map(
      INIT => X"C5C0",
      LOC => "SLICE_X19Y29"
    )
    port map (
      ADR0 => STP_c,
      ADR1 => U101_U201_MDS_2_Q_1,
      ADR2 => RST_c,
      ADR3 => U101_U201_MDS_7_Q_0,
      O => U101_U201_MDS_srsts_i_m3_0_2_O_pack_1
    );
  U101_U201_MDS_srsts_i_m3_0_5_Q : X_LUT4
    generic map(
      INIT => X"CC55",
      LOC => "SLICE_X16Y27"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => STR_c,
      ADR2 => VCC,
      ADR3 => U101_U201_MDS_6_Q_3,
      O => U101_U201_MDS_srsts_i_m3_0_5_O_pack_1
    );
  U101_U202_time_down_tim_cnt_6_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '1'
    )
    port map (
      I => TIMER_c_7_DYMUX_12,
      CE => VCC,
      CLK => TIMER_c_7_CLKINV_14,
      SET => TIMER_c_7_SRINV_13,
      RST => GND,
      O => TIMER_c(6)
    );
  U101_U202_time_down_tim_cnt_4_7_Q : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X13Y23"
    )
    port map (
      ADR0 => U101_U202_un1_tim_cnt_s_7,
      ADR1 => U101_MDS_1_Q,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_MDS_5_Q,
      O => U101_U202_time_down_tim_cnt_4_7_O
    );
  U101_U202_time_down_tim_cnt_7_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '0'
    )
    port map (
      I => TIMER_c_7_DXMUX_11,
      CE => VCC,
      CLK => TIMER_c_7_CLKINV_14,
      SET => GND,
      RST => TIMER_c_7_SRINV_13,
      O => TIMER_c(7)
    );
  U101_U202_limit_down_lim_cnt_2_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y29",
      INIT => '1'
    )
    port map (
      I => LIMIT_c_3_DYMUX_16,
      CE => LIMIT_c_3_CEINV_18,
      CLK => LIMIT_c_3_CLKINV_17,
      SET => LIMIT_c_3_SRINVNOT,
      RST => GND,
      O => LIMIT_c(2)
    );
  U101_U202_un2_lim_cnt_axbxc3 : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X22Y29"
    )
    port map (
      ADR0 => LIMIT_c(0),
      ADR1 => LIMIT_c(2),
      ADR2 => LIMIT_c(1),
      ADR3 => LIMIT_c(3),
      O => U101_U202_un2_lim_cnt_axbxc3_O
    );
  U101_U202_un1_tim_cnt_axb_4 : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => TIMER_c(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U101_U202_tim2_i_0,
      O => U101_U202_un1_tim_cnt_axb_4_92
    );
  U101_U202_un1_tim_cnt_axb_6 : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X12Y22"
    )
    port map (
      ADR0 => TIMER_c(6),
      ADR1 => U101_U202_tim2_i_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U101_U202_un1_tim_cnt_axb_6_106
    );
  U101_U202_un1_tim_cnt_axb_8 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TIMER_c(8),
      ADR2 => VCC,
      ADR3 => U101_U202_tim2_i_0,
      O => U101_U202_un1_tim_cnt_axb_8_119
    );
  U101_U202_limit_down_lim_cnt_3_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y29",
      INIT => '0'
    )
    port map (
      I => LIMIT_c_3_DXMUX_15,
      CE => LIMIT_c_3_CEINV_18,
      CLK => LIMIT_c_3_CLKINV_17,
      SET => GND,
      RST => LIMIT_c_3_SRINVNOT,
      O => LIMIT_c(3)
    );
  U101_U202_un2_lim_cnt_axbxc4 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X22Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => LIMIT_c(4),
      ADR2 => VCC,
      ADR3 => U101_U202_un2_lim_cnt_p4_O,
      O => U101_U202_un2_lim_cnt_axbxc4_O
    );
  U101_U202_limit_down_lim_cnt_4_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => '0'
    )
    port map (
      I => LIMIT_c_4_DXMUX_19,
      CE => LIMIT_c_4_CEINV_21,
      CLK => LIMIT_c_4_CLKINV_20,
      SET => GND,
      RST => LIMIT_c_4_FFX_RSTAND_120,
      O => LIMIT_c(4)
    );
  LIMIT_c_4_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X22Y26",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => LIMIT_c_4_FFX_RSTAND_120
    );
  U101_U202_time_down_tim_cnt_8_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y25",
      INIT => '0'
    )
    port map (
      I => U101_TIM_DYMUX_23,
      CE => VCC,
      CLK => U101_TIM_CLKINV_25,
      SET => GND,
      RST => U101_TIM_SRINV_24,
      O => TIMER_c(8)
    );
  U101_U202_tim_cnt_1_sqmuxa : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X13Y25"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => U101_U202_tim2_i_0,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_MDS_4_Q,
      O => U101_U202_tim_cnt_1_sqmuxa_O
    );
  U101_U202_TIM : X_FF
    generic map(
      LOC => "SLICE_X13Y25",
      INIT => '0'
    )
    port map (
      I => U101_TIM_DXMUX_22,
      CE => VCC,
      CLK => U101_TIM_CLKINV_25,
      SET => GND,
      RST => U101_TIM_SRINV_24,
      O => U101_TIM
    );
  U101_U201_MDSs_i : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X17Y29"
    )
    port map (
      ADR0 => U101_U201_MDS_srsts_0_a3_1_7_0,
      ADR1 => U101_U201_MDS_srsts_0_a3_0_7_0,
      ADR2 => U101_U201_MDS_srsts_0_a3_3_7_0,
      ADR3 => U101_U201_MDSsr_2_O,
      O => U101_U201_MDSs_i_O
    );
  U101_U201_MDS_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '1'
    )
    port map (
      I => U101_U201_MDS_7_DXMUX_26,
      CE => VCC,
      CLK => U101_U201_MDS_7_CLKINV_27,
      SET => GND,
      RST => GND,
      SSET => U101_U201_MDS_7_SRINVNOT,
      SRST => GND,
      O => U101_U201_MDS_7_Q_0
    );
  U101_U201_MDSc_4 : X_LUT4
    generic map(
      INIT => X"0A02",
      LOC => "SLICE_X16Y29"
    )
    port map (
      ADR0 => RST_c,
      ADR1 => STR_c,
      ADR2 => U101_U201_MDS_srsts_i_a3_1_O,
      ADR3 => U101_MDS_1_Q,
      O => U101_U201_MDSc_4_O
    );
  U101_U201_MDS_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      I => U101_MDS_1_DXMUX_28,
      CE => VCC,
      CLK => U101_MDS_1_CLKINV_29,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_MDS_1_SRINVNOT,
      O => U101_MDS_1_Q
    );
  U101_U202_un1_det_2_i_a2 : X_LUT4
    generic map(
      INIT => X"AAAB",
      LOC => "SLICE_X23Y28"
    )
    port map (
      ADR0 => LIMIT_c(5),
      ADR1 => U101_U202_un1_det_2_i_o3_2_O,
      ADR2 => LIMIT_c(2),
      ADR3 => LIMIT_c(1),
      O => U101_U202_N_43_i_O
    );
  U101_U202_LIM : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      I => U101_LIM_DYMUX_30,
      CE => VCC,
      CLK => U101_LIM_CLKINV_32,
      SET => U101_LIM_FFY_SET,
      RST => U101_LIM_FFY_RSTAND_121,
      O => U101_LIM
    );
  U101_LIM_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_30_i_44,
      O => U101_LIM_FFY_SET
    );
  U101_LIM_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 694 ps
    )
    port map (
      I => U101_U202_N_32_i_65,
      O => U101_LIM_FFY_RSTAND_121
    );
  U101_U202_un1_det_2_i_o3_2 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X23Y28"
    )
    port map (
      ADR0 => LIMIT_c(3),
      ADR1 => LIMIT_c(4),
      ADR2 => LIMIT_c(0),
      ADR3 => VCC,
      O => U101_U202_un1_det_2_i_o3_2_O_pack_1
    );
  U101_U201_MDSc_3 : X_LUT4
    generic map(
      INIT => X"7222",
      LOC => "SLICE_X19Y29"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => U101_U201_N_74_i_0,
      ADR2 => STR_c,
      ADR3 => U101_U201_MDS_srsts_i_m3_0_2_O,
      O => U101_U201_MDSc_3_O
    );
  U101_U201_MDS_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      I => U101_U201_MDS_2_DXMUX_33,
      CE => VCC,
      CLK => U101_U201_MDS_2_CLKINV_34,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_U201_MDS_2_SRINVNOT,
      O => U101_U201_MDS_2_Q_1
    );
  U101_U201_MDS_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      I => U101_U201_MDS_3_DYMUX_35,
      CE => VCC,
      CLK => U101_U201_MDS_3_CLKINV_36,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_U201_MDS_3_SRINVNOT,
      O => U101_U201_MDS_3_Q_2
    );
  U101_U201_MDS_srsts_0_a3_0_1_7_Q : X_LUT4
    generic map(
      INIT => X"0015",
      LOC => "SLICE_X17Y28"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => U101_TIM,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_U201_MDS_7_Q_0,
      O => U101_U201_MDS_srsts_0_a3_0_0(7)
    );
  U101_U201_MDSc_0 : X_LUT4
    generic map(
      INIT => X"0C08",
      LOC => "SLICE_X16Y27"
    )
    port map (
      ADR0 => U101_U201_N_75_i,
      ADR1 => RST_c,
      ADR2 => U101_U201_MDS_srsts_i_m3_0_5_O,
      ADR3 => U101_U201_MDS_6_Q_3,
      O => U101_U201_MDSc_0_O
    );
  U101_U201_MDS_5_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y27",
      INIT => '0'
    )
    port map (
      I => U101_MDS_5_DXMUX_37,
      CE => VCC,
      CLK => U101_MDS_5_CLKINV_38,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_MDS_5_SRINVNOT,
      O => U101_MDS_5_Q
    );
  U101_U201_MDSc : X_LUT4
    generic map(
      INIT => X"0405",
      LOC => "SLICE_X17Y26"
    )
    port map (
      ADR0 => U101_U201_MDS_srsts_i_a3_1_6_0,
      ADR1 => U101_U201_MDS_6_Q_3,
      ADR2 => U101_U201_MDS_srsts_i_a3_6_O,
      ADR3 => U101_U201_N_75_i,
      O => U101_U201_MDSc_O
    );
  U101_U201_MDS_6_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => '0'
    )
    port map (
      I => U101_U201_MDS_6_DXMUX_39,
      CE => VCC,
      CLK => U101_U201_MDS_6_CLKINV_40,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_U201_MDS_6_SRINVNOT,
      O => U101_U201_MDS_6_Q_3
    );
  U101_U201_Y_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      I => Y_c_1_DYMUX_42,
      CE => VCC,
      CLK => Y_c_1_CLKINV_43,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Y_c_1_SRINVNOT,
      O => Y_c(0)
    );
  U101_U201_N_86_i : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X18Y29"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => U101_MDS_5_Q,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_U201_MDS_0_Q_4,
      O => U101_U201_N_86_i_O
    );
  U101_U201_Y_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      I => Y_c_1_DXMUX_41,
      CE => VCC,
      CLK => Y_c_1_CLKINV_43,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Y_c_1_SRINVNOT,
      O => Y_c(1)
    );
  U101_U201_Y_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      I => Y_c_2_DYMUX_45,
      CE => VCC,
      CLK => Y_c_2_CLKINV_46,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Y_c_2_SRINVNOT,
      O => Y_c(2)
    );
  U101_U202_N_30_i : X_LUT4
    generic map(
      INIT => X"5F00",
      LOC => "SLICE_X20Y28"
    )
    port map (
      ADR0 => DET_c,
      ADR1 => VCC,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_U202_N_43_i_O_0,
      O => U101_U202_N_30_i_44
    );
  U101_U202_time_down_tim_cnt_0_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => '0'
    )
    port map (
      I => TIMER_c_1_DYMUX_48,
      CE => VCC,
      CLK => TIMER_c_1_CLKINV_50,
      SET => GND,
      RST => TIMER_c_1_SRINV_49,
      O => TIMER_c(0)
    );
  U101_U202_time_down_N_25_i : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => U101_MDS_5_Q,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_U202_un1_tim_cnt_s_1,
      O => U101_U202_time_down_N_25_i_O
    );
  U101_U202_time_down_tim_cnt_1_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y22",
      INIT => '1'
    )
    port map (
      I => TIMER_c_1_DXMUX_47,
      CE => VCC,
      CLK => TIMER_c_1_CLKINV_50,
      SET => TIMER_c_1_SRINV_49,
      RST => GND,
      O => TIMER_c(1)
    );
  U101_U202_time_down_tim_cnt_2_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      I => TIMER_c_3_DYMUX_52,
      CE => VCC,
      CLK => TIMER_c_3_CLKINV_54,
      SET => GND,
      RST => TIMER_c_3_SRINV_53,
      O => TIMER_c(2)
    );
  U101_U202_time_down_N_24_i : X_LUT4
    generic map(
      INIT => X"AAAB",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => U101_U202_un1_tim_cnt_s_3,
      ADR1 => U101_MDS_4_Q,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_MDS_5_Q,
      O => U101_U202_time_down_N_24_i_O
    );
  U101_U202_time_down_tim_cnt_3_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '1'
    )
    port map (
      I => TIMER_c_3_DXMUX_51,
      CE => VCC,
      CLK => TIMER_c_3_CLKINV_54,
      SET => TIMER_c_3_SRINV_53,
      RST => GND,
      O => TIMER_c(3)
    );
  U101_U202_time_down_tim_cnt_4_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => '1'
    )
    port map (
      I => TIMER_c_5_DYMUX_56,
      CE => VCC,
      CLK => TIMER_c_5_CLKINV_58,
      SET => TIMER_c_5_SRINV_57,
      RST => GND,
      O => TIMER_c(4)
    );
  U101_U202_time_down_tim_cnt_4_5_Q : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => U101_MDS_4_Q,
      ADR1 => U101_U202_un1_tim_cnt_s_5,
      ADR2 => U101_MDS_1_Q,
      ADR3 => U101_MDS_5_Q,
      O => U101_U202_time_down_tim_cnt_4_5_O
    );
  U101_U202_time_down_tim_cnt_5_Q : X_FF
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => '0'
    )
    port map (
      I => TIMER_c_5_DXMUX_55,
      CE => VCC,
      CLK => TIMER_c_5_CLKINV_58,
      SET => GND,
      RST => TIMER_c_5_SRINV_57,
      O => TIMER_c(5)
    );
  U101_U202_time_down_tim2lto8_i_a2 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => TIMER_c(7),
      ADR1 => U101_U202_tim2lto8_i_a2_4_0,
      ADR2 => TIMER_c(6),
      ADR3 => U101_U202_tim2lto8_i_a2_5,
      O => U101_U202_tim2_i
    );
  U101_U201_OUTPUT_i : X_LUT4
    generic map(
      INIT => X"0F0E",
      LOC => "SLICE_X16Y26"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => U101_MDS_4_Q,
      ADR2 => U101_TIM,
      ADR3 => U101_MDS_1_Q,
      O => OUTPUT_c
    );
  U101_U202_limit_down_lim_cnt_1_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '1'
    )
    port map (
      I => LIMIT_c_0_DYMUX_8,
      CE => LIMIT_c_0_CEINV_10,
      CLK => LIMIT_c_0_CLKINV_9,
      SET => LIMIT_c_0_SRINVNOT,
      RST => GND,
      O => LIMIT_c(1)
    );
  U101_U202_limit_down_lim_cnt_0_Q : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '1'
    )
    port map (
      I => LIMIT_c_0_DXMUX_7,
      CE => LIMIT_c_0_CEINV_10,
      CLK => LIMIT_c_0_CLKINV_9,
      SET => LIMIT_c_0_SRINVNOT,
      RST => GND,
      O => LIMIT_c(0)
    );
  U101_U201_MDS_srsts_0_a3_1_7_Q : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X17Y31"
    )
    port map (
      ADR0 => U101_MDS_5_Q,
      ADR1 => U101_U201_MDS_7_Q_0,
      ADR2 => U101_MDS_4_Q,
      ADR3 => U101_U201_MDS_srsts_0_a3_1_0(7),
      O => U101_U201_MDS_srsts_0_a3_1(7)
    );
  U101_U201_MDS_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => '0'
    )
    port map (
      I => U101_U201_MDS_0_DYMUX_59,
      CE => U101_U201_MDS_0_CEINVNOT,
      CLK => U101_U201_MDS_0_CLKINV_60,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_U201_MDS_0_SRINVNOT,
      O => U101_U201_MDS_0_Q_4
    );
  U101_U201_MDS_srsts_0_a3_0_7_Q : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X18Y28"
    )
    port map (
      ADR0 => U101_U201_MDS_7_Q_0,
      ADR1 => STR_c,
      ADR2 => STP_c,
      ADR3 => VCC,
      O => U101_U201_MDS_srsts_0_a3_0(7)
    );
  U101_U202_limit_down_lim_cnt_5_Q : X_FF
    generic map(
      LOC => "SLICE_X23Y31",
      INIT => '0'
    )
    port map (
      I => LIMIT_c_5_DYMUX_61,
      CE => VCC,
      CLK => LIMIT_c_5_CLKINV_62,
      SET => GND,
      RST => LIMIT_c_5_FFY_RSTAND_122,
      O => LIMIT_c(5)
    );
  LIMIT_c_5_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X23Y31",
      PATHPULSE => 694 ps
    )
    port map (
      I => clr_c,
      O => LIMIT_c_5_FFY_RSTAND_122
    );
  U101_U201_MDSc_1 : X_LUT4
    generic map(
      INIT => X"D0C0",
      LOC => "SLICE_X17Y30"
    )
    port map (
      ADR0 => STR_c,
      ADR1 => U101_MDS_4_Q,
      ADR2 => U101_U201_MDSc_1_1_5,
      ADR3 => U101_U201_MDS_7_Q_0,
      O => U101_U201_MDSc_1_O
    );
  U101_U201_MDS_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      I => U101_MDS_4_DXMUX_63,
      CE => VCC,
      CLK => U101_MDS_4_CLKINV_64,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U101_MDS_4_SRINVNOT,
      O => U101_MDS_4_Q
    );
  U101_U201_MDS_srsts_i_o3_6_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X16Y28"
    )
    port map (
      ADR0 => U101_U201_MDS_7_Q_0,
      ADR1 => VCC,
      ADR2 => STP_c,
      ADR3 => VCC,
      O => U101_U201_N_72_i
    );
  U101_U202_N_32_i : X_LUT4
    generic map(
      INIT => X"13FF",
      LOC => "SLICE_X20Y29"
    )
    port map (
      ADR0 => DET_c,
      ADR1 => U101_U202_N_43_i_O_0,
      ADR2 => U101_MDS_1_Q,
      ADR3 => clr_c,
      O => U101_U202_N_32_i_65
    );
  U101_U201_MDS_srsts_0_a3_3_7_Q : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X19Y28"
    )
    port map (
      ADR0 => U101_MDS_1_Q,
      ADR1 => RST_c,
      ADR2 => U101_U201_N_75_i,
      ADR3 => U101_U201_MDS_7_Q_0,
      O => U101_U201_MDS_srsts_0_a3_3(7)
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  TIMER_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(2),
      O => TIMER_2_O
    );
  TIMER_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(3),
      O => TIMER_3_O
    );
  TIMER_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(4),
      O => TIMER_4_O
    );
  TIMER_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(5),
      O => TIMER_5_O
    );
  TIMER_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(6),
      O => TIMER_6_O
    );
  TIMER_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(7),
      O => TIMER_7_O
    );
  TIMER_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(8),
      O => TIMER_8_O
    );
  TIMER_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => TIMER_9_O
    );
  OUTPUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => OUTPUT_c,
      O => OUTPUT_O
    );
  Y_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 694 ps
    )
    port map (
      I => Y_c(0),
      O => Y_0_O
    );
  Y_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 694 ps
    )
    port map (
      I => Y_c(1),
      O => Y_1_O
    );
  Y_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 694 ps
    )
    port map (
      I => Y_c(2),
      O => Y_2_O
    );
  LIMIT_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(0),
      O => LIMIT_0_O
    );
  LIMIT_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(1),
      O => LIMIT_1_O
    );
  LIMIT_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(2),
      O => LIMIT_2_O
    );
  LIMIT_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(3),
      O => LIMIT_3_O
    );
  LIMIT_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(4),
      O => LIMIT_4_O
    );
  LIMIT_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 694 ps
    )
    port map (
      I => LIMIT_c(5),
      O => LIMIT_5_O
    );
  TIMER_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(0),
      O => TIMER_0_O
    );
  TIMER_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 694 ps
    )
    port map (
      I => TIMER_c(1),
      O => TIMER_1_O
    );
  NlwBlock_Press_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Press_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

