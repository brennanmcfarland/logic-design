--------------------------------------------------------------------------------
-- Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: I.25
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Tue Feb 07 08:16:56 2006
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf Fpga.pcf -tpw 0 -rpw 100 -s 6 -ar Structure Fpga.ncd time_sim.vhd 
-- Device	: 2v40cs144-5 (PRODUCTION 1.121 2005-11-04)
-- Input file	: Fpga.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: Fpga
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

entity Fpga is
  port (
    ALE : in STD_LOGIC := 'X'; 
    nCS : out STD_LOGIC; 
    RESET : in STD_LOGIC := 'X'; 
    INTA : in STD_LOGIC := 'X'; 
    nWRS : in STD_LOGIC := 'X'; 
    nRD : out STD_LOGIC; 
    BUSY : out STD_LOGIC; 
    nWR : out STD_LOGIC; 
    ACKA : out STD_LOGIC; 
    CTR : out STD_LOGIC; 
    PORT1 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    PORT2 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    PORT3_IN : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    CODE : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ADDRESS : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    PORT3_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    PORT0 : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DATAS : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Fpga;

architecture Structure of Fpga is
  signal U1_un1_ncs_10_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_9_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_11_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_13_0_a2_1_0 : STD_LOGIC; 
  signal U1_un1_ncs_13_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_14_0_a2_0 : STD_LOGIC; 
  signal U2_TXD_2_4_i_m2 : STD_LOGIC; 
  signal U2_TXD_2_u_i_m4 : STD_LOGIC; 
  signal BUSY_c : STD_LOGIC; 
  signal PORT3_IN_c_3_Q : STD_LOGIC; 
  signal PORT3_IN_c_4_Q : STD_LOGIC; 
  signal U1_N_181_i_0 : STD_LOGIC; 
  signal U1_un1_ncs_12_0_a2_0 : STD_LOGIC; 
  signal ALE_c : STD_LOGIC; 
  signal RESET_c : STD_LOGIC; 
  signal PORT3_IN_c_0_Q : STD_LOGIC; 
  signal nWRS_c : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal U1_un1_ncs_15_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_1_0_a2_2_1 : STD_LOGIC; 
  signal U1_un1_ncs_1_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_7_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_8_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_16_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_2_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_4_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_3_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_5_0_a2_0 : STD_LOGIC; 
  signal U1_un1_ncs_6_0_a2_0 : STD_LOGIC; 
  signal U1_ram_9_1_DXMUX_2 : STD_LOGIC; 
  signal U1_ram_9_1_DYMUX_3 : STD_LOGIC; 
  signal U1_ram_9_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_8_5_DXMUX_4 : STD_LOGIC; 
  signal U1_ram_8_5_DYMUX_5 : STD_LOGIC; 
  signal U1_ram_8_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_10_7_DXMUX_6 : STD_LOGIC; 
  signal U1_ram_10_7_DYMUX_7 : STD_LOGIC; 
  signal U1_ram_10_7_CLKINVNOT : STD_LOGIC; 
  signal U1_un1_ncs_9_0_a2_8 : STD_LOGIC; 
  signal U1_un1_ncs_11_0_a2_9 : STD_LOGIC; 
  signal U1_ram_12_1_DXMUX_10 : STD_LOGIC; 
  signal U1_ram_12_1_DYMUX_11 : STD_LOGIC; 
  signal U1_ram_12_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_8_7_DXMUX_12 : STD_LOGIC; 
  signal U1_ram_8_7_DYMUX_13 : STD_LOGIC; 
  signal U1_ram_8_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_9_3_DXMUX_14 : STD_LOGIC; 
  signal U1_ram_9_3_DYMUX_15 : STD_LOGIC; 
  signal U1_ram_9_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_12_3_DXMUX_16 : STD_LOGIC; 
  signal U1_ram_12_3_DYMUX_17 : STD_LOGIC; 
  signal U1_ram_12_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_9_4_DYMUX_18 : STD_LOGIC; 
  signal U1_ram_9_4_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_13_1_DXMUX_19 : STD_LOGIC; 
  signal U1_ram_13_1_DYMUX_20 : STD_LOGIC; 
  signal U1_ram_13_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_12_5_DXMUX_21 : STD_LOGIC; 
  signal U1_ram_12_5_DYMUX_22 : STD_LOGIC; 
  signal U1_ram_12_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_13_3_DXMUX_23 : STD_LOGIC; 
  signal U1_ram_13_3_DYMUX_24 : STD_LOGIC; 
  signal U1_ram_13_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_12_7_DXMUX_25 : STD_LOGIC; 
  signal U1_ram_12_7_DYMUX_26 : STD_LOGIC; 
  signal U1_ram_12_7_CLKINVNOT : STD_LOGIC; 
  signal U1_un44_data_13_2_F5MUX_27 : STD_LOGIC; 
  signal U1_un44_data_13_2_BXINV_28 : STD_LOGIC; 
  signal U1_un44_data_13_2_F6MUX_29 : STD_LOGIC; 
  signal U1_un44_data_13_2_BYINV_30 : STD_LOGIC; 
  signal un44_data_15_2_F5MUX_31 : STD_LOGIC; 
  signal un44_data_15_2_BXINV_32 : STD_LOGIC; 
  signal un44_data_15_2_F6MUX_33 : STD_LOGIC; 
  signal un44_data_15_2_BYINV_34 : STD_LOGIC; 
  signal U1_un44_data_6_2_F5MUX_35 : STD_LOGIC; 
  signal U1_un44_data_6_2_BXINV_36 : STD_LOGIC; 
  signal U1_un44_data_6_2_F6MUX_37 : STD_LOGIC; 
  signal U1_un44_data_6_2_BYINV_38 : STD_LOGIC; 
  signal U1_un44_data_3_2_F5MUX_39 : STD_LOGIC; 
  signal U1_un44_data_3_2_BXINV_40 : STD_LOGIC; 
  signal U1_un44_data_13_3_F5MUX_41 : STD_LOGIC; 
  signal U1_un44_data_13_3_BXINV_42 : STD_LOGIC; 
  signal U1_un44_data_13_3_F6MUX_43 : STD_LOGIC; 
  signal U1_un44_data_13_3_BYINV_44 : STD_LOGIC; 
  signal U1_un44_data_13_6_F5MUX_45 : STD_LOGIC; 
  signal U1_un44_data_13_6_BXINV_46 : STD_LOGIC; 
  signal U1_un44_data_13_6_F6MUX_47 : STD_LOGIC; 
  signal U1_un44_data_13_6_BYINV_48 : STD_LOGIC; 
  signal un44_data_15_6_F5MUX_49 : STD_LOGIC; 
  signal un44_data_15_6_BXINV_50 : STD_LOGIC; 
  signal un44_data_15_6_F6MUX_51 : STD_LOGIC; 
  signal un44_data_15_6_BYINV_52 : STD_LOGIC; 
  signal U1_un44_data_6_6_F5MUX_53 : STD_LOGIC; 
  signal U1_un44_data_6_6_BXINV_54 : STD_LOGIC; 
  signal U1_un44_data_6_6_F6MUX_55 : STD_LOGIC; 
  signal U1_un44_data_6_6_BYINV_56 : STD_LOGIC; 
  signal U1_un44_data_3_6_F5MUX_57 : STD_LOGIC; 
  signal U1_un44_data_3_6_BXINV_58 : STD_LOGIC; 
  signal U1_un44_data_13_7_F5MUX_59 : STD_LOGIC; 
  signal U1_un44_data_13_7_BXINV_60 : STD_LOGIC; 
  signal U1_un44_data_13_7_F6MUX_61 : STD_LOGIC; 
  signal U1_un44_data_13_7_BYINV_62 : STD_LOGIC; 
  signal un44_data_15_7_F5MUX_63 : STD_LOGIC; 
  signal un44_data_15_7_BXINV_64 : STD_LOGIC; 
  signal un44_data_15_7_F6MUX_65 : STD_LOGIC; 
  signal un44_data_15_7_BYINV_66 : STD_LOGIC; 
  signal U1_un44_data_6_7_F5MUX_67 : STD_LOGIC; 
  signal U1_un44_data_6_7_BXINV_68 : STD_LOGIC; 
  signal U1_un44_data_6_7_F6MUX_69 : STD_LOGIC; 
  signal U1_un44_data_6_7_BYINV_70 : STD_LOGIC; 
  signal U1_un44_data_3_7_F5MUX_71 : STD_LOGIC; 
  signal U1_un44_data_3_7_BXINV_72 : STD_LOGIC; 
  signal U1_un44_data_13_0_F5MUX_73 : STD_LOGIC; 
  signal U1_un44_data_13_0_BXINV_74 : STD_LOGIC; 
  signal U1_un44_data_13_0_F6MUX_75 : STD_LOGIC; 
  signal U1_un44_data_13_0_BYINV_76 : STD_LOGIC; 
  signal un44_data_15_0_F5MUX_77 : STD_LOGIC; 
  signal un44_data_15_0_BXINV_78 : STD_LOGIC; 
  signal un44_data_15_0_F6MUX_79 : STD_LOGIC; 
  signal un44_data_15_0_BYINV_80 : STD_LOGIC; 
  signal U1_un44_data_6_0_F5MUX_81 : STD_LOGIC; 
  signal U1_un44_data_6_0_BXINV_82 : STD_LOGIC; 
  signal U1_un44_data_6_0_F6MUX_83 : STD_LOGIC; 
  signal U1_un44_data_6_0_BYINV_84 : STD_LOGIC; 
  signal U1_un44_data_3_0_F5MUX_85 : STD_LOGIC; 
  signal U1_un44_data_3_0_BXINV_86 : STD_LOGIC; 
  signal un44_data_15_3_F5MUX_87 : STD_LOGIC; 
  signal un44_data_15_3_BXINV_88 : STD_LOGIC; 
  signal un44_data_15_3_F6MUX_89 : STD_LOGIC; 
  signal un44_data_15_3_BYINV_90 : STD_LOGIC; 
  signal U1_un44_data_6_3_F5MUX_91 : STD_LOGIC; 
  signal U1_un44_data_6_3_BXINV_92 : STD_LOGIC; 
  signal U1_un44_data_6_3_F6MUX_93 : STD_LOGIC; 
  signal U1_un44_data_6_3_BYINV_94 : STD_LOGIC; 
  signal U1_un44_data_3_3_F5MUX_95 : STD_LOGIC; 
  signal U1_un44_data_3_3_BXINV_96 : STD_LOGIC; 
  signal U1_un44_data_13_4_F5MUX_97 : STD_LOGIC; 
  signal U1_un44_data_13_4_BXINV_98 : STD_LOGIC; 
  signal U1_un44_data_13_4_F6MUX_99 : STD_LOGIC; 
  signal U1_un44_data_13_4_BYINV_100 : STD_LOGIC; 
  signal un44_data_15_4_F5MUX_101 : STD_LOGIC; 
  signal un44_data_15_4_BXINV_102 : STD_LOGIC; 
  signal un44_data_15_4_F6MUX_103 : STD_LOGIC; 
  signal un44_data_15_4_BYINV_104 : STD_LOGIC; 
  signal U1_un44_data_6_4_F5MUX_105 : STD_LOGIC; 
  signal U1_un44_data_6_4_BXINV_106 : STD_LOGIC; 
  signal U1_un44_data_6_4_F6MUX_107 : STD_LOGIC; 
  signal U1_un44_data_6_4_BYINV_108 : STD_LOGIC; 
  signal U1_un44_data_3_4_F5MUX_109 : STD_LOGIC; 
  signal U1_un44_data_3_4_BXINV_110 : STD_LOGIC; 
  signal U1_un44_data_13_5_F5MUX_111 : STD_LOGIC; 
  signal U1_un44_data_13_5_BXINV_112 : STD_LOGIC; 
  signal U1_un44_data_13_5_F6MUX_113 : STD_LOGIC; 
  signal U1_un44_data_13_5_BYINV_114 : STD_LOGIC; 
  signal un44_data_15_5_F5MUX_115 : STD_LOGIC; 
  signal un44_data_15_5_BXINV_116 : STD_LOGIC; 
  signal un44_data_15_5_F6MUX_117 : STD_LOGIC; 
  signal un44_data_15_5_BYINV_118 : STD_LOGIC; 
  signal U1_un44_data_6_5_F5MUX_119 : STD_LOGIC; 
  signal U1_un44_data_6_5_BXINV_120 : STD_LOGIC; 
  signal U1_un44_data_6_5_F6MUX_121 : STD_LOGIC; 
  signal U1_un44_data_6_5_BYINV_122 : STD_LOGIC; 
  signal U1_un44_data_3_5_F5MUX_123 : STD_LOGIC; 
  signal U1_un44_data_3_5_BXINV_124 : STD_LOGIC; 
  signal nCS_O : STD_LOGIC; 
  signal PORT0_2_O : STD_LOGIC; 
  signal PORT0_2_T : STD_LOGIC; 
  signal PORT0_2_INBUF : STD_LOGIC; 
  signal PORT0_2_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_2_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_2_IFF_IFFDMUX_125 : STD_LOGIC; 
  signal ADDRESS_0_O : STD_LOGIC; 
  signal PORT0_3_O : STD_LOGIC; 
  signal PORT0_3_T : STD_LOGIC; 
  signal PORT0_3_INBUF : STD_LOGIC; 
  signal PORT0_3_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_3_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_3_IFF_IFFDMUX_126 : STD_LOGIC; 
  signal ADDRESS_1_O : STD_LOGIC; 
  signal PORT0_4_O : STD_LOGIC; 
  signal PORT0_4_T : STD_LOGIC; 
  signal PORT0_4_INBUF : STD_LOGIC; 
  signal PORT0_4_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_4_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_4_IFF_IFFDMUX_127 : STD_LOGIC; 
  signal PORT1_0_O : STD_LOGIC; 
  signal ADDRESS_2_O : STD_LOGIC; 
  signal PORT0_5_O : STD_LOGIC; 
  signal PORT0_5_T : STD_LOGIC; 
  signal PORT0_5_INBUF : STD_LOGIC; 
  signal PORT0_5_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_5_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_5_IFF_IFFDMUX_128 : STD_LOGIC; 
  signal PORT1_1_O : STD_LOGIC; 
  signal ADDRESS_3_O : STD_LOGIC; 
  signal PORT0_6_O : STD_LOGIC; 
  signal PORT0_6_T : STD_LOGIC; 
  signal PORT0_6_INBUF : STD_LOGIC; 
  signal PORT0_6_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_6_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_6_IFF_IFFDMUX_129 : STD_LOGIC; 
  signal PORT1_2_O : STD_LOGIC; 
  signal ADDRESS_4_O : STD_LOGIC; 
  signal nWRS_INBUF : STD_LOGIC; 
  signal PORT0_7_IFF_IFFDMUX_130 : STD_LOGIC; 
  signal PORT0_7_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_7_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_7_O : STD_LOGIC; 
  signal PORT0_7_T : STD_LOGIC; 
  signal PORT0_7_INBUF : STD_LOGIC; 
  signal PORT1_3_O : STD_LOGIC; 
  signal U1_un44_data_13_1_F5MUX_131 : STD_LOGIC; 
  signal U1_un44_data_13_1_BXINV_132 : STD_LOGIC; 
  signal U1_un44_data_13_1_F6MUX_133 : STD_LOGIC; 
  signal U1_un44_data_13_1_BYINV_134 : STD_LOGIC; 
  signal un44_data_15_1_F5MUX_135 : STD_LOGIC; 
  signal un44_data_15_1_BXINV_136 : STD_LOGIC; 
  signal un44_data_15_1_F6MUX_137 : STD_LOGIC; 
  signal un44_data_15_1_BYINV_138 : STD_LOGIC; 
  signal U1_un44_data_6_1_F5MUX_139 : STD_LOGIC; 
  signal U1_un44_data_6_1_BXINV_140 : STD_LOGIC; 
  signal U1_un44_data_6_1_F6MUX_141 : STD_LOGIC; 
  signal U1_un44_data_6_1_BYINV_142 : STD_LOGIC; 
  signal U1_un44_data_3_1_F5MUX_143 : STD_LOGIC; 
  signal U1_un44_data_3_1_BXINV_144 : STD_LOGIC; 
  signal U2_TXD_2_u_i_m2_F5MUX_145 : STD_LOGIC; 
  signal U2_TXD_2_4_i_m2_bm : STD_LOGIC; 
  signal U2_TXD_2_u_i_m2_BXINV_146 : STD_LOGIC; 
  signal U2_TXD_2_u_i_m2_F6MUX_147 : STD_LOGIC; 
  signal U2_TXD_2_4_i_m2_am : STD_LOGIC; 
  signal U2_TXD_2_u_i_m2_BYINV_148 : STD_LOGIC; 
  signal U2_TXD_2_u_i_m4_F5MUX_149 : STD_LOGIC; 
  signal U2_TXD_2_u_i_m4_bm : STD_LOGIC; 
  signal U2_TXD_2_u_i_m4_BXINV_150 : STD_LOGIC; 
  signal U2_TXD_2_u_i_m4_am : STD_LOGIC; 
  signal PORT3_IN_2_INBUF : STD_LOGIC; 
  signal PORT3_IN_3_INBUF : STD_LOGIC; 
  signal PORT3_IN_4_INBUF : STD_LOGIC; 
  signal BUSY_O : STD_LOGIC; 
  signal CTR_O : STD_LOGIC; 
  signal INTA_INBUF : STD_LOGIC; 
  signal PORT0_0_O : STD_LOGIC; 
  signal PORT0_0_T : STD_LOGIC; 
  signal PORT0_0_INBUF : STD_LOGIC; 
  signal PORT0_0_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_0_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_0_IFF_IFFDMUX_151 : STD_LOGIC; 
  signal PORT0_1_O : STD_LOGIC; 
  signal PORT0_1_T : STD_LOGIC; 
  signal PORT0_1_INBUF : STD_LOGIC; 
  signal PORT0_1_IFF_ICLK2INVNOT : STD_LOGIC; 
  signal PORT0_1_IFF_ICLK1INVNOT : STD_LOGIC; 
  signal PORT0_1_IFF_IFFDMUX_152 : STD_LOGIC; 
  signal PORT3_OUT_0_O : STD_LOGIC; 
  signal PORT3_OUT_0_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal nRD_O : STD_LOGIC; 
  signal PORT3_OUT_1_O : STD_LOGIC; 
  signal CODE_0_INBUF : STD_LOGIC; 
  signal PORT3_OUT_2_O : STD_LOGIC; 
  signal PORT3_OUT_2_OUTPUT_OTCLK1INV_153 : STD_LOGIC; 
  signal CODE_1_INBUF : STD_LOGIC; 
  signal CODE_2_INBUF : STD_LOGIC; 
  signal CODE_3_INBUF : STD_LOGIC; 
  signal PORT2_6_INBUF : STD_LOGIC; 
  signal ALE_INBUF : STD_LOGIC; 
  signal PORT2_7_INBUF : STD_LOGIC; 
  signal DATAS_0_INBUF : STD_LOGIC; 
  signal DATAS_0_IFF_ICLK1INV_154 : STD_LOGIC; 
  signal DATAS_0_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_0_IFF_IFFDMUX_155 : STD_LOGIC; 
  signal DATAS_0_IFF_IFF1_RSTAND_156 : STD_LOGIC; 
  signal DATAS_1_INBUF : STD_LOGIC; 
  signal DATAS_1_IFF_ICLK1INV_157 : STD_LOGIC; 
  signal DATAS_1_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_1_IFF_IFFDMUX_158 : STD_LOGIC; 
  signal DATAS_1_IFF_IFF1_RSTAND_159 : STD_LOGIC; 
  signal DATAS_2_INBUF : STD_LOGIC; 
  signal DATAS_2_IFF_ICLK1INV_160 : STD_LOGIC; 
  signal DATAS_2_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_2_IFF_IFFDMUX_161 : STD_LOGIC; 
  signal DATAS_2_IFF_IFF1_RSTAND_162 : STD_LOGIC; 
  signal DATAS_3_INBUF : STD_LOGIC; 
  signal DATAS_3_IFF_ICLK1INV_163 : STD_LOGIC; 
  signal DATAS_3_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_3_IFF_IFFDMUX_164 : STD_LOGIC; 
  signal DATAS_3_IFF_IFF1_RSTAND_165 : STD_LOGIC; 
  signal DATAS_4_INBUF : STD_LOGIC; 
  signal DATAS_4_IFF_ICLK1INV_166 : STD_LOGIC; 
  signal DATAS_4_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_4_IFF_IFFDMUX_167 : STD_LOGIC; 
  signal DATAS_4_IFF_IFF1_RSTAND_168 : STD_LOGIC; 
  signal nWR_O : STD_LOGIC; 
  signal DATAS_5_INBUF : STD_LOGIC; 
  signal DATAS_5_IFF_ICLK1INV_169 : STD_LOGIC; 
  signal DATAS_5_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_5_IFF_IFFDMUX_170 : STD_LOGIC; 
  signal DATAS_5_IFF_IFF1_RSTAND_171 : STD_LOGIC; 
  signal DATAS_6_INBUF : STD_LOGIC; 
  signal U1_ram_0_1_DXMUX_172 : STD_LOGIC; 
  signal U1_ram_0_1_DYMUX_173 : STD_LOGIC; 
  signal U1_ram_0_1_CLKINVNOT : STD_LOGIC; 
  signal U1_un1_ncs_10_0_a2_174 : STD_LOGIC; 
  signal U1_un1_ncs_15_0_a2_175 : STD_LOGIC; 
  signal U1_un1_ncs_2_0_a2_176 : STD_LOGIC; 
  signal U1_un1_ncs_4_0_a2_177 : STD_LOGIC; 
  signal U1_ram_15_3_DXMUX_178 : STD_LOGIC; 
  signal U1_ram_15_3_DYMUX_179 : STD_LOGIC; 
  signal U1_ram_15_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_14_7_DXMUX_180 : STD_LOGIC; 
  signal U1_ram_14_7_DYMUX_181 : STD_LOGIC; 
  signal U1_ram_14_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_0_3_DXMUX_182 : STD_LOGIC; 
  signal U1_ram_0_3_DYMUX_183 : STD_LOGIC; 
  signal U1_ram_0_3_CLKINVNOT : STD_LOGIC; 
  signal U1_un1_ncs_13_0_a2_184 : STD_LOGIC; 
  signal U1_un1_ncs_12_0_a2_185 : STD_LOGIC; 
  signal U1_ram_15_5_DXMUX_186 : STD_LOGIC; 
  signal U1_ram_15_5_DYMUX_187 : STD_LOGIC; 
  signal U1_ram_15_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_1_1_DXMUX_188 : STD_LOGIC; 
  signal U1_ram_1_1_DYMUX_189 : STD_LOGIC; 
  signal U1_ram_1_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_0_5_DXMUX_190 : STD_LOGIC; 
  signal U1_ram_0_5_DYMUX_191 : STD_LOGIC; 
  signal U1_ram_0_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_15_7_DXMUX_192 : STD_LOGIC; 
  signal U1_ram_15_7_DYMUX_193 : STD_LOGIC; 
  signal U1_ram_15_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_1_3_DXMUX_194 : STD_LOGIC; 
  signal U1_ram_1_3_DYMUX_195 : STD_LOGIC; 
  signal U1_ram_1_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_0_7_DXMUX_196 : STD_LOGIC; 
  signal U1_ram_0_7_DYMUX_197 : STD_LOGIC; 
  signal U1_ram_0_7_CLKINVNOT : STD_LOGIC; 
  signal U1_N_181_i_198 : STD_LOGIC; 
  signal U1_ram_1_5_DXMUX_199 : STD_LOGIC; 
  signal U1_ram_1_5_DYMUX_200 : STD_LOGIC; 
  signal U1_ram_1_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_2_1_DXMUX_201 : STD_LOGIC; 
  signal U1_ram_2_1_DYMUX_202 : STD_LOGIC; 
  signal U1_ram_2_1_CLKINVNOT : STD_LOGIC; 
  signal U2_N_16_i : STD_LOGIC; 
  signal U1_un1_ncs_16_0_a2_203 : STD_LOGIC; 
  signal U1_un1_ncs_13_0_a2_1_pack_1 : STD_LOGIC; 
  signal U1_ram_2_3_DXMUX_204 : STD_LOGIC; 
  signal U1_ram_2_3_DYMUX_205 : STD_LOGIC; 
  signal U1_ram_2_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_1_7_DXMUX_206 : STD_LOGIC; 
  signal U1_ram_1_7_DYMUX_207 : STD_LOGIC; 
  signal U1_ram_1_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_3_1_DXMUX_208 : STD_LOGIC; 
  signal U1_ram_3_1_DYMUX_209 : STD_LOGIC; 
  signal U1_ram_3_1_CLKINVNOT : STD_LOGIC; 
  signal DATAS_6_IFF_ICLK1INV_210 : STD_LOGIC; 
  signal DATAS_6_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_6_IFF_IFFDMUX_211 : STD_LOGIC; 
  signal DATAS_6_IFF_IFF1_RSTAND_212 : STD_LOGIC; 
  signal ACKA_O : STD_LOGIC; 
  signal DATAS_7_INBUF : STD_LOGIC; 
  signal DATAS_7_IFF_ICLK1INV_213 : STD_LOGIC; 
  signal DATAS_7_IFF_ICEINVNOT : STD_LOGIC; 
  signal DATAS_7_IFF_IFFDMUX_214 : STD_LOGIC; 
  signal DATAS_7_IFF_IFF1_RSTAND_215 : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal PORT3_IN_0_INBUF : STD_LOGIC; 
  signal PORT3_IN_1_INBUF : STD_LOGIC; 
  signal ALE_ibuf_BUFG_S_INVNOT : STD_LOGIC; 
  signal ALE_ibuf_BUFG_I0_INV : STD_LOGIC; 
  signal PORT3_IN_ibuf_0_BUFG_S_INVNOT : STD_LOGIC; 
  signal PORT3_IN_ibuf_0_BUFG_I0_INV : STD_LOGIC; 
  signal nWRS_ibuf_BUFG_S_INVNOT : STD_LOGIC; 
  signal nWRS_ibuf_BUFG_I0_INV : STD_LOGIC; 
  signal U2_cnt_1_DXMUX_216 : STD_LOGIC; 
  signal U2_un7_cnt_axbxc1_O_pack_1 : STD_LOGIC; 
  signal U2_cnt_1_DYMUX_217 : STD_LOGIC; 
  signal U2_un7_cnt_axbxc2_O_pack_1 : STD_LOGIC; 
  signal U2_cnt_1_SRFFMUX_218 : STD_LOGIC; 
  signal U2_cnt_1_CLKINVNOT : STD_LOGIC; 
  signal BUSY_c_DYMUX_219 : STD_LOGIC; 
  signal U2_read_un1_txd_7_i_O_pack_1 : STD_LOGIC; 
  signal BUSY_c_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_13_5_DXMUX_220 : STD_LOGIC; 
  signal U1_ram_13_5_DYMUX_221 : STD_LOGIC; 
  signal U1_ram_13_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_14_1_DXMUX_222 : STD_LOGIC; 
  signal U1_ram_14_1_DYMUX_223 : STD_LOGIC; 
  signal U1_ram_14_1_CLKINVNOT : STD_LOGIC; 
  signal U2_cnt_2_DYMUX_224 : STD_LOGIC; 
  signal U2_cnt_2_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_13_7_DXMUX_225 : STD_LOGIC; 
  signal U1_ram_13_7_DYMUX_226 : STD_LOGIC; 
  signal U1_ram_13_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_14_3_DXMUX_227 : STD_LOGIC; 
  signal U1_ram_14_3_DYMUX_228 : STD_LOGIC; 
  signal U1_ram_14_3_CLKINVNOT : STD_LOGIC; 
  signal U1_un1_ncs_1_0_a2_229 : STD_LOGIC; 
  signal U1_un1_ncs_7_0_a2_230 : STD_LOGIC; 
  signal U1_un1_ncs_8_0_a2_231 : STD_LOGIC; 
  signal U1_un1_ncs_1_0_a2_2_pack_1 : STD_LOGIC; 
  signal U1_ram_15_1_DXMUX_232 : STD_LOGIC; 
  signal U1_ram_15_1_DYMUX_233 : STD_LOGIC; 
  signal U1_ram_15_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_14_5_DXMUX_234 : STD_LOGIC; 
  signal U1_ram_14_5_DYMUX_235 : STD_LOGIC; 
  signal U1_ram_14_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_2_5_DXMUX_236 : STD_LOGIC; 
  signal U1_ram_2_5_DYMUX_237 : STD_LOGIC; 
  signal U1_ram_2_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_3_3_DXMUX_238 : STD_LOGIC; 
  signal U1_ram_3_3_DYMUX_239 : STD_LOGIC; 
  signal U1_ram_3_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_2_7_DXMUX_240 : STD_LOGIC; 
  signal U1_ram_2_7_DYMUX_241 : STD_LOGIC; 
  signal U1_ram_2_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_4_1_DXMUX_242 : STD_LOGIC; 
  signal U1_ram_4_1_DYMUX_243 : STD_LOGIC; 
  signal U1_ram_4_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_3_5_DXMUX_244 : STD_LOGIC; 
  signal U1_ram_3_5_DYMUX_245 : STD_LOGIC; 
  signal U1_ram_3_5_CLKINVNOT : STD_LOGIC; 
  signal U1_un1_ncs_3_0_a2_246 : STD_LOGIC; 
  signal U1_un1_ncs_5_0_a2_247 : STD_LOGIC; 
  signal U1_ram_4_3_DXMUX_248 : STD_LOGIC; 
  signal U1_ram_4_3_DYMUX_249 : STD_LOGIC; 
  signal U1_ram_4_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_3_7_DXMUX_250 : STD_LOGIC; 
  signal U1_ram_3_7_DYMUX_251 : STD_LOGIC; 
  signal U1_ram_3_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_5_1_DXMUX_252 : STD_LOGIC; 
  signal U1_ram_5_1_DYMUX_253 : STD_LOGIC; 
  signal U1_ram_5_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_4_5_DXMUX_254 : STD_LOGIC; 
  signal U1_ram_4_5_DYMUX_255 : STD_LOGIC; 
  signal U1_ram_4_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_5_3_DXMUX_256 : STD_LOGIC; 
  signal U1_ram_5_3_DYMUX_257 : STD_LOGIC; 
  signal U1_ram_5_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_4_7_DXMUX_258 : STD_LOGIC; 
  signal U1_ram_4_7_DYMUX_259 : STD_LOGIC; 
  signal U1_ram_4_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_6_1_DXMUX_260 : STD_LOGIC; 
  signal U1_ram_6_1_DYMUX_261 : STD_LOGIC; 
  signal U1_ram_6_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_5_5_DXMUX_262 : STD_LOGIC; 
  signal U1_ram_5_5_DYMUX_263 : STD_LOGIC; 
  signal U1_ram_5_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_6_3_DXMUX_264 : STD_LOGIC; 
  signal U1_ram_6_3_DYMUX_265 : STD_LOGIC; 
  signal U1_ram_6_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_5_7_DXMUX_266 : STD_LOGIC; 
  signal U1_ram_5_7_DYMUX_267 : STD_LOGIC; 
  signal U1_ram_5_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_7_1_DXMUX_268 : STD_LOGIC; 
  signal U1_ram_7_1_DYMUX_269 : STD_LOGIC; 
  signal U1_ram_7_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_6_5_DXMUX_270 : STD_LOGIC; 
  signal U1_ram_6_5_DYMUX_271 : STD_LOGIC; 
  signal U1_ram_6_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_6_7_DXMUX_272 : STD_LOGIC; 
  signal U1_ram_6_7_DYMUX_273 : STD_LOGIC; 
  signal U1_ram_6_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_7_3_DXMUX_274 : STD_LOGIC; 
  signal U1_ram_7_3_DYMUX_275 : STD_LOGIC; 
  signal U1_ram_7_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_10_1_DXMUX_276 : STD_LOGIC; 
  signal U1_ram_10_1_DYMUX_277 : STD_LOGIC; 
  signal U1_ram_10_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_8_1_DXMUX_278 : STD_LOGIC; 
  signal U1_ram_8_1_DYMUX_279 : STD_LOGIC; 
  signal U1_ram_8_1_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_7_5_DXMUX_280 : STD_LOGIC; 
  signal U1_ram_7_5_DYMUX_281 : STD_LOGIC; 
  signal U1_ram_7_5_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_10_3_DXMUX_282 : STD_LOGIC; 
  signal U1_ram_10_3_DYMUX_283 : STD_LOGIC; 
  signal U1_ram_10_3_CLKINVNOT : STD_LOGIC; 
  signal U1_un1_ncs_14_0_a2_284 : STD_LOGIC; 
  signal U1_un1_ncs_6_0_a2_285 : STD_LOGIC; 
  signal U1_ram_8_3_DXMUX_286 : STD_LOGIC; 
  signal U1_ram_8_3_DYMUX_287 : STD_LOGIC; 
  signal U1_ram_8_3_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_7_7_DXMUX_288 : STD_LOGIC; 
  signal U1_ram_7_7_DYMUX_289 : STD_LOGIC; 
  signal U1_ram_7_7_CLKINVNOT : STD_LOGIC; 
  signal U1_ram_10_5_DXMUX_290 : STD_LOGIC; 
  signal U1_ram_10_5_DYMUX_291 : STD_LOGIC; 
  signal U1_ram_10_5_CLKINVNOT : STD_LOGIC; 
  signal PORT3_OUT_1_0_Q : STD_LOGIC; 
  signal PORT3_OUT_0_OUTPUT_OFF_O1INV_292 : STD_LOGIC; 
  signal PORT3_OUT_1_2_Q : STD_LOGIC; 
  signal PORT3_OUT_2_OUTPUT_OFF_O1INV_293 : STD_LOGIC; 
  signal U2_cnt_2_FFY_RSTAND_294 : STD_LOGIC; 
  signal BUSY_c_FFY_RSTAND_295 : STD_LOGIC; 
  signal PORT3_OUT_0_OUTPUT_OFF_OFF1_SET : STD_LOGIC; 
  signal PORT3_OUT_2_OUTPUT_OFF_OFF1_SET : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_U0_OUTP_2_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_U0_OUTP_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U0_OUTP_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U0_OUTP_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U0_OUTP_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_11_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_13_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_9_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_12_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_14_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_15_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_0_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_1_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_2_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_3_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_4_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_5_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_6_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_8_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_7_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_U1_ram_10_5_CLK : STD_LOGIC; 
  signal PORT0_in : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_9 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_8 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_10 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ADD : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_ram_12 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_13 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_15 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_11 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_13 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_10 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_14 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_14 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_ram_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U2_REG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PORT2_c : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U1_un44_data_13_bm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_13_am : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_10_bm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_10_am : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_6_bm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_6_am : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_3_bm : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_un44_data_3_am : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  U1_ram_9_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_9_1_DXMUX_2
    );
  U1_ram_9_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_9_1_DYMUX_3
    );
  U1_ram_9_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X9Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_0,
      O => U1_ram_9_1_CLKINVNOT
    );
  U1_ram_8_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_8_5_DXMUX_4
    );
  U1_ram_8_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_8_5_DYMUX_5
    );
  U1_ram_8_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X8Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_9_0_a2_0,
      O => U1_ram_8_5_CLKINVNOT
    );
  U1_ram_10_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_10_7_DXMUX_6
    );
  U1_ram_10_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_10_7_DYMUX_7
    );
  U1_ram_10_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_11_0_a2_0,
      O => U1_ram_10_7_CLKINVNOT
    );
  U1_un1_ncs_9_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_9_0_a2_8,
      O => U1_un1_ncs_9_0_a2_0
    );
  U1_un1_ncs_9_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_11_0_a2_9,
      O => U1_un1_ncs_11_0_a2_0
    );
  U1_un1_ncs_11_0_a2 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X2Y6"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(0),
      ADR2 => U1_un1_ncs_13_0_a2_1_0,
      ADR3 => ADD(1),
      O => U1_un1_ncs_11_0_a2_9
    );
  U1_ram_12_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_12_1_DXMUX_10
    );
  U1_ram_12_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_12_1_DYMUX_11
    );
  U1_ram_12_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X6Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_13_0_a2_0,
      O => U1_ram_12_1_CLKINVNOT
    );
  U1_ram_8_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_8_7_DXMUX_12
    );
  U1_ram_8_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_8_7_DYMUX_13
    );
  U1_ram_8_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_9_0_a2_0,
      O => U1_ram_8_7_CLKINVNOT
    );
  U1_ram_9_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_9_3_DXMUX_14
    );
  U1_ram_9_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_9_3_DYMUX_15
    );
  U1_ram_9_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_0,
      O => U1_ram_9_3_CLKINVNOT
    );
  U1_ram_12_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_12_3_DXMUX_16
    );
  U1_ram_12_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_12_3_DYMUX_17
    );
  U1_ram_12_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_13_0_a2_0,
      O => U1_ram_12_3_CLKINVNOT
    );
  U1_ram_9_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_9_4_DYMUX_18
    );
  U1_ram_9_4_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_0,
      O => U1_ram_9_4_CLKINVNOT
    );
  U1_ram_13_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_13_1_DXMUX_19
    );
  U1_ram_13_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_13_1_DYMUX_20
    );
  U1_ram_13_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_14_0_a2_0,
      O => U1_ram_13_1_CLKINVNOT
    );
  U1_ram_12_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_12_5_DXMUX_21
    );
  U1_ram_12_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_12_5_DYMUX_22
    );
  U1_ram_12_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_13_0_a2_0,
      O => U1_ram_12_5_CLKINVNOT
    );
  U1_ram_13_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_13_3_DXMUX_23
    );
  U1_ram_13_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_13_3_DYMUX_24
    );
  U1_ram_13_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_14_0_a2_0,
      O => U1_ram_13_3_CLKINVNOT
    );
  U1_ram_12_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_12_7_DXMUX_25
    );
  U1_ram_12_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_12_7_DYMUX_26
    );
  U1_ram_12_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_13_0_a2_0,
      O => U1_ram_12_7_CLKINVNOT
    );
  U1_un44_data_13_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X12Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_2_F5MUX_27,
      O => U1_un44_data_13(2)
    );
  U1_un44_data_13_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      IA => U1_un44_data_13_am(2),
      IB => U1_un44_data_13_bm(2),
      SEL => U1_un44_data_13_2_BXINV_28,
      O => U1_un44_data_13_2_F5MUX_27
    );
  U1_un44_data_13_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_2_BXINV_28
    );
  U1_un44_data_13_2_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_2_F6MUX_29,
      O => U1_un44_data_14(2)
    );
  U1_un44_data_13_2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      IA => U1_un44_data_10(2),
      IB => U1_un44_data_13(2),
      SEL => U1_un44_data_13_2_BYINV_30,
      O => U1_un44_data_13_2_F6MUX_29
    );
  U1_un44_data_13_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_2_BYINV_30
    );
  U1_un44_data_13_am_2_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X12Y6"
    )
    port map (
      ADR0 => U1_ram_3(2),
      ADR1 => ADD(3),
      ADR2 => VCC,
      ADR3 => U1_ram_11(2),
      O => U1_un44_data_13_am(2)
    );
  un44_data_15_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_2_F5MUX_31,
      O => U1_un44_data_10(2)
    );
  un44_data_15_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y7"
    )
    port map (
      IA => U1_un44_data_10_am(2),
      IB => U1_un44_data_10_bm(2),
      SEL => un44_data_15_2_BXINV_32,
      O => un44_data_15_2_F5MUX_31
    );
  un44_data_15_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_2_BXINV_32
    );
  un44_data_15_2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y7"
    )
    port map (
      IA => U1_un44_data_7(2),
      IB => U1_un44_data_14(2),
      SEL => un44_data_15_2_BYINV_34,
      O => un44_data_15_2_F6MUX_33
    );
  un44_data_15_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_2_BYINV_34
    );
  U1_un44_data_10_am_2_Q : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => U1_ram_1(2),
      ADR1 => U1_ram_9(2),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_10_am(2)
    );
  U1_un44_data_6_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_2_F5MUX_35,
      O => U1_un44_data_6(2)
    );
  U1_un44_data_6_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y6"
    )
    port map (
      IA => U1_un44_data_6_am(2),
      IB => U1_un44_data_6_bm(2),
      SEL => U1_un44_data_6_2_BXINV_36,
      O => U1_un44_data_6_2_F5MUX_35
    );
  U1_un44_data_6_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_2_BXINV_36
    );
  U1_un44_data_6_2_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_2_F6MUX_37,
      O => U1_un44_data_7(2)
    );
  U1_un44_data_6_2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y6"
    )
    port map (
      IA => U1_un44_data_3(2),
      IB => U1_un44_data_6(2),
      SEL => U1_un44_data_6_2_BYINV_38,
      O => U1_un44_data_6_2_F6MUX_37
    );
  U1_un44_data_6_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_2_BYINV_38
    );
  U1_un44_data_6_am_2_Q : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => U1_ram_10(2),
      ADR1 => ADD(3),
      ADR2 => VCC,
      ADR3 => U1_ram_2(2),
      O => U1_un44_data_6_am(2)
    );
  U1_un44_data_3_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_2_F5MUX_39,
      O => U1_un44_data_3(2)
    );
  U1_un44_data_3_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y7"
    )
    port map (
      IA => U1_un44_data_3_am(2),
      IB => U1_un44_data_3_bm(2),
      SEL => U1_un44_data_3_2_BXINV_40,
      O => U1_un44_data_3_2_F5MUX_39
    );
  U1_un44_data_3_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_2_BXINV_40
    );
  U1_un44_data_13_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_3_F5MUX_41,
      O => U1_un44_data_13(3)
    );
  U1_un44_data_13_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      IA => U1_un44_data_13_am(3),
      IB => U1_un44_data_13_bm(3),
      SEL => U1_un44_data_13_3_BXINV_42,
      O => U1_un44_data_13_3_F5MUX_41
    );
  U1_un44_data_13_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_3_BXINV_42
    );
  U1_un44_data_13_3_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_3_F6MUX_43,
      O => U1_un44_data_14(3)
    );
  U1_un44_data_13_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      IA => U1_un44_data_10(3),
      IB => U1_un44_data_13(3),
      SEL => U1_un44_data_13_3_BYINV_44,
      O => U1_un44_data_13_3_F6MUX_43
    );
  U1_un44_data_13_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_3_BYINV_44
    );
  U1_un44_data_13_6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X0Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_6_F5MUX_45,
      O => U1_un44_data_13(6)
    );
  U1_un44_data_13_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y10"
    )
    port map (
      IA => U1_un44_data_13_am(6),
      IB => U1_un44_data_13_bm(6),
      SEL => U1_un44_data_13_6_BXINV_46,
      O => U1_un44_data_13_6_F5MUX_45
    );
  U1_un44_data_13_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_6_BXINV_46
    );
  U1_un44_data_13_6_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_6_F6MUX_47,
      O => U1_un44_data_14(6)
    );
  U1_un44_data_13_6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y10"
    )
    port map (
      IA => U1_un44_data_10(6),
      IB => U1_un44_data_13(6),
      SEL => U1_un44_data_13_6_BYINV_48,
      O => U1_un44_data_13_6_F6MUX_47
    );
  U1_un44_data_13_6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_6_BYINV_48
    );
  U1_un44_data_13_am_6_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X0Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_11(6),
      ADR2 => U1_ram_3(6),
      ADR3 => ADD(3),
      O => U1_un44_data_13_am(6)
    );
  un44_data_15_6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_6_F5MUX_49,
      O => U1_un44_data_10(6)
    );
  un44_data_15_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y11"
    )
    port map (
      IA => U1_un44_data_10_am(6),
      IB => U1_un44_data_10_bm(6),
      SEL => un44_data_15_6_BXINV_50,
      O => un44_data_15_6_F5MUX_49
    );
  un44_data_15_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_6_BXINV_50
    );
  un44_data_15_6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y11"
    )
    port map (
      IA => U1_un44_data_7(6),
      IB => U1_un44_data_14(6),
      SEL => un44_data_15_6_BYINV_52,
      O => un44_data_15_6_F6MUX_51
    );
  un44_data_15_6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_6_BYINV_52
    );
  U1_un44_data_10_am_6_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X0Y11"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_9(6),
      ADR2 => VCC,
      ADR3 => U1_ram_1(6),
      O => U1_un44_data_10_am(6)
    );
  U1_un44_data_6_6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_6_F5MUX_53,
      O => U1_un44_data_6(6)
    );
  U1_un44_data_6_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y10"
    )
    port map (
      IA => U1_un44_data_6_am(6),
      IB => U1_un44_data_6_bm(6),
      SEL => U1_un44_data_6_6_BXINV_54,
      O => U1_un44_data_6_6_F5MUX_53
    );
  U1_un44_data_6_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_6_BXINV_54
    );
  U1_un44_data_6_6_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_6_F6MUX_55,
      O => U1_un44_data_7(6)
    );
  U1_un44_data_6_6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y10"
    )
    port map (
      IA => U1_un44_data_3(6),
      IB => U1_un44_data_6(6),
      SEL => U1_un44_data_6_6_BYINV_56,
      O => U1_un44_data_6_6_F6MUX_55
    );
  U1_un44_data_6_6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_6_BYINV_56
    );
  U1_un44_data_6_am_6_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X1Y10"
    )
    port map (
      ADR0 => U1_ram_2(6),
      ADR1 => VCC,
      ADR2 => U1_ram_10(6),
      ADR3 => ADD(3),
      O => U1_un44_data_6_am(6)
    );
  U1_un44_data_3_6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_6_F5MUX_57,
      O => U1_un44_data_3(6)
    );
  U1_un44_data_3_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y11"
    )
    port map (
      IA => U1_un44_data_3_am(6),
      IB => U1_un44_data_3_bm(6),
      SEL => U1_un44_data_3_6_BXINV_58,
      O => U1_un44_data_3_6_F5MUX_57
    );
  U1_un44_data_3_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_6_BXINV_58
    );
  U1_un44_data_13_7_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_7_F5MUX_59,
      O => U1_un44_data_13(7)
    );
  U1_un44_data_13_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y12"
    )
    port map (
      IA => U1_un44_data_13_am(7),
      IB => U1_un44_data_13_bm(7),
      SEL => U1_un44_data_13_7_BXINV_60,
      O => U1_un44_data_13_7_F5MUX_59
    );
  U1_un44_data_13_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_7_BXINV_60
    );
  U1_un44_data_13_7_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_7_F6MUX_61,
      O => U1_un44_data_14(7)
    );
  U1_un44_data_13_7_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y12"
    )
    port map (
      IA => U1_un44_data_10(7),
      IB => U1_un44_data_13(7),
      SEL => U1_un44_data_13_7_BYINV_62,
      O => U1_un44_data_13_7_F6MUX_61
    );
  U1_un44_data_13_7_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_7_BYINV_62
    );
  U1_un44_data_13_am_7_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_11(7),
      ADR2 => U1_ram_3(7),
      ADR3 => ADD(3),
      O => U1_un44_data_13_am(7)
    );
  un44_data_15_7_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_7_F5MUX_63,
      O => U1_un44_data_10(7)
    );
  un44_data_15_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y13"
    )
    port map (
      IA => U1_un44_data_10_am(7),
      IB => U1_un44_data_10_bm(7),
      SEL => un44_data_15_7_BXINV_64,
      O => un44_data_15_7_F5MUX_63
    );
  un44_data_15_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_7_BXINV_64
    );
  un44_data_15_7_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y13"
    )
    port map (
      IA => U1_un44_data_7(7),
      IB => U1_un44_data_14(7),
      SEL => un44_data_15_7_BYINV_66,
      O => un44_data_15_7_F6MUX_65
    );
  un44_data_15_7_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_7_BYINV_66
    );
  U1_un44_data_10_am_7_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_9(7),
      ADR2 => VCC,
      ADR3 => U1_ram_1(7),
      O => U1_un44_data_10_am(7)
    );
  U1_un44_data_6_7_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_7_F5MUX_67,
      O => U1_un44_data_6(7)
    );
  U1_un44_data_6_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      IA => U1_un44_data_6_am(7),
      IB => U1_un44_data_6_bm(7),
      SEL => U1_un44_data_6_7_BXINV_68,
      O => U1_un44_data_6_7_F5MUX_67
    );
  U1_un44_data_6_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_7_BXINV_68
    );
  U1_un44_data_6_7_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_7_F6MUX_69,
      O => U1_un44_data_7(7)
    );
  U1_un44_data_6_7_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      IA => U1_un44_data_3(7),
      IB => U1_un44_data_6(7),
      SEL => U1_un44_data_6_7_BYINV_70,
      O => U1_un44_data_6_7_F6MUX_69
    );
  U1_un44_data_6_7_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_7_BYINV_70
    );
  U1_un44_data_6_am_7_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => U1_ram_2(7),
      ADR1 => U1_ram_10(7),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_6_am(7)
    );
  U1_un44_data_3_7_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_7_F5MUX_71,
      O => U1_un44_data_3(7)
    );
  U1_un44_data_3_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      IA => U1_un44_data_3_am(7),
      IB => U1_un44_data_3_bm(7),
      SEL => U1_un44_data_3_7_BXINV_72,
      O => U1_un44_data_3_7_F5MUX_71
    );
  U1_un44_data_3_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_7_BXINV_72
    );
  U1_un44_data_13_0_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_0_F5MUX_73,
      O => U1_un44_data_13(0)
    );
  U1_un44_data_13_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X4Y8"
    )
    port map (
      IA => U1_un44_data_13_am(0),
      IB => U1_un44_data_13_bm(0),
      SEL => U1_un44_data_13_0_BXINV_74,
      O => U1_un44_data_13_0_F5MUX_73
    );
  U1_un44_data_13_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_0_BXINV_74
    );
  U1_un44_data_13_0_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_0_F6MUX_75,
      O => U1_un44_data_14(0)
    );
  U1_un44_data_13_0_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X4Y8"
    )
    port map (
      IA => U1_un44_data_10(0),
      IB => U1_un44_data_13(0),
      SEL => U1_un44_data_13_0_BYINV_76,
      O => U1_un44_data_13_0_F6MUX_75
    );
  U1_un44_data_13_0_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_0_BYINV_76
    );
  U1_un44_data_13_am_0_Q : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X4Y8"
    )
    port map (
      ADR0 => U1_ram_3(0),
      ADR1 => U1_ram_11(0),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_13_am(0)
    );
  un44_data_15_0_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X4Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_0_F5MUX_77,
      O => U1_un44_data_10(0)
    );
  un44_data_15_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X4Y9"
    )
    port map (
      IA => U1_un44_data_10_am(0),
      IB => U1_un44_data_10_bm(0),
      SEL => un44_data_15_0_BXINV_78,
      O => un44_data_15_0_F5MUX_77
    );
  un44_data_15_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_0_BXINV_78
    );
  un44_data_15_0_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X4Y9"
    )
    port map (
      IA => U1_un44_data_7(0),
      IB => U1_un44_data_14(0),
      SEL => un44_data_15_0_BYINV_80,
      O => un44_data_15_0_F6MUX_79
    );
  un44_data_15_0_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_0_BYINV_80
    );
  U1_un44_data_10_am_0_Q : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X4Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ADD(3),
      ADR2 => U1_ram_9(0),
      ADR3 => U1_ram_1(0),
      O => U1_un44_data_10_am(0)
    );
  U1_un44_data_6_0_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X5Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_0_F5MUX_81,
      O => U1_un44_data_6(0)
    );
  U1_un44_data_6_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X5Y8"
    )
    port map (
      IA => U1_un44_data_6_am(0),
      IB => U1_un44_data_6_bm(0),
      SEL => U1_un44_data_6_0_BXINV_82,
      O => U1_un44_data_6_0_F5MUX_81
    );
  U1_un44_data_6_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_0_BXINV_82
    );
  U1_un44_data_6_0_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_0_F6MUX_83,
      O => U1_un44_data_7(0)
    );
  U1_un44_data_6_0_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X5Y8"
    )
    port map (
      IA => U1_un44_data_3(0),
      IB => U1_un44_data_6(0),
      SEL => U1_un44_data_6_0_BYINV_84,
      O => U1_un44_data_6_0_F6MUX_83
    );
  U1_un44_data_6_0_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_0_BYINV_84
    );
  U1_un44_data_6_am_0_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X5Y8"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_2(0),
      ADR2 => U1_ram_10(0),
      ADR3 => VCC,
      O => U1_un44_data_6_am(0)
    );
  U1_un44_data_3_0_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X5Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_0_F5MUX_85,
      O => U1_un44_data_3(0)
    );
  U1_un44_data_3_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X5Y9"
    )
    port map (
      IA => U1_un44_data_3_am(0),
      IB => U1_un44_data_3_bm(0),
      SEL => U1_un44_data_3_0_BXINV_86,
      O => U1_un44_data_3_0_F5MUX_85
    );
  U1_un44_data_3_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_0_BXINV_86
    );
  U1_un44_data_13_am_3_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X14Y8"
    )
    port map (
      ADR0 => U1_ram_3(3),
      ADR1 => U1_ram_11(3),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_13_am(3)
    );
  un44_data_15_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_3_F5MUX_87,
      O => U1_un44_data_10(3)
    );
  un44_data_15_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y9"
    )
    port map (
      IA => U1_un44_data_10_am(3),
      IB => U1_un44_data_10_bm(3),
      SEL => un44_data_15_3_BXINV_88,
      O => un44_data_15_3_F5MUX_87
    );
  un44_data_15_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_3_BXINV_88
    );
  un44_data_15_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y9"
    )
    port map (
      IA => U1_un44_data_7(3),
      IB => U1_un44_data_14(3),
      SEL => un44_data_15_3_BYINV_90,
      O => un44_data_15_3_F6MUX_89
    );
  un44_data_15_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_3_BYINV_90
    );
  U1_un44_data_10_am_3_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => U1_ram_1(3),
      ADR1 => ADD(3),
      ADR2 => U1_ram_9(3),
      ADR3 => VCC,
      O => U1_un44_data_10_am(3)
    );
  U1_un44_data_6_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_3_F5MUX_91,
      O => U1_un44_data_6(3)
    );
  U1_un44_data_6_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y8"
    )
    port map (
      IA => U1_un44_data_6_am(3),
      IB => U1_un44_data_6_bm(3),
      SEL => U1_un44_data_6_3_BXINV_92,
      O => U1_un44_data_6_3_F5MUX_91
    );
  U1_un44_data_6_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_3_BXINV_92
    );
  U1_un44_data_6_3_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_3_F6MUX_93,
      O => U1_un44_data_7(3)
    );
  U1_un44_data_6_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y8"
    )
    port map (
      IA => U1_un44_data_3(3),
      IB => U1_un44_data_6(3),
      SEL => U1_un44_data_6_3_BYINV_94,
      O => U1_un44_data_6_3_F6MUX_93
    );
  U1_un44_data_6_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_3_BYINV_94
    );
  U1_un44_data_6_am_3_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X15Y8"
    )
    port map (
      ADR0 => U1_ram_2(3),
      ADR1 => VCC,
      ADR2 => U1_ram_10(3),
      ADR3 => ADD(3),
      O => U1_un44_data_6_am(3)
    );
  U1_un44_data_3_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_3_F5MUX_95,
      O => U1_un44_data_3(3)
    );
  U1_un44_data_3_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y9"
    )
    port map (
      IA => U1_un44_data_3_am(3),
      IB => U1_un44_data_3_bm(3),
      SEL => U1_un44_data_3_3_BXINV_96,
      O => U1_un44_data_3_3_F5MUX_95
    );
  U1_un44_data_3_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_3_BXINV_96
    );
  U1_un44_data_13_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_4_F5MUX_97,
      O => U1_un44_data_13(4)
    );
  U1_un44_data_13_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y6"
    )
    port map (
      IA => U1_un44_data_13_am(4),
      IB => U1_un44_data_13_bm(4),
      SEL => U1_un44_data_13_4_BXINV_98,
      O => U1_un44_data_13_4_F5MUX_97
    );
  U1_un44_data_13_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_4_BXINV_98
    );
  U1_un44_data_13_4_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_4_F6MUX_99,
      O => U1_un44_data_14(4)
    );
  U1_un44_data_13_4_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y6"
    )
    port map (
      IA => U1_un44_data_10(4),
      IB => U1_un44_data_13(4),
      SEL => U1_un44_data_13_4_BYINV_100,
      O => U1_un44_data_13_4_F6MUX_99
    );
  U1_un44_data_13_4_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_4_BYINV_100
    );
  U1_un44_data_13_am_4_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X8Y6"
    )
    port map (
      ADR0 => U1_ram_11(4),
      ADR1 => U1_ram_3(4),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_13_am(4)
    );
  un44_data_15_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_4_F5MUX_101,
      O => U1_un44_data_10(4)
    );
  un44_data_15_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y7"
    )
    port map (
      IA => U1_un44_data_10_am(4),
      IB => U1_un44_data_10_bm(4),
      SEL => un44_data_15_4_BXINV_102,
      O => un44_data_15_4_F5MUX_101
    );
  un44_data_15_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_4_BXINV_102
    );
  un44_data_15_4_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y7"
    )
    port map (
      IA => U1_un44_data_7(4),
      IB => U1_un44_data_14(4),
      SEL => un44_data_15_4_BYINV_104,
      O => un44_data_15_4_F6MUX_103
    );
  un44_data_15_4_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_4_BYINV_104
    );
  U1_un44_data_10_am_4_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X8Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_1(4),
      ADR2 => ADD(3),
      ADR3 => U1_ram_9(4),
      O => U1_un44_data_10_am(4)
    );
  U1_un44_data_6_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X9Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_4_F5MUX_105,
      O => U1_un44_data_6(4)
    );
  U1_un44_data_6_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y6"
    )
    port map (
      IA => U1_un44_data_6_am(4),
      IB => U1_un44_data_6_bm(4),
      SEL => U1_un44_data_6_4_BXINV_106,
      O => U1_un44_data_6_4_F5MUX_105
    );
  U1_un44_data_6_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_4_BXINV_106
    );
  U1_un44_data_6_4_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_4_F6MUX_107,
      O => U1_un44_data_7(4)
    );
  U1_un44_data_6_4_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y6"
    )
    port map (
      IA => U1_un44_data_3(4),
      IB => U1_un44_data_6(4),
      SEL => U1_un44_data_6_4_BYINV_108,
      O => U1_un44_data_6_4_F6MUX_107
    );
  U1_un44_data_6_4_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_4_BYINV_108
    );
  U1_un44_data_6_am_4_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X9Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_2(4),
      ADR2 => ADD(3),
      ADR3 => U1_ram_10(4),
      O => U1_un44_data_6_am(4)
    );
  U1_un44_data_3_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X9Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_4_F5MUX_109,
      O => U1_un44_data_3(4)
    );
  U1_un44_data_3_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y7"
    )
    port map (
      IA => U1_un44_data_3_am(4),
      IB => U1_un44_data_3_bm(4),
      SEL => U1_un44_data_3_4_BXINV_110,
      O => U1_un44_data_3_4_F5MUX_109
    );
  U1_un44_data_3_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_4_BXINV_110
    );
  U1_un44_data_13_5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_5_F5MUX_111,
      O => U1_un44_data_13(5)
    );
  U1_un44_data_13_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y4"
    )
    port map (
      IA => U1_un44_data_13_am(5),
      IB => U1_un44_data_13_bm(5),
      SEL => U1_un44_data_13_5_BXINV_112,
      O => U1_un44_data_13_5_F5MUX_111
    );
  U1_un44_data_13_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_5_BXINV_112
    );
  U1_un44_data_13_5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_5_F6MUX_113,
      O => U1_un44_data_14(5)
    );
  U1_un44_data_13_5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y4"
    )
    port map (
      IA => U1_un44_data_10(5),
      IB => U1_un44_data_13(5),
      SEL => U1_un44_data_13_5_BYINV_114,
      O => U1_un44_data_13_5_F6MUX_113
    );
  U1_un44_data_13_5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_5_BYINV_114
    );
  U1_un44_data_13_am_5_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X8Y4"
    )
    port map (
      ADR0 => U1_ram_11(5),
      ADR1 => U1_ram_3(5),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_13_am(5)
    );
  un44_data_15_5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_5_F5MUX_115,
      O => U1_un44_data_10(5)
    );
  un44_data_15_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y5"
    )
    port map (
      IA => U1_un44_data_10_am(5),
      IB => U1_un44_data_10_bm(5),
      SEL => un44_data_15_5_BXINV_116,
      O => un44_data_15_5_F5MUX_115
    );
  un44_data_15_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_5_BXINV_116
    );
  un44_data_15_5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y5"
    )
    port map (
      IA => U1_un44_data_7(5),
      IB => U1_un44_data_14(5),
      SEL => un44_data_15_5_BYINV_118,
      O => un44_data_15_5_F6MUX_117
    );
  un44_data_15_5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_5_BYINV_118
    );
  U1_un44_data_10_am_5_Q : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X8Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ADD(3),
      ADR2 => U1_ram_1(5),
      ADR3 => U1_ram_9(5),
      O => U1_un44_data_10_am(5)
    );
  U1_un44_data_6_5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X9Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_5_F5MUX_119,
      O => U1_un44_data_6(5)
    );
  U1_un44_data_6_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y4"
    )
    port map (
      IA => U1_un44_data_6_am(5),
      IB => U1_un44_data_6_bm(5),
      SEL => U1_un44_data_6_5_BXINV_120,
      O => U1_un44_data_6_5_F5MUX_119
    );
  U1_un44_data_6_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_5_BXINV_120
    );
  U1_un44_data_6_5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_5_F6MUX_121,
      O => U1_un44_data_7(5)
    );
  U1_un44_data_6_5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y4"
    )
    port map (
      IA => U1_un44_data_3(5),
      IB => U1_un44_data_6(5),
      SEL => U1_un44_data_6_5_BYINV_122,
      O => U1_un44_data_6_5_F6MUX_121
    );
  U1_un44_data_6_5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_5_BYINV_122
    );
  U1_un44_data_6_am_5_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X9Y4"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_2(5),
      ADR3 => U1_ram_10(5),
      O => U1_un44_data_6_am(5)
    );
  U1_un44_data_3_5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X9Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_5_F5MUX_123,
      O => U1_un44_data_3(5)
    );
  U1_un44_data_3_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y5"
    )
    port map (
      IA => U1_un44_data_3_am(5),
      IB => U1_un44_data_3_bm(5),
      SEL => U1_un44_data_3_5_BXINV_124,
      O => U1_un44_data_3_5_F5MUX_123
    );
  U1_un44_data_3_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_5_BXINV_124
    );
  nCS_obuf : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => nCS_O,
      O => nCS
    );
  PORT0_iobuf_2_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => PORT0_2_O,
      CTL => PORT0_2_T,
      O => PORT0(2)
    );
  PORT0_iobuf_2_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(2),
      O => PORT0_2_INBUF
    );
  PORT0_2_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_2_INBUF,
      O => PORT0_2_IFF_IFFDMUX_125
    );
  PORT0_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_2_INBUF,
      O => PORT0_in(2)
    );
  PORT0_2_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_2_IFF_ICLK2INVNOT
    );
  PORT0_2_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE_c,
      O => PORT0_2_IFF_ICLK1INVNOT
    );
  U0_OUTP_2_Q : X_LATCHE
    generic map(
      LOC => "PAD38",
      INIT => '0'
    )
    port map (
      I => PORT0_2_IFF_IFFDMUX_125,
      GE => VCC,
      CLK => NlwInverterSignal_U0_OUTP_2_CLK,
      SET => GND,
      RST => GND,
      O => ADD(2)
    );
  ADDRESS_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => ADDRESS_0_O,
      O => ADDRESS(0)
    );
  PORT0_iobuf_3_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD36"
    )
    port map (
      I => PORT0_3_O,
      CTL => PORT0_3_T,
      O => PORT0(3)
    );
  PORT0_iobuf_3_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(3),
      O => PORT0_3_INBUF
    );
  PORT0_3_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_3_INBUF,
      O => PORT0_3_IFF_IFFDMUX_126
    );
  PORT0_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_3_INBUF,
      O => PORT0_in(3)
    );
  PORT0_3_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_3_IFF_ICLK2INVNOT
    );
  PORT0_3_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE_c,
      O => PORT0_3_IFF_ICLK1INVNOT
    );
  U0_OUTP_3_Q : X_LATCHE
    generic map(
      LOC => "PAD36",
      INIT => '0'
    )
    port map (
      I => PORT0_3_IFF_IFFDMUX_126,
      GE => VCC,
      CLK => NlwInverterSignal_U0_OUTP_3_CLK,
      SET => GND,
      RST => GND,
      O => ADD(3)
    );
  ADDRESS_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => ADDRESS_1_O,
      O => ADDRESS(1)
    );
  PORT0_iobuf_4_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => PORT0_4_O,
      CTL => PORT0_4_T,
      O => PORT0(4)
    );
  PORT0_iobuf_4_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(4),
      O => PORT0_4_INBUF
    );
  PORT0_4_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_4_INBUF,
      O => PORT0_4_IFF_IFFDMUX_127
    );
  PORT0_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_4_INBUF,
      O => PORT0_in(4)
    );
  PORT0_4_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_4_IFF_ICLK2INVNOT
    );
  PORT0_4_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE_c,
      O => PORT0_4_IFF_ICLK1INVNOT
    );
  U0_OUTP_4_Q : X_LATCHE
    generic map(
      LOC => "PAD62",
      INIT => '0'
    )
    port map (
      I => PORT0_4_IFF_IFFDMUX_127,
      GE => VCC,
      CLK => NlwInverterSignal_U0_OUTP_4_CLK,
      SET => GND,
      RST => GND,
      O => ADD(4)
    );
  PORT1_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => PORT1_0_O,
      O => PORT1(0)
    );
  ADDRESS_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => ADDRESS_2_O,
      O => ADDRESS(2)
    );
  PORT0_iobuf_5_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => PORT0_5_O,
      CTL => PORT0_5_T,
      O => PORT0(5)
    );
  PORT0_iobuf_5_IBUF : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(5),
      O => PORT0_5_INBUF
    );
  PORT0_5_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_5_INBUF,
      O => PORT0_5_IFF_IFFDMUX_128
    );
  PORT0_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_5_INBUF,
      O => PORT0_in(5)
    );
  PORT0_5_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_0,
      O => PORT0_5_IFF_ICLK2INVNOT
    );
  PORT0_5_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_5_IFF_ICLK1INVNOT
    );
  U1_ram_11_5_Q : X_LATCHE
    generic map(
      LOC => "PAD60",
      INIT => '0'
    )
    port map (
      I => PORT0_5_IFF_IFFDMUX_128,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(5)
    );
  PORT1_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => PORT1_1_O,
      O => PORT1(1)
    );
  ADDRESS_obuf_3_Q : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => ADDRESS_3_O,
      O => ADDRESS(3)
    );
  PORT0_iobuf_6_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => PORT0_6_O,
      CTL => PORT0_6_T,
      O => PORT0(6)
    );
  PORT0_iobuf_6_IBUF : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(6),
      O => PORT0_6_INBUF
    );
  PORT0_6_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_6_INBUF,
      O => PORT0_6_IFF_IFFDMUX_129
    );
  PORT0_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_6_INBUF,
      O => PORT0_in(6)
    );
  PORT0_6_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_0,
      O => PORT0_6_IFF_ICLK2INVNOT
    );
  PORT0_6_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_6_IFF_ICLK1INVNOT
    );
  U1_ram_11_6_Q : X_LATCHE
    generic map(
      LOC => "PAD90",
      INIT => '0'
    )
    port map (
      I => PORT0_6_IFF_IFFDMUX_129,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(6)
    );
  PORT1_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => PORT1_2_O,
      O => PORT1(2)
    );
  ADDRESS_obuf_4_Q : X_OBUF
    generic map(
      LOC => "PAD66"
    )
    port map (
      I => ADDRESS_4_O,
      O => ADDRESS(4)
    );
  nWRS_ibuf_IBUFG : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS,
      O => nWRS_INBUF
    );
  PORT0_7_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_7_IFF_ICLK1INVNOT
    );
  PORT0_7_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_0,
      O => PORT0_7_IFF_ICLK2INVNOT
    );
  PORT0_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_7_INBUF,
      O => PORT0_in(7)
    );
  PORT0_7_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_7_INBUF,
      O => PORT0_7_IFF_IFFDMUX_130
    );
  PORT0_iobuf_7_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => PORT0_7_O,
      CTL => PORT0_7_T,
      O => PORT0(7)
    );
  PORT0_iobuf_7_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(7),
      O => PORT0_7_INBUF
    );
  U1_ram_11_7_Q : X_LATCHE
    generic map(
      LOC => "PAD91",
      INIT => '0'
    )
    port map (
      I => PORT0_7_IFF_IFFDMUX_130,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(7)
    );
  U1_ram_9_7_Q : X_LATCHE
    generic map(
      LOC => "PAD91",
      INIT => '0'
    )
    port map (
      I => PORT0_7_IFF_IFFDMUX_130,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(7)
    );
  PORT1_obuf_3_Q : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => PORT1_3_O,
      O => PORT1(3)
    );
  U1_un44_data_13_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_1_F5MUX_131,
      O => U1_un44_data_13(1)
    );
  U1_un44_data_13_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => U1_un44_data_13_am(1),
      IB => U1_un44_data_13_bm(1),
      SEL => U1_un44_data_13_1_BXINV_132,
      O => U1_un44_data_13_1_F5MUX_131
    );
  U1_un44_data_13_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_13_1_BXINV_132
    );
  U1_un44_data_13_1_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_13_1_F6MUX_133,
      O => U1_un44_data_14(1)
    );
  U1_un44_data_13_1_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => U1_un44_data_10(1),
      IB => U1_un44_data_13(1),
      SEL => U1_un44_data_13_1_BYINV_134,
      O => U1_un44_data_13_1_F6MUX_133
    );
  U1_un44_data_13_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_13_1_BYINV_134
    );
  U1_un44_data_13_am_1_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X6Y6"
    )
    port map (
      ADR0 => U1_ram_11(1),
      ADR1 => VCC,
      ADR2 => ADD(3),
      ADR3 => U1_ram_3(1),
      O => U1_un44_data_13_am(1)
    );
  un44_data_15_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_1_F5MUX_135,
      O => U1_un44_data_10(1)
    );
  un44_data_15_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y7"
    )
    port map (
      IA => U1_un44_data_10_am(1),
      IB => U1_un44_data_10_bm(1),
      SEL => un44_data_15_1_BXINV_136,
      O => un44_data_15_1_F5MUX_135
    );
  un44_data_15_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => un44_data_15_1_BXINV_136
    );
  un44_data_15_1_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y7"
    )
    port map (
      IA => U1_un44_data_7(1),
      IB => U1_un44_data_14(1),
      SEL => un44_data_15_1_BYINV_138,
      O => un44_data_15_1_F6MUX_137
    );
  un44_data_15_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => un44_data_15_1_BYINV_138
    );
  U1_un44_data_10_am_1_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X6Y7"
    )
    port map (
      ADR0 => U1_ram_1(1),
      ADR1 => ADD(3),
      ADR2 => VCC,
      ADR3 => U1_ram_9(1),
      O => U1_un44_data_10_am(1)
    );
  U1_un44_data_6_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_1_F5MUX_139,
      O => U1_un44_data_6(1)
    );
  U1_un44_data_6_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y6"
    )
    port map (
      IA => U1_un44_data_6_am(1),
      IB => U1_un44_data_6_bm(1),
      SEL => U1_un44_data_6_1_BXINV_140,
      O => U1_un44_data_6_1_F5MUX_139
    );
  U1_un44_data_6_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_6_1_BXINV_140
    );
  U1_un44_data_6_1_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_6_1_F6MUX_141,
      O => U1_un44_data_7(1)
    );
  U1_un44_data_6_1_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y6"
    )
    port map (
      IA => U1_un44_data_3(1),
      IB => U1_un44_data_6(1),
      SEL => U1_un44_data_6_1_BYINV_142,
      O => U1_un44_data_6_1_F6MUX_141
    );
  U1_un44_data_6_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => U1_un44_data_6_1_BYINV_142
    );
  U1_un44_data_6_am_1_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X7Y6"
    )
    port map (
      ADR0 => U1_ram_10(1),
      ADR1 => ADD(3),
      ADR2 => U1_ram_2(1),
      ADR3 => VCC,
      O => U1_un44_data_6_am(1)
    );
  U1_un44_data_3_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un44_data_3_1_F5MUX_143,
      O => U1_un44_data_3(1)
    );
  U1_un44_data_3_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y7"
    )
    port map (
      IA => U1_un44_data_3_am(1),
      IB => U1_un44_data_3_bm(1),
      SEL => U1_un44_data_3_1_BXINV_144,
      O => U1_un44_data_3_1_F5MUX_143
    );
  U1_un44_data_3_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => U1_un44_data_3_1_BXINV_144
    );
  U2_TXD_2_u_i_m2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_TXD_2_u_i_m2_F5MUX_145,
      O => U2_TXD_2_4_i_m2
    );
  U2_TXD_2_u_i_m2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y0"
    )
    port map (
      IA => U2_TXD_2_4_i_m2_am,
      IB => U2_TXD_2_4_i_m2_bm,
      SEL => U2_TXD_2_u_i_m2_BXINV_146,
      O => U2_TXD_2_u_i_m2_F5MUX_145
    );
  U2_TXD_2_u_i_m2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_cnt(1),
      O => U2_TXD_2_u_i_m2_BXINV_146
    );
  U2_TXD_2_u_i_m2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y0"
    )
    port map (
      IA => U2_TXD_2_u_i_m4,
      IB => U2_TXD_2_4_i_m2,
      SEL => U2_TXD_2_u_i_m2_BYINV_148,
      O => U2_TXD_2_u_i_m2_F6MUX_147
    );
  U2_TXD_2_u_i_m2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_cnt(2),
      O => U2_TXD_2_u_i_m2_BYINV_148
    );
  U2_read_TXD_2_4_i_m2_am : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_REG(1),
      ADR2 => U2_cnt(0),
      ADR3 => U2_REG(5),
      O => U2_TXD_2_4_i_m2_am
    );
  U2_TXD_2_u_i_m4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_TXD_2_u_i_m4_F5MUX_149,
      O => U2_TXD_2_u_i_m4
    );
  U2_TXD_2_u_i_m4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      IA => U2_TXD_2_u_i_m4_am,
      IB => U2_TXD_2_u_i_m4_bm,
      SEL => U2_TXD_2_u_i_m4_BXINV_150,
      O => U2_TXD_2_u_i_m4_F5MUX_149
    );
  U2_TXD_2_u_i_m4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_cnt(0),
      O => U2_TXD_2_u_i_m4_BXINV_150
    );
  PORT3_IN_ibuf_2_Q : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN(2),
      O => PORT3_IN_2_INBUF
    );
  PORT3_IN_ibuf_3_Q : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN(3),
      O => PORT3_IN_3_INBUF
    );
  PORT3_IN_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_3_INBUF,
      O => PORT3_IN_c_3_Q
    );
  PORT3_IN_ibuf_4_Q : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN(4),
      O => PORT3_IN_4_INBUF
    );
  PORT3_IN_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_4_INBUF,
      O => PORT3_IN_c_4_Q
    );
  BUSY_obuf : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => BUSY_O,
      O => BUSY
    );
  CTR_obuf : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => CTR_O,
      O => CTR
    );
  INTA_ibuf : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 605 ps
    )
    port map (
      I => INTA,
      O => INTA_INBUF
    );
  PORT0_iobuf_0_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => PORT0_0_O,
      CTL => PORT0_0_T,
      O => PORT0(0)
    );
  PORT0_iobuf_0_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(0),
      O => PORT0_0_INBUF
    );
  PORT0_0_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_0_INBUF,
      O => PORT0_0_IFF_IFFDMUX_151
    );
  PORT0_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_0_INBUF,
      O => PORT0_in(0)
    );
  PORT0_0_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_0_IFF_ICLK2INVNOT
    );
  PORT0_0_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE_c,
      O => PORT0_0_IFF_ICLK1INVNOT
    );
  U0_OUTP_0_Q : X_LATCHE
    generic map(
      LOC => "PAD85",
      INIT => '0'
    )
    port map (
      I => PORT0_0_IFF_IFFDMUX_151,
      GE => VCC,
      CLK => NlwInverterSignal_U0_OUTP_0_CLK,
      SET => GND,
      RST => GND,
      O => ADD(0)
    );
  PORT0_iobuf_1_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => PORT0_1_O,
      CTL => PORT0_1_T,
      O => PORT0(1)
    );
  PORT0_iobuf_1_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0(1),
      O => PORT0_1_INBUF
    );
  PORT0_1_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_1_INBUF,
      O => PORT0_1_IFF_IFFDMUX_152
    );
  PORT0_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_1_INBUF,
      O => PORT0_in(1)
    );
  PORT0_1_IFF_ICLK2INV : X_INV
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_0,
      O => PORT0_1_IFF_ICLK2INVNOT
    );
  PORT0_1_IFF_ICLK1INV : X_INV
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE_c,
      O => PORT0_1_IFF_ICLK1INVNOT
    );
  U0_OUTP_1_Q : X_LATCHE
    generic map(
      LOC => "PAD61",
      INIT => '0'
    )
    port map (
      I => PORT0_1_IFF_IFFDMUX_152,
      GE => VCC,
      CLK => NlwInverterSignal_U0_OUTP_1_CLK,
      SET => GND,
      RST => GND,
      O => ADD(1)
    );
  PORT3_OUT_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => PORT3_OUT_0_O,
      O => PORT3_OUT(0)
    );
  PORT3_OUT_0_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD55",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_c_0_Q,
      O => PORT3_OUT_0_OUTPUT_OTCLK1INVNOT
    );
  nRD_obuf : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => nRD_O,
      O => nRD
    );
  PORT3_OUT_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => PORT3_OUT_1_O,
      O => PORT3_OUT(1)
    );
  CODE_ibuf_0_Q : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE(0),
      O => CODE_0_INBUF
    );
  PORT3_OUT_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => PORT3_OUT_2_O,
      O => PORT3_OUT(2)
    );
  PORT3_OUT_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => PORT3_OUT_2_OUTPUT_OTCLK1INV_153
    );
  CODE_ibuf_1_Q : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE(1),
      O => CODE_1_INBUF
    );
  CODE_ibuf_2_Q : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE(2),
      O => CODE_2_INBUF
    );
  CODE_ibuf_3_Q : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE(3),
      O => CODE_3_INBUF
    );
  PORT2_ibuf_6_Q : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT2(6),
      O => PORT2_6_INBUF
    );
  ALE_ibuf_IBUFG : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE,
      O => ALE_INBUF
    );
  PORT2_ibuf_7_Q : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT2(7),
      O => PORT2_7_INBUF
    );
  PORT2_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT2_7_INBUF,
      O => PORT2_c(7)
    );
  DATAS_ibuf_0_Q : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(0),
      O => DATAS_0_INBUF
    );
  DATAS_0_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_0_INBUF,
      O => DATAS_0_IFF_IFFDMUX_155
    );
  DATAS_0_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_0_IFF_ICLK1INV_154
    );
  DATAS_0_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD50",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_0_IFF_ICEINVNOT
    );
  U2_REG_0_Q : X_FF
    generic map(
      LOC => "PAD50",
      INIT => '0'
    )
    port map (
      I => DATAS_0_IFF_IFFDMUX_155,
      CE => DATAS_0_IFF_ICEINVNOT,
      CLK => DATAS_0_IFF_ICLK1INV_154,
      SET => GND,
      RST => DATAS_0_IFF_IFF1_RSTAND_156,
      O => U2_REG(0)
    );
  DATAS_0_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_0_IFF_IFF1_RSTAND_156
    );
  DATAS_ibuf_1_Q : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(1),
      O => DATAS_1_INBUF
    );
  DATAS_1_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_1_INBUF,
      O => DATAS_1_IFF_IFFDMUX_158
    );
  DATAS_1_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_1_IFF_ICLK1INV_157
    );
  DATAS_1_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD63",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_1_IFF_ICEINVNOT
    );
  U2_REG_1_Q : X_FF
    generic map(
      LOC => "PAD63",
      INIT => '0'
    )
    port map (
      I => DATAS_1_IFF_IFFDMUX_158,
      CE => DATAS_1_IFF_ICEINVNOT,
      CLK => DATAS_1_IFF_ICLK1INV_157,
      SET => GND,
      RST => DATAS_1_IFF_IFF1_RSTAND_159,
      O => U2_REG(1)
    );
  DATAS_1_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_1_IFF_IFF1_RSTAND_159
    );
  DATAS_ibuf_2_Q : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(2),
      O => DATAS_2_INBUF
    );
  DATAS_2_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_2_INBUF,
      O => DATAS_2_IFF_IFFDMUX_161
    );
  DATAS_2_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_2_IFF_ICLK1INV_160
    );
  DATAS_2_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD56",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_2_IFF_ICEINVNOT
    );
  U2_REG_2_Q : X_FF
    generic map(
      LOC => "PAD56",
      INIT => '0'
    )
    port map (
      I => DATAS_2_IFF_IFFDMUX_161,
      CE => DATAS_2_IFF_ICEINVNOT,
      CLK => DATAS_2_IFF_ICLK1INV_160,
      SET => GND,
      RST => DATAS_2_IFF_IFF1_RSTAND_162,
      O => U2_REG(2)
    );
  DATAS_2_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_2_IFF_IFF1_RSTAND_162
    );
  DATAS_ibuf_3_Q : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(3),
      O => DATAS_3_INBUF
    );
  DATAS_3_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_3_INBUF,
      O => DATAS_3_IFF_IFFDMUX_164
    );
  DATAS_3_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_3_IFF_ICLK1INV_163
    );
  DATAS_3_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD51",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_3_IFF_ICEINVNOT
    );
  U2_REG_3_Q : X_FF
    generic map(
      LOC => "PAD51",
      INIT => '0'
    )
    port map (
      I => DATAS_3_IFF_IFFDMUX_164,
      CE => DATAS_3_IFF_ICEINVNOT,
      CLK => DATAS_3_IFF_ICLK1INV_163,
      SET => GND,
      RST => DATAS_3_IFF_IFF1_RSTAND_165,
      O => U2_REG(3)
    );
  DATAS_3_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_3_IFF_IFF1_RSTAND_165
    );
  DATAS_ibuf_4_Q : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(4),
      O => DATAS_4_INBUF
    );
  DATAS_4_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_4_INBUF,
      O => DATAS_4_IFF_IFFDMUX_167
    );
  DATAS_4_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_4_IFF_ICLK1INV_166
    );
  DATAS_4_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD53",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_4_IFF_ICEINVNOT
    );
  U2_REG_4_Q : X_FF
    generic map(
      LOC => "PAD53",
      INIT => '0'
    )
    port map (
      I => DATAS_4_IFF_IFFDMUX_167,
      CE => DATAS_4_IFF_ICEINVNOT,
      CLK => DATAS_4_IFF_ICLK1INV_166,
      SET => GND,
      RST => DATAS_4_IFF_IFF1_RSTAND_168,
      O => U2_REG(4)
    );
  DATAS_4_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_4_IFF_IFF1_RSTAND_168
    );
  nWR_obuf : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => nWR_O,
      O => nWR
    );
  DATAS_ibuf_5_Q : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(5),
      O => DATAS_5_INBUF
    );
  DATAS_5_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_5_INBUF,
      O => DATAS_5_IFF_IFFDMUX_170
    );
  DATAS_5_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_5_IFF_ICLK1INV_169
    );
  DATAS_5_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD52",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_5_IFF_ICEINVNOT
    );
  U2_REG_5_Q : X_FF
    generic map(
      LOC => "PAD52",
      INIT => '0'
    )
    port map (
      I => DATAS_5_IFF_IFFDMUX_170,
      CE => DATAS_5_IFF_ICEINVNOT,
      CLK => DATAS_5_IFF_ICLK1INV_169,
      SET => GND,
      RST => DATAS_5_IFF_IFF1_RSTAND_171,
      O => U2_REG(5)
    );
  DATAS_5_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_5_IFF_IFF1_RSTAND_171
    );
  DATAS_ibuf_6_Q : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(6),
      O => DATAS_6_INBUF
    );
  U1_ram_0_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_0_1_DXMUX_172
    );
  U1_ram_0_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_0_1_DYMUX_173
    );
  U1_ram_0_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_1_0_a2_0,
      O => U1_ram_0_1_CLKINVNOT
    );
  U1_un1_ncs_10_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_10_0_a2_174,
      O => U1_un1_ncs_10_0_a2_0
    );
  U1_un1_ncs_10_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_15_0_a2_175,
      O => U1_un1_ncs_15_0_a2_0
    );
  U1_un1_ncs_15_0_a2 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X4Y11"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(1),
      ADR2 => U1_un1_ncs_13_0_a2_1_0,
      ADR3 => ADD(0),
      O => U1_un1_ncs_15_0_a2_175
    );
  U1_un1_ncs_2_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_2_0_a2_176,
      O => U1_un1_ncs_2_0_a2_0
    );
  U1_un1_ncs_2_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_4_0_a2_177,
      O => U1_un1_ncs_4_0_a2_0
    );
  U1_un1_ncs_4_0_a2 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X6Y4"
    )
    port map (
      ADR0 => U1_un1_ncs_1_0_a2_2_1,
      ADR1 => ADD(0),
      ADR2 => ADD(2),
      ADR3 => ADD(1),
      O => U1_un1_ncs_4_0_a2_177
    );
  U1_ram_15_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_15_3_DXMUX_178
    );
  U1_ram_15_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_15_3_DYMUX_179
    );
  U1_ram_15_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_16_0_a2_0,
      O => U1_ram_15_3_CLKINVNOT
    );
  U1_ram_14_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_14_7_DXMUX_180
    );
  U1_ram_14_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_14_7_DYMUX_181
    );
  U1_ram_14_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_15_0_a2_0,
      O => U1_ram_14_7_CLKINVNOT
    );
  U1_ram_0_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_0_3_DXMUX_182
    );
  U1_ram_0_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_0_3_DYMUX_183
    );
  U1_ram_0_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_1_0_a2_0,
      O => U1_ram_0_3_CLKINVNOT
    );
  U1_un1_ncs_13_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_13_0_a2_184,
      O => U1_un1_ncs_13_0_a2_0
    );
  U1_un1_ncs_13_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_12_0_a2_185,
      O => U1_un1_ncs_12_0_a2_0
    );
  U1_un1_ncs_12_0_a2 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X4Y10"
    )
    port map (
      ADR0 => ADD(0),
      ADR1 => U1_un1_ncs_13_0_a2_1_0,
      ADR2 => ADD(1),
      ADR3 => ADD(2),
      O => U1_un1_ncs_12_0_a2_185
    );
  U1_ram_15_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_15_5_DXMUX_186
    );
  U1_ram_15_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_15_5_DYMUX_187
    );
  U1_ram_15_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_16_0_a2_0,
      O => U1_ram_15_5_CLKINVNOT
    );
  U1_ram_1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_1_1_DXMUX_188
    );
  U1_ram_1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_1_1_DYMUX_189
    );
  U1_ram_1_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X7Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_2_0_a2_0,
      O => U1_ram_1_1_CLKINVNOT
    );
  U1_ram_0_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_0_5_DXMUX_190
    );
  U1_ram_0_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_0_5_DYMUX_191
    );
  U1_ram_0_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X9Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_1_0_a2_0,
      O => U1_ram_0_5_CLKINVNOT
    );
  U1_ram_15_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_15_7_DXMUX_192
    );
  U1_ram_15_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_15_7_DYMUX_193
    );
  U1_ram_15_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_16_0_a2_0,
      O => U1_ram_15_7_CLKINVNOT
    );
  U1_ram_1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_1_3_DXMUX_194
    );
  U1_ram_1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_1_3_DYMUX_195
    );
  U1_ram_1_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_2_0_a2_0,
      O => U1_ram_1_3_CLKINVNOT
    );
  U1_ram_0_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_0_7_DXMUX_196
    );
  U1_ram_0_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_0_7_DYMUX_197
    );
  U1_ram_0_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X5Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_1_0_a2_0,
      O => U1_ram_0_7_CLKINVNOT
    );
  U1_N_181_i_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_198,
      O => U1_N_181_i_0
    );
  U1_N_181_i : X_LUT4
    generic map(
      INIT => X"FFDD",
      LOC => "SLICE_X2Y0"
    )
    port map (
      ADR0 => PORT3_IN_c_3_Q,
      ADR1 => PORT3_IN_c_4_Q,
      ADR2 => VCC,
      ADR3 => PORT2_c(7),
      O => U1_N_181_i_198
    );
  U1_ram_1_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_1_5_DXMUX_199
    );
  U1_ram_1_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_1_5_DYMUX_200
    );
  U1_ram_1_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_2_0_a2_0,
      O => U1_ram_1_5_CLKINVNOT
    );
  U1_ram_2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_2_1_DXMUX_201
    );
  U1_ram_2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_2_1_DYMUX_202
    );
  U1_ram_2_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_3_0_a2_0,
      O => U1_ram_2_1_CLKINVNOT
    );
  U2_intr_ctr_N_16_i : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X8Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BUSY_c,
      ADR2 => VCC,
      ADR3 => RESET_c,
      O => U2_N_16_i
    );
  U1_un1_ncs_16_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_16_0_a2_203,
      O => U1_un1_ncs_16_0_a2_0
    );
  U1_un1_ncs_16_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_13_0_a2_1_pack_1,
      O => U1_un1_ncs_13_0_a2_1_0
    );
  U1_un1_ncs_13_0_a2_1 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "SLICE_X3Y6"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => PORT2_c(7),
      ADR3 => PORT3_IN_c_3_Q,
      O => U1_un1_ncs_13_0_a2_1_pack_1
    );
  U1_ram_2_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_2_3_DXMUX_204
    );
  U1_ram_2_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_2_3_DYMUX_205
    );
  U1_ram_2_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_3_0_a2_0,
      O => U1_ram_2_3_CLKINVNOT
    );
  U1_ram_1_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_1_7_DXMUX_206
    );
  U1_ram_1_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_1_7_DYMUX_207
    );
  U1_ram_1_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_2_0_a2_0,
      O => U1_ram_1_7_CLKINVNOT
    );
  U1_ram_3_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_3_1_DXMUX_208
    );
  U1_ram_3_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_3_1_DYMUX_209
    );
  U1_ram_3_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_4_0_a2_0,
      O => U1_ram_3_1_CLKINVNOT
    );
  DATAS_6_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_6_INBUF,
      O => DATAS_6_IFF_IFFDMUX_211
    );
  DATAS_6_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_6_IFF_ICLK1INV_210
    );
  DATAS_6_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD57",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_6_IFF_ICEINVNOT
    );
  U2_REG_6_Q : X_FF
    generic map(
      LOC => "PAD57",
      INIT => '0'
    )
    port map (
      I => DATAS_6_IFF_IFFDMUX_211,
      CE => DATAS_6_IFF_ICEINVNOT,
      CLK => DATAS_6_IFF_ICLK1INV_210,
      SET => GND,
      RST => DATAS_6_IFF_IFF1_RSTAND_212,
      O => U2_REG(6)
    );
  DATAS_6_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_6_IFF_IFF1_RSTAND_212
    );
  ACKA_obuf : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => ACKA_O,
      O => ACKA
    );
  DATAS_ibuf_7_Q : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS(7),
      O => DATAS_7_INBUF
    );
  DATAS_7_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATAS_7_INBUF,
      O => DATAS_7_IFF_IFFDMUX_214
    );
  DATAS_7_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_c,
      O => DATAS_7_IFF_ICLK1INV_213
    );
  DATAS_7_IFF_ICEINV : X_INV
    generic map(
      LOC => "PAD54",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => DATAS_7_IFF_ICEINVNOT
    );
  U2_REG_7_Q : X_FF
    generic map(
      LOC => "PAD54",
      INIT => '0'
    )
    port map (
      I => DATAS_7_IFF_IFFDMUX_214,
      CE => DATAS_7_IFF_ICEINVNOT,
      CLK => DATAS_7_IFF_ICLK1INV_213,
      SET => GND,
      RST => DATAS_7_IFF_IFF1_RSTAND_215,
      O => U2_REG(7)
    );
  DATAS_7_IFF_IFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => DATAS_7_IFF_IFF1_RSTAND_215
    );
  RESET_ibuf : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_c
    );
  PORT3_IN_ibuf_0_IBUFG : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN(0),
      O => PORT3_IN_0_INBUF
    );
  PORT3_IN_ibuf_1_Q : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN(1),
      O => PORT3_IN_1_INBUF
    );
  ALE_ibuf_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX4P"
    )
    port map (
      I0 => ALE_ibuf_BUFG_I0_INV,
      I1 => GND,
      S => ALE_ibuf_BUFG_S_INVNOT,
      O => ALE_c
    );
  ALE_ibuf_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX4P",
      PATHPULSE => 605 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => ALE_ibuf_BUFG_S_INVNOT
    );
  ALE_ibuf_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX4P",
      PATHPULSE => 605 ps
    )
    port map (
      I => ALE_INBUF,
      O => ALE_ibuf_BUFG_I0_INV
    );
  PORT3_IN_ibuf_0_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX3P"
    )
    port map (
      I0 => PORT3_IN_ibuf_0_BUFG_I0_INV,
      I1 => GND,
      S => PORT3_IN_ibuf_0_BUFG_S_INVNOT,
      O => PORT3_IN_c_0_Q
    );
  PORT3_IN_ibuf_0_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX3P",
      PATHPULSE => 605 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => PORT3_IN_ibuf_0_BUFG_S_INVNOT
    );
  PORT3_IN_ibuf_0_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX3P",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_0_INBUF,
      O => PORT3_IN_ibuf_0_BUFG_I0_INV
    );
  nWRS_ibuf_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX2P"
    )
    port map (
      I0 => nWRS_ibuf_BUFG_I0_INV,
      I1 => GND,
      S => nWRS_ibuf_BUFG_S_INVNOT,
      O => nWRS_c
    );
  nWRS_ibuf_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX2P",
      PATHPULSE => 605 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => nWRS_ibuf_BUFG_S_INVNOT
    );
  nWRS_ibuf_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX2P",
      PATHPULSE => 605 ps
    )
    port map (
      I => nWRS_INBUF,
      O => nWRS_ibuf_BUFG_I0_INV
    );
  U2_cnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_un7_cnt_axbxc1_O_pack_1,
      O => U2_cnt_1_DXMUX_216
    );
  U2_cnt_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_un7_cnt_axbxc2_O_pack_1,
      O => U2_cnt_1_DYMUX_217
    );
  U2_cnt_1_SRFFMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => U2_cnt_1_SRFFMUX_218
    );
  U2_cnt_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_c_0_Q,
      O => U2_cnt_1_CLKINVNOT
    );
  BUSY_c_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_read_un1_txd_7_i_O_pack_1,
      O => BUSY_c_DYMUX_219
    );
  BUSY_c_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_c_0_Q,
      O => BUSY_c_CLKINVNOT
    );
  U1_ram_13_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_13_5_DXMUX_220
    );
  U1_ram_13_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_13_5_DYMUX_221
    );
  U1_ram_13_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_14_0_a2_0,
      O => U1_ram_13_5_CLKINVNOT
    );
  U1_ram_14_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_14_1_DXMUX_222
    );
  U1_ram_14_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_14_1_DYMUX_223
    );
  U1_ram_14_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X7Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_15_0_a2_0,
      O => U1_ram_14_1_CLKINVNOT
    );
  U2_cnt_2_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_cnt(2),
      O => U2_cnt_2_DYMUX_224
    );
  U2_cnt_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_c_0_Q,
      O => U2_cnt_2_CLKINVNOT
    );
  U1_ram_13_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_13_7_DXMUX_225
    );
  U1_ram_13_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_13_7_DYMUX_226
    );
  U1_ram_13_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_14_0_a2_0,
      O => U1_ram_13_7_CLKINVNOT
    );
  U1_ram_14_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_14_3_DXMUX_227
    );
  U1_ram_14_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_14_3_DYMUX_228
    );
  U1_ram_14_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_15_0_a2_0,
      O => U1_ram_14_3_CLKINVNOT
    );
  U1_un1_ncs_1_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_1_0_a2_229,
      O => U1_un1_ncs_1_0_a2_0
    );
  U1_un1_ncs_1_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_7_0_a2_230,
      O => U1_un1_ncs_7_0_a2_0
    );
  U1_un1_ncs_7_0_a2 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X5Y11"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(1),
      ADR2 => ADD(0),
      ADR3 => U1_un1_ncs_1_0_a2_2_1,
      O => U1_un1_ncs_7_0_a2_230
    );
  U1_un1_ncs_8_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_8_0_a2_231,
      O => U1_un1_ncs_8_0_a2_0
    );
  U1_un1_ncs_8_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_1_0_a2_2_pack_1,
      O => U1_un1_ncs_1_0_a2_2_1
    );
  U1_un1_ncs_1_0_a2_2 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X3Y7"
    )
    port map (
      ADR0 => PORT3_IN_c_3_Q,
      ADR1 => PORT2_c(7),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un1_ncs_1_0_a2_2_pack_1
    );
  U1_ram_15_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_15_1_DXMUX_232
    );
  U1_ram_15_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_15_1_DYMUX_233
    );
  U1_ram_15_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_16_0_a2_0,
      O => U1_ram_15_1_CLKINVNOT
    );
  U1_ram_14_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_14_5_DXMUX_234
    );
  U1_ram_14_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_14_5_DYMUX_235
    );
  U1_ram_14_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_15_0_a2_0,
      O => U1_ram_14_5_CLKINVNOT
    );
  U1_ram_2_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_2_5_DXMUX_236
    );
  U1_ram_2_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_2_5_DYMUX_237
    );
  U1_ram_2_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X11Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_3_0_a2_0,
      O => U1_ram_2_5_CLKINVNOT
    );
  U1_ram_3_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_3_3_DXMUX_238
    );
  U1_ram_3_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_3_3_DYMUX_239
    );
  U1_ram_3_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_4_0_a2_0,
      O => U1_ram_3_3_CLKINVNOT
    );
  U1_ram_2_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_2_7_DXMUX_240
    );
  U1_ram_2_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_2_7_DYMUX_241
    );
  U1_ram_2_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_3_0_a2_0,
      O => U1_ram_2_7_CLKINVNOT
    );
  U1_ram_4_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_4_1_DXMUX_242
    );
  U1_ram_4_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_4_1_DYMUX_243
    );
  U1_ram_4_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_5_0_a2_0,
      O => U1_ram_4_1_CLKINVNOT
    );
  U1_ram_3_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_3_5_DXMUX_244
    );
  U1_ram_3_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_3_5_DYMUX_245
    );
  U1_ram_3_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_4_0_a2_0,
      O => U1_ram_3_5_CLKINVNOT
    );
  U1_un1_ncs_3_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_3_0_a2_246,
      O => U1_un1_ncs_3_0_a2_0
    );
  U1_un1_ncs_3_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_5_0_a2_247,
      O => U1_un1_ncs_5_0_a2_0
    );
  U1_un1_ncs_5_0_a2 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X4Y4"
    )
    port map (
      ADR0 => U1_un1_ncs_1_0_a2_2_1,
      ADR1 => ADD(2),
      ADR2 => ADD(0),
      ADR3 => ADD(1),
      O => U1_un1_ncs_5_0_a2_247
    );
  U1_ram_4_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_4_3_DXMUX_248
    );
  U1_ram_4_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_4_3_DYMUX_249
    );
  U1_ram_4_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_5_0_a2_0,
      O => U1_ram_4_3_CLKINVNOT
    );
  U1_ram_3_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_3_7_DXMUX_250
    );
  U1_ram_3_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_3_7_DYMUX_251
    );
  U1_ram_3_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_4_0_a2_0,
      O => U1_ram_3_7_CLKINVNOT
    );
  U1_ram_5_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_5_1_DXMUX_252
    );
  U1_ram_5_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_5_1_DYMUX_253
    );
  U1_ram_5_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_6_0_a2_0,
      O => U1_ram_5_1_CLKINVNOT
    );
  U1_ram_4_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_4_5_DXMUX_254
    );
  U1_ram_4_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_4_5_DYMUX_255
    );
  U1_ram_4_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_5_0_a2_0,
      O => U1_ram_4_5_CLKINVNOT
    );
  U1_ram_5_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_5_3_DXMUX_256
    );
  U1_ram_5_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_5_3_DYMUX_257
    );
  U1_ram_5_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_6_0_a2_0,
      O => U1_ram_5_3_CLKINVNOT
    );
  U1_ram_4_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_4_7_DXMUX_258
    );
  U1_ram_4_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_4_7_DYMUX_259
    );
  U1_ram_4_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_5_0_a2_0,
      O => U1_ram_4_7_CLKINVNOT
    );
  U1_ram_6_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_6_1_DXMUX_260
    );
  U1_ram_6_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_6_1_DYMUX_261
    );
  U1_ram_6_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_7_0_a2_0,
      O => U1_ram_6_1_CLKINVNOT
    );
  U1_ram_5_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_5_5_DXMUX_262
    );
  U1_ram_5_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_5_5_DYMUX_263
    );
  U1_ram_5_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_6_0_a2_0,
      O => U1_ram_5_5_CLKINVNOT
    );
  U1_ram_6_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_6_3_DXMUX_264
    );
  U1_ram_6_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_6_3_DYMUX_265
    );
  U1_ram_6_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_7_0_a2_0,
      O => U1_ram_6_3_CLKINVNOT
    );
  U1_ram_5_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_5_7_DXMUX_266
    );
  U1_ram_5_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_5_7_DYMUX_267
    );
  U1_ram_5_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_6_0_a2_0,
      O => U1_ram_5_7_CLKINVNOT
    );
  U1_ram_7_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_7_1_DXMUX_268
    );
  U1_ram_7_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_7_1_DYMUX_269
    );
  U1_ram_7_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_8_0_a2_0,
      O => U1_ram_7_1_CLKINVNOT
    );
  U1_ram_6_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_6_5_DXMUX_270
    );
  U1_ram_6_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_6_5_DYMUX_271
    );
  U1_ram_6_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_7_0_a2_0,
      O => U1_ram_6_5_CLKINVNOT
    );
  U1_ram_6_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_6_7_DXMUX_272
    );
  U1_ram_6_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_6_7_DYMUX_273
    );
  U1_ram_6_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_7_0_a2_0,
      O => U1_ram_6_7_CLKINVNOT
    );
  U1_ram_7_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_7_3_DXMUX_274
    );
  U1_ram_7_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_7_3_DYMUX_275
    );
  U1_ram_7_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_8_0_a2_0,
      O => U1_ram_7_3_CLKINVNOT
    );
  U1_ram_10_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_10_1_DXMUX_276
    );
  U1_ram_10_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_10_1_DYMUX_277
    );
  U1_ram_10_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_11_0_a2_0,
      O => U1_ram_10_1_CLKINVNOT
    );
  U1_ram_8_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(1),
      O => U1_ram_8_1_DXMUX_278
    );
  U1_ram_8_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(0),
      O => U1_ram_8_1_DYMUX_279
    );
  U1_ram_8_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X7Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_9_0_a2_0,
      O => U1_ram_8_1_CLKINVNOT
    );
  U1_ram_7_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_7_5_DXMUX_280
    );
  U1_ram_7_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_7_5_DYMUX_281
    );
  U1_ram_7_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_8_0_a2_0,
      O => U1_ram_7_5_CLKINVNOT
    );
  U1_ram_10_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_10_3_DXMUX_282
    );
  U1_ram_10_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_10_3_DYMUX_283
    );
  U1_ram_10_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_11_0_a2_0,
      O => U1_ram_10_3_CLKINVNOT
    );
  U1_un1_ncs_14_0_a2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_14_0_a2_284,
      O => U1_un1_ncs_14_0_a2_0
    );
  U1_un1_ncs_14_0_a2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_6_0_a2_285,
      O => U1_un1_ncs_6_0_a2_0
    );
  U1_un1_ncs_6_0_a2 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X11Y8"
    )
    port map (
      ADR0 => U1_un1_ncs_1_0_a2_2_1,
      ADR1 => ADD(1),
      ADR2 => ADD(2),
      ADR3 => ADD(0),
      O => U1_un1_ncs_6_0_a2_285
    );
  U1_ram_8_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(3),
      O => U1_ram_8_3_DXMUX_286
    );
  U1_ram_8_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(2),
      O => U1_ram_8_3_DYMUX_287
    );
  U1_ram_8_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_9_0_a2_0,
      O => U1_ram_8_3_CLKINVNOT
    );
  U1_ram_7_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(7),
      O => U1_ram_7_7_DXMUX_288
    );
  U1_ram_7_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(6),
      O => U1_ram_7_7_DYMUX_289
    );
  U1_ram_7_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_8_0_a2_0,
      O => U1_ram_7_7_CLKINVNOT
    );
  U1_ram_10_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(5),
      O => U1_ram_10_5_DXMUX_290
    );
  U1_ram_10_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT0_in(4),
      O => U1_ram_10_5_DYMUX_291
    );
  U1_ram_10_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_un1_ncs_11_0_a2_0,
      O => U1_ram_10_5_CLKINVNOT
    );
  U1_un44_data_3_am_5_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X9Y5"
    )
    port map (
      ADR0 => U1_ram_0(5),
      ADR1 => U1_ram_8(5),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_3_am(5)
    );
  U1_un44_data_3_am_6_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X1Y11"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_0(6),
      ADR3 => U1_ram_8(6),
      O => U1_un44_data_3_am(6)
    );
  U1_un44_data_3_am_7_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_0(7),
      ADR2 => VCC,
      ADR3 => U1_ram_8(7),
      O => U1_un44_data_3_am(7)
    );
  U1_un44_data_3_am_0_Q : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X5Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_0(0),
      ADR2 => U1_ram_8(0),
      ADR3 => ADD(3),
      O => U1_un44_data_3_am(0)
    );
  U1_un44_data_3_am_1_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X7Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_0(1),
      ADR2 => ADD(3),
      ADR3 => U1_ram_8(1),
      O => U1_un44_data_3_am(1)
    );
  U2_read_TXD_2_u_i_m4_am : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_REG(2),
      ADR2 => BUSY_c,
      ADR3 => U2_REG(0),
      O => U2_TXD_2_u_i_m4_am
    );
  U1_un44_data_3_am_2_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X13Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_0(2),
      ADR2 => ADD(3),
      ADR3 => U1_ram_8(2),
      O => U1_un44_data_3_am(2)
    );
  U1_un44_data_3_am_3_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X15Y9"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_0(3),
      ADR2 => VCC,
      ADR3 => U1_ram_8(3),
      O => U1_un44_data_3_am(3)
    );
  U1_un44_data_3_am_4_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X9Y7"
    )
    port map (
      ADR0 => U1_ram_8(4),
      ADR1 => U1_ram_0(4),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_3_am(4)
    );
  U1_un44_data_3_bm_2_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X13Y7"
    )
    port map (
      ADR0 => U1_ram_12(2),
      ADR1 => U1_ram_4(2),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_3_bm(2)
    );
  U1_un44_data_3_bm_3_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X15Y9"
    )
    port map (
      ADR0 => U1_ram_4(3),
      ADR1 => U1_ram_12(3),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_3_bm(3)
    );
  U1_un44_data_3_bm_4_Q : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X9Y7"
    )
    port map (
      ADR0 => U1_ram_4(4),
      ADR1 => VCC,
      ADR2 => ADD(3),
      ADR3 => U1_ram_12(4),
      O => U1_un44_data_3_bm(4)
    );
  U1_un44_data_10_bm_3_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_5(3),
      ADR3 => U1_ram_13(3),
      O => U1_un44_data_10_bm(3)
    );
  U1_un44_data_6_bm_3_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X15Y8"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_14(3),
      ADR3 => U1_ram_6(3),
      O => U1_un44_data_6_bm(3)
    );
  U1_un44_data_13_bm_4_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X8Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_15(4),
      ADR2 => ADD(3),
      ADR3 => U1_ram_7(4),
      O => U1_un44_data_13_bm(4)
    );
  U1_un44_data_10_bm_4_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X8Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_13(4),
      ADR2 => ADD(3),
      ADR3 => U1_ram_5(4),
      O => U1_un44_data_10_bm(4)
    );
  U1_un44_data_6_bm_4_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X9Y6"
    )
    port map (
      ADR0 => U1_ram_6(4),
      ADR1 => ADD(3),
      ADR2 => U1_ram_14(4),
      ADR3 => VCC,
      O => U1_un44_data_6_bm(4)
    );
  U1_un44_data_13_bm_5_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X8Y4"
    )
    port map (
      ADR0 => U1_ram_15(5),
      ADR1 => VCC,
      ADR2 => ADD(3),
      ADR3 => U1_ram_7(5),
      O => U1_un44_data_13_bm(5)
    );
  U1_un44_data_10_bm_5_Q : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X8Y5"
    )
    port map (
      ADR0 => U1_ram_5(5),
      ADR1 => U1_ram_13(5),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_10_bm(5)
    );
  U1_un44_data_6_bm_5_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X9Y4"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_6(5),
      ADR3 => U1_ram_14(5),
      O => U1_un44_data_6_bm(5)
    );
  U1_un44_data_13_bm_6_Q : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X0Y10"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_7(6),
      ADR2 => VCC,
      ADR3 => U1_ram_15(6),
      O => U1_un44_data_13_bm(6)
    );
  U1_ram_11_0_Q : X_LATCHE
    generic map(
      LOC => "PAD85",
      INIT => '0'
    )
    port map (
      I => PORT0_0_IFF_IFFDMUX_151,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(0)
    );
  U1_ram_11_1_Q : X_LATCHE
    generic map(
      LOC => "PAD61",
      INIT => '0'
    )
    port map (
      I => PORT0_1_IFF_IFFDMUX_152,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(1)
    );
  U1_ram_11_2_Q : X_LATCHE
    generic map(
      LOC => "PAD38",
      INIT => '0'
    )
    port map (
      I => PORT0_2_IFF_IFFDMUX_125,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(2)
    );
  U1_ram_11_3_Q : X_LATCHE
    generic map(
      LOC => "PAD36",
      INIT => '0'
    )
    port map (
      I => PORT0_3_IFF_IFFDMUX_126,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(3)
    );
  U1_ram_11_4_Q : X_LATCHE
    generic map(
      LOC => "PAD62",
      INIT => '0'
    )
    port map (
      I => PORT0_4_IFF_IFFDMUX_127,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_11_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_11(4)
    );
  U1_ram_9_5_Q : X_LATCHE
    generic map(
      LOC => "PAD60",
      INIT => '0'
    )
    port map (
      I => PORT0_5_IFF_IFFDMUX_128,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(5)
    );
  U1_ram_9_6_Q : X_LATCHE
    generic map(
      LOC => "PAD90",
      INIT => '0'
    )
    port map (
      I => PORT0_6_IFF_IFFDMUX_129,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(6)
    );
  PORT3_OUT_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_OUT_1_0_Q,
      O => PORT3_OUT_0_O
    );
  PORT3_OUT_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_TXD_2_u_i_m2_F6MUX_147,
      O => PORT3_OUT_0_OUTPUT_OFF_O1INV_292
    );
  PORT3_OUT_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_OUT_1_2_Q,
      O => PORT3_OUT_2_O
    );
  PORT3_OUT_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 605 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => PORT3_OUT_2_OUTPUT_OFF_O1INV_293
    );
  U1_un44_data_3_bm_5_Q : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X9Y5"
    )
    port map (
      ADR0 => U1_ram_12(5),
      ADR1 => VCC,
      ADR2 => U1_ram_4(5),
      ADR3 => ADD(3),
      O => U1_un44_data_3_bm(5)
    );
  U1_un44_data_3_bm_6_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X1Y11"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_4(6),
      ADR3 => U1_ram_12(6),
      O => U1_un44_data_3_bm(6)
    );
  U1_un44_data_3_bm_7_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_12(7),
      ADR2 => VCC,
      ADR3 => U1_ram_4(7),
      O => U1_un44_data_3_bm(7)
    );
  U1_un44_data_3_bm_0_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X5Y9"
    )
    port map (
      ADR0 => U1_ram_4(0),
      ADR1 => VCC,
      ADR2 => U1_ram_12(0),
      ADR3 => ADD(3),
      O => U1_un44_data_3_bm(0)
    );
  U1_un44_data_3_bm_1_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X7Y7"
    )
    port map (
      ADR0 => U1_ram_12(1),
      ADR1 => ADD(3),
      ADR2 => U1_ram_4(1),
      ADR3 => VCC,
      O => U1_un44_data_3_bm(1)
    );
  U2_read_TXD_2_u_i_m4_bm : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => U2_cnt(1),
      ADR1 => U2_REG(4),
      ADR2 => U2_REG(6),
      ADR3 => VCC,
      O => U2_TXD_2_u_i_m4_bm
    );
  U1_ram_9_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_9_1_DYMUX_3,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(0)
    );
  U2_un7_cnt_axbxc2 : X_LUT4
    generic map(
      INIT => X"7788",
      LOC => "SLICE_X11Y1"
    )
    port map (
      ADR0 => U2_cnt(1),
      ADR1 => U2_cnt(2),
      ADR2 => VCC,
      ADR3 => U2_cnt(0),
      O => U2_un7_cnt_axbxc2_O_pack_1
    );
  U1_ram_13_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_5_DYMUX_221,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(4)
    );
  U1_ram_13_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_5_DXMUX_220,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(5)
    );
  U1_ram_14_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_1_DYMUX_223,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(0)
    );
  U1_ram_14_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_1_DXMUX_222,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(1)
    );
  U2_read_cnt_2_Q : X_FF
    generic map(
      LOC => "SLICE_X8Y1",
      INIT => '0'
    )
    port map (
      I => U2_cnt_2_DYMUX_224,
      CE => VCC,
      CLK => U2_cnt_2_CLKINVNOT,
      SET => GND,
      RST => U2_cnt_2_FFY_RSTAND_294,
      O => U2_cnt(2)
    );
  U2_cnt_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => U2_cnt_2_FFY_RSTAND_294
    );
  U1_ram_13_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_7_DYMUX_226,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(6)
    );
  U1_ram_13_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_7_DXMUX_225,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(7)
    );
  U1_ram_14_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_3_DYMUX_228,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(2)
    );
  U1_ram_14_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_3_DXMUX_227,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(3)
    );
  U1_un1_ncs_1_0_a2 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X5Y11"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(1),
      ADR2 => ADD(0),
      ADR3 => U1_un1_ncs_1_0_a2_2_1,
      O => U1_un1_ncs_1_0_a2_229
    );
  U1_un1_ncs_8_0_a2 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X3Y7"
    )
    port map (
      ADR0 => ADD(1),
      ADR1 => ADD(2),
      ADR2 => ADD(0),
      ADR3 => U1_un1_ncs_1_0_a2_2_1,
      O => U1_un1_ncs_8_0_a2_231
    );
  U1_ram_15_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_1_DYMUX_233,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(0)
    );
  U1_ram_15_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_1_DXMUX_232,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(1)
    );
  U1_ram_9_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_9_4_DYMUX_18,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(4)
    );
  U1_ram_13_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_1_DYMUX_20,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(0)
    );
  U1_ram_13_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_1_DXMUX_19,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(1)
    );
  U1_ram_12_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_5_DYMUX_22,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(4)
    );
  U1_ram_12_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_5_DXMUX_21,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(5)
    );
  U1_ram_13_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_3_DYMUX_24,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(2)
    );
  U1_ram_13_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_13_3_DXMUX_23,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_13_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_13(3)
    );
  U1_ram_12_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_7_DYMUX_26,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(6)
    );
  U1_ram_12_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_7_DXMUX_25,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(7)
    );
  U1_un44_data_13_bm_2_Q : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X12Y6"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_15(2),
      ADR2 => VCC,
      ADR3 => U1_ram_7(2),
      O => U1_un44_data_13_bm(2)
    );
  U1_un44_data_10_bm_2_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => U1_ram_13(2),
      ADR1 => U1_ram_5(2),
      ADR2 => ADD(3),
      ADR3 => VCC,
      O => U1_un44_data_10_bm(2)
    );
  U1_un44_data_6_bm_2_Q : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => U1_ram_6(2),
      ADR1 => ADD(3),
      ADR2 => VCC,
      ADR3 => U1_ram_14(2),
      O => U1_un44_data_6_bm(2)
    );
  U1_un44_data_13_bm_3_Q : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X14Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_7(3),
      ADR2 => U1_ram_15(3),
      ADR3 => ADD(3),
      O => U1_un44_data_13_bm(3)
    );
  U1_ram_9_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_9_1_DXMUX_2,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(1)
    );
  U1_ram_8_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_5_DYMUX_5,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(4)
    );
  U1_ram_8_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_5_DXMUX_4,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(5)
    );
  U1_ram_10_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y14",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_7_DYMUX_7,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(6)
    );
  U1_ram_10_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y14",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_7_DXMUX_6,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(7)
    );
  U1_un1_ncs_9_0_a2 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X2Y6"
    )
    port map (
      ADR0 => ADD(1),
      ADR1 => ADD(0),
      ADR2 => U1_un1_ncs_13_0_a2_1_0,
      ADR3 => ADD(2),
      O => U1_un1_ncs_9_0_a2_8
    );
  U1_ram_12_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_1_DYMUX_11,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(0)
    );
  U1_ram_12_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_1_DXMUX_10,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(1)
    );
  U1_ram_8_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_7_DYMUX_13,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(6)
    );
  U1_ram_8_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_7_DXMUX_12,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(7)
    );
  U1_ram_9_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_9_3_DYMUX_15,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(2)
    );
  U1_ram_9_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_9_3_DXMUX_14,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_9_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_9(3)
    );
  U1_ram_12_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_3_DYMUX_17,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(2)
    );
  U1_ram_12_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_12_3_DXMUX_16,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_12_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_12(3)
    );
  U1_un44_data_10_bm_6_Q : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X0Y11"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_13(6),
      ADR3 => U1_ram_5(6),
      O => U1_un44_data_10_bm(6)
    );
  U1_un44_data_6_bm_6_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X1Y10"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_6(6),
      ADR3 => U1_ram_14(6),
      O => U1_un44_data_6_bm(6)
    );
  U1_un44_data_13_bm_7_Q : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => U1_ram_15(7),
      ADR1 => U1_ram_7(7),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_13_bm(7)
    );
  U1_un44_data_10_bm_7_Q : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => U1_ram_5(7),
      ADR1 => VCC,
      ADR2 => U1_ram_13(7),
      ADR3 => ADD(3),
      O => U1_un44_data_10_bm(7)
    );
  U1_un44_data_6_bm_7_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_14(7),
      ADR2 => U1_ram_6(7),
      ADR3 => ADD(3),
      O => U1_un44_data_6_bm(7)
    );
  U1_un44_data_13_bm_0_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X4Y8"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => VCC,
      ADR2 => U1_ram_7(0),
      ADR3 => U1_ram_15(0),
      O => U1_un44_data_13_bm(0)
    );
  U1_un44_data_10_bm_0_Q : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X4Y9"
    )
    port map (
      ADR0 => U1_ram_13(0),
      ADR1 => U1_ram_5(0),
      ADR2 => VCC,
      ADR3 => ADD(3),
      O => U1_un44_data_10_bm(0)
    );
  U1_un44_data_6_bm_0_Q : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X5Y8"
    )
    port map (
      ADR0 => ADD(3),
      ADR1 => U1_ram_6(0),
      ADR2 => U1_ram_14(0),
      ADR3 => VCC,
      O => U1_un44_data_6_bm(0)
    );
  U1_un44_data_13_bm_1_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X6Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_ram_15(1),
      ADR2 => ADD(3),
      ADR3 => U1_ram_7(1),
      O => U1_un44_data_13_bm(1)
    );
  U1_un44_data_10_bm_1_Q : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X6Y7"
    )
    port map (
      ADR0 => U1_ram_5(1),
      ADR1 => ADD(3),
      ADR2 => U1_ram_13(1),
      ADR3 => VCC,
      O => U1_un44_data_10_bm(1)
    );
  U1_un44_data_6_bm_1_Q : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X7Y6"
    )
    port map (
      ADR0 => U1_ram_14(1),
      ADR1 => ADD(3),
      ADR2 => U1_ram_6(1),
      ADR3 => VCC,
      O => U1_un44_data_6_bm(1)
    );
  U2_read_TXD_2_4_i_m2_bm : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_REG(7),
      ADR2 => U2_REG(3),
      ADR3 => U2_cnt(0),
      O => U2_TXD_2_4_i_m2_bm
    );
  U2_read_cnt_0_Q : X_FF
    generic map(
      LOC => "SLICE_X11Y1",
      INIT => '0'
    )
    port map (
      I => U2_cnt_1_DYMUX_217,
      CE => VCC,
      CLK => U2_cnt_1_CLKINVNOT,
      SET => GND,
      RST => U2_cnt_1_SRFFMUX_218,
      O => U2_cnt(0)
    );
  U2_un7_cnt_axbxc1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X11Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_cnt(2),
      ADR2 => VCC,
      ADR3 => U2_cnt(1),
      O => U2_un7_cnt_axbxc1_O_pack_1
    );
  U2_read_cnt_1_Q : X_FF
    generic map(
      LOC => "SLICE_X11Y1",
      INIT => '0'
    )
    port map (
      I => U2_cnt_1_DXMUX_216,
      CE => VCC,
      CLK => U2_cnt_1_CLKINVNOT,
      SET => GND,
      RST => U2_cnt_1_SRFFMUX_218,
      O => U2_cnt(1)
    );
  U2_read_un1_txd_7_i : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => U2_cnt(0),
      ADR1 => VCC,
      ADR2 => U2_cnt(2),
      ADR3 => U2_cnt(1),
      O => U2_read_un1_txd_7_i_O_pack_1
    );
  U2_BUSY_INT : X_FF
    generic map(
      LOC => "SLICE_X11Y0",
      INIT => '0'
    )
    port map (
      I => BUSY_c_DYMUX_219,
      CE => VCC,
      CLK => BUSY_c_CLKINVNOT,
      SET => GND,
      RST => BUSY_c_FFY_RSTAND_295,
      O => BUSY_c
    );
  BUSY_c_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => BUSY_c_FFY_RSTAND_295
    );
  U1_ram_14_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_5_DYMUX_235,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(4)
    );
  U1_ram_14_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_5_DXMUX_234,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(5)
    );
  U1_ram_0_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_1_DYMUX_173,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(0)
    );
  U1_ram_0_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_1_DXMUX_172,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(1)
    );
  U1_un1_ncs_10_0_a2 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X4Y11"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(1),
      ADR2 => U1_un1_ncs_13_0_a2_1_0,
      ADR3 => ADD(0),
      O => U1_un1_ncs_10_0_a2_174
    );
  U1_un1_ncs_2_0_a2 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X6Y4"
    )
    port map (
      ADR0 => U1_un1_ncs_1_0_a2_2_1,
      ADR1 => ADD(0),
      ADR2 => ADD(2),
      ADR3 => ADD(1),
      O => U1_un1_ncs_2_0_a2_176
    );
  U1_ram_15_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_3_DYMUX_179,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(2)
    );
  U1_ram_15_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_3_DXMUX_178,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(3)
    );
  U1_ram_14_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_7_DYMUX_181,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(6)
    );
  U1_ram_14_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_14_7_DXMUX_180,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_14_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_14(7)
    );
  U1_ram_0_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_3_DYMUX_183,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(2)
    );
  U1_ram_0_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_3_DXMUX_182,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(3)
    );
  U1_un1_ncs_13_0_a2 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X4Y10"
    )
    port map (
      ADR0 => ADD(0),
      ADR1 => U1_un1_ncs_13_0_a2_1_0,
      ADR2 => ADD(1),
      ADR3 => ADD(2),
      O => U1_un1_ncs_13_0_a2_184
    );
  U1_ram_15_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_5_DYMUX_187,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(4)
    );
  U1_ram_15_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_5_DXMUX_186,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(5)
    );
  U1_ram_1_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_1_DYMUX_189,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(0)
    );
  U1_ram_1_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_1_DXMUX_188,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(1)
    );
  U1_ram_0_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_5_DYMUX_191,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(4)
    );
  U1_ram_0_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_5_DXMUX_190,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(5)
    );
  U1_ram_15_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_7_DYMUX_193,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(6)
    );
  U1_ram_15_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_15_7_DXMUX_192,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_15_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_15(7)
    );
  U1_ram_1_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_3_DYMUX_195,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(2)
    );
  U1_ram_1_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_3_DXMUX_194,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(3)
    );
  U1_ram_0_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_7_DYMUX_197,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(6)
    );
  U1_ram_0_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_0_7_DXMUX_196,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_0_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_0(7)
    );
  U1_ram_1_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_5_DYMUX_200,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(4)
    );
  U1_ram_1_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_5_DXMUX_199,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(5)
    );
  U1_ram_2_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_1_DYMUX_202,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(0)
    );
  U2_TXD : X_FF
    generic map(
      LOC => "PAD55",
      INIT => '1'
    )
    port map (
      I => PORT3_OUT_0_OUTPUT_OFF_O1INV_292,
      CE => VCC,
      CLK => PORT3_OUT_0_OUTPUT_OTCLK1INVNOT,
      SET => PORT3_OUT_0_OUTPUT_OFF_OFF1_SET,
      RST => GND,
      O => PORT3_OUT_1_0_Q
    );
  PORT3_OUT_0_OUTPUT_OFF_OFF1_SETOR : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_c,
      O => PORT3_OUT_0_OUTPUT_OFF_OFF1_SET
    );
  U2_INT : X_FF
    generic map(
      LOC => "PAD59",
      INIT => '1'
    )
    port map (
      I => PORT3_OUT_2_OUTPUT_OFF_O1INV_293,
      CE => VCC,
      CLK => PORT3_OUT_2_OUTPUT_OTCLK1INV_153,
      SET => PORT3_OUT_2_OUTPUT_OFF_OFF1_SET,
      RST => GND,
      O => PORT3_OUT_1_2_Q
    );
  PORT3_OUT_2_OUTPUT_OFF_OFF1_SETOR : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 605 ps
    )
    port map (
      I => U2_N_16_i,
      O => PORT3_OUT_2_OUTPUT_OFF_OFF1_SET
    );
  U1_ram_2_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_1_DXMUX_201,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(1)
    );
  U1_un1_ncs_16_0_a2 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X3Y6"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(0),
      ADR2 => U1_un1_ncs_13_0_a2_1_0,
      ADR3 => ADD(1),
      O => U1_un1_ncs_16_0_a2_203
    );
  U1_ram_2_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_3_DYMUX_205,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(2)
    );
  U1_ram_2_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_3_DXMUX_204,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(3)
    );
  U1_ram_1_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_7_DYMUX_207,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(6)
    );
  U1_ram_1_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      I => U1_ram_1_7_DXMUX_206,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_1_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_1(7)
    );
  U1_ram_3_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_1_DYMUX_209,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(0)
    );
  U1_ram_3_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_1_DXMUX_208,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(1)
    );
  U1_ram_2_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_5_DYMUX_237,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(4)
    );
  U1_ram_2_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_5_DXMUX_236,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(5)
    );
  U1_ram_3_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_3_DYMUX_239,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(2)
    );
  U1_ram_3_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_3_DXMUX_238,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(3)
    );
  U1_ram_2_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_7_DYMUX_241,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(6)
    );
  U1_ram_2_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      I => U1_ram_2_7_DXMUX_240,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_2_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_2(7)
    );
  U1_ram_4_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_1_DYMUX_243,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(0)
    );
  U1_ram_4_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_1_DXMUX_242,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(1)
    );
  U1_ram_3_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_5_DYMUX_245,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(4)
    );
  U1_ram_3_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_5_DXMUX_244,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(5)
    );
  U1_un1_ncs_3_0_a2 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X4Y4"
    )
    port map (
      ADR0 => U1_un1_ncs_1_0_a2_2_1,
      ADR1 => ADD(2),
      ADR2 => ADD(0),
      ADR3 => ADD(1),
      O => U1_un1_ncs_3_0_a2_246
    );
  U1_ram_4_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_3_DYMUX_249,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(2)
    );
  U1_ram_4_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_3_DXMUX_248,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(3)
    );
  U1_ram_3_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_7_DYMUX_251,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(6)
    );
  U1_ram_3_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => '0'
    )
    port map (
      I => U1_ram_3_7_DXMUX_250,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_3_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_3(7)
    );
  U1_ram_5_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_1_DYMUX_253,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(0)
    );
  U1_ram_5_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_1_DXMUX_252,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(1)
    );
  U1_ram_4_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_5_DYMUX_255,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(4)
    );
  U1_ram_4_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_5_DXMUX_254,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(5)
    );
  U1_ram_5_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_3_DYMUX_257,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(2)
    );
  U1_ram_5_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_3_DXMUX_256,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(3)
    );
  U1_ram_4_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_7_DYMUX_259,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(6)
    );
  U1_ram_4_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_4_7_DXMUX_258,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_4_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_4(7)
    );
  U1_ram_6_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_1_DYMUX_261,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(0)
    );
  U1_ram_6_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_1_DXMUX_260,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(1)
    );
  U1_ram_5_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_5_DYMUX_263,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(4)
    );
  U1_ram_5_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_5_DXMUX_262,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(5)
    );
  U1_ram_6_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_3_DYMUX_265,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(2)
    );
  U1_ram_6_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_3_DXMUX_264,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(3)
    );
  U1_ram_5_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_7_DYMUX_267,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(6)
    );
  U1_ram_5_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_5_7_DXMUX_266,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_5_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_5(7)
    );
  U1_ram_7_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_1_DYMUX_269,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(0)
    );
  U1_ram_7_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_1_DXMUX_268,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(1)
    );
  U1_ram_6_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_5_DYMUX_271,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(4)
    );
  U1_ram_6_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_5_DXMUX_270,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(5)
    );
  U1_ram_6_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_7_DYMUX_273,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(6)
    );
  U1_ram_6_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => '0'
    )
    port map (
      I => U1_ram_6_7_DXMUX_272,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_6_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_6(7)
    );
  U1_ram_7_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_3_DYMUX_275,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(2)
    );
  U1_ram_7_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_3_DXMUX_274,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(3)
    );
  U1_ram_10_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_1_DYMUX_277,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(0)
    );
  U1_ram_10_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_1_DXMUX_276,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(1)
    );
  U1_ram_8_0_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_1_DYMUX_279,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_0_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(0)
    );
  U1_ram_8_1_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_1_DXMUX_278,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_1_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(1)
    );
  U1_ram_7_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_5_DYMUX_281,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(4)
    );
  U1_ram_7_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_5_DXMUX_280,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(5)
    );
  U1_ram_10_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_3_DYMUX_283,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(2)
    );
  U1_ram_10_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_3_DXMUX_282,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(3)
    );
  U1_un1_ncs_14_0_a2 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X11Y8"
    )
    port map (
      ADR0 => ADD(2),
      ADR1 => ADD(1),
      ADR2 => ADD(0),
      ADR3 => U1_un1_ncs_13_0_a2_1_0,
      O => U1_un1_ncs_14_0_a2_284
    );
  U1_ram_8_2_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_3_DYMUX_287,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_2_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(2)
    );
  U1_ram_8_3_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '0'
    )
    port map (
      I => U1_ram_8_3_DXMUX_286,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_8_3_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_8(3)
    );
  U1_ram_7_6_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_7_DYMUX_289,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_6_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(6)
    );
  U1_ram_7_7_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      I => U1_ram_7_7_DXMUX_288,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_7_7_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_7(7)
    );
  U1_ram_10_4_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_5_DYMUX_291,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_4_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(4)
    );
  U1_ram_10_5_Q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      I => U1_ram_10_5_DXMUX_290,
      GE => VCC,
      CLK => NlwInverterSignal_U1_ram_10_5_CLK,
      SET => GND,
      RST => GND,
      O => U1_ram_10(5)
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  nCS_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT2_6_INBUF,
      O => nCS_O
    );
  PORT0_2_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_2_T
    );
  PORT0_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_2_F6MUX_33,
      O => PORT0_2_O
    );
  ADDRESS_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(0),
      O => ADDRESS_0_O
    );
  PORT0_3_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_3_T
    );
  PORT0_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_3_F6MUX_89,
      O => PORT0_3_O
    );
  ADDRESS_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(1),
      O => ADDRESS_1_O
    );
  PORT0_4_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_4_T
    );
  PORT0_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_4_F6MUX_103,
      O => PORT0_4_O
    );
  PORT1_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE_0_INBUF,
      O => PORT1_0_O
    );
  ADDRESS_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(2),
      O => ADDRESS_2_O
    );
  PORT0_5_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_5_T
    );
  PORT0_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_5_F6MUX_117,
      O => PORT0_5_O
    );
  PORT1_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE_1_INBUF,
      O => PORT1_1_O
    );
  ADDRESS_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(3),
      O => ADDRESS_3_O
    );
  PORT0_6_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_6_T
    );
  PORT0_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_6_F6MUX_51,
      O => PORT0_6_O
    );
  PORT1_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE_2_INBUF,
      O => PORT1_2_O
    );
  ADDRESS_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 605 ps
    )
    port map (
      I => ADD(4),
      O => ADDRESS_4_O
    );
  PORT0_7_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_7_T
    );
  PORT0_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_7_F6MUX_65,
      O => PORT0_7_O
    );
  PORT1_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 605 ps
    )
    port map (
      I => CODE_3_INBUF,
      O => PORT1_3_O
    );
  BUSY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 605 ps
    )
    port map (
      I => BUSY_c,
      O => BUSY_O
    );
  CTR_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_1_INBUF,
      O => CTR_O
    );
  PORT0_0_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_0_T
    );
  PORT0_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_0_F6MUX_79,
      O => PORT0_0_O
    );
  PORT0_1_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_N_181_i_0,
      O => PORT0_1_T
    );
  PORT0_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 605 ps
    )
    port map (
      I => un44_data_15_1_F6MUX_137,
      O => PORT0_1_O
    );
  nRD_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_c_4_Q,
      O => nRD_O
    );
  PORT3_OUT_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 605 ps
    )
    port map (
      I => INTA_INBUF,
      O => PORT3_OUT_1_O
    );
  nWR_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_c_3_Q,
      O => nWR_O
    );
  ACKA_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 605 ps
    )
    port map (
      I => PORT3_IN_2_INBUF,
      O => ACKA_O
    );
  NlwBlock_Fpga_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_U0_OUTP_2_CLK : X_INV
    port map (
      I => PORT0_2_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U0_OUTP_2_CLK
    );
  NlwBlock_Fpga_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_U0_OUTP_3_CLK : X_INV
    port map (
      I => PORT0_3_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U0_OUTP_3_CLK
    );
  NlwInverterBlock_U0_OUTP_4_CLK : X_INV
    port map (
      I => PORT0_4_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U0_OUTP_4_CLK
    );
  NlwInverterBlock_U1_ram_11_5_CLK : X_INV
    port map (
      I => PORT0_5_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U1_ram_11_5_CLK
    );
  NlwInverterBlock_U1_ram_11_6_CLK : X_INV
    port map (
      I => PORT0_6_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U1_ram_11_6_CLK
    );
  NlwInverterBlock_U1_ram_11_7_CLK : X_INV
    port map (
      I => PORT0_7_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U1_ram_11_7_CLK
    );
  NlwInverterBlock_U1_ram_9_7_CLK : X_INV
    port map (
      I => PORT0_7_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_9_7_CLK
    );
  NlwInverterBlock_U0_OUTP_0_CLK : X_INV
    port map (
      I => PORT0_0_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U0_OUTP_0_CLK
    );
  NlwInverterBlock_U0_OUTP_1_CLK : X_INV
    port map (
      I => PORT0_1_IFF_ICLK1INVNOT,
      O => NlwInverterSignal_U0_OUTP_1_CLK
    );
  NlwInverterBlock_U1_ram_11_0_CLK : X_INV
    port map (
      I => PORT0_0_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_11_0_CLK
    );
  NlwInverterBlock_U1_ram_11_1_CLK : X_INV
    port map (
      I => PORT0_1_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_11_1_CLK
    );
  NlwInverterBlock_U1_ram_11_2_CLK : X_INV
    port map (
      I => PORT0_2_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_11_2_CLK
    );
  NlwInverterBlock_U1_ram_11_3_CLK : X_INV
    port map (
      I => PORT0_3_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_11_3_CLK
    );
  NlwInverterBlock_U1_ram_11_4_CLK : X_INV
    port map (
      I => PORT0_4_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_11_4_CLK
    );
  NlwInverterBlock_U1_ram_9_5_CLK : X_INV
    port map (
      I => PORT0_5_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_9_5_CLK
    );
  NlwInverterBlock_U1_ram_9_6_CLK : X_INV
    port map (
      I => PORT0_6_IFF_ICLK2INVNOT,
      O => NlwInverterSignal_U1_ram_9_6_CLK
    );
  NlwInverterBlock_U1_ram_9_0_CLK : X_INV
    port map (
      I => U1_ram_9_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_9_0_CLK
    );
  NlwInverterBlock_U1_ram_13_4_CLK : X_INV
    port map (
      I => U1_ram_13_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_4_CLK
    );
  NlwInverterBlock_U1_ram_13_5_CLK : X_INV
    port map (
      I => U1_ram_13_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_5_CLK
    );
  NlwInverterBlock_U1_ram_14_0_CLK : X_INV
    port map (
      I => U1_ram_14_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_0_CLK
    );
  NlwInverterBlock_U1_ram_14_1_CLK : X_INV
    port map (
      I => U1_ram_14_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_1_CLK
    );
  NlwInverterBlock_U1_ram_13_6_CLK : X_INV
    port map (
      I => U1_ram_13_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_6_CLK
    );
  NlwInverterBlock_U1_ram_13_7_CLK : X_INV
    port map (
      I => U1_ram_13_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_7_CLK
    );
  NlwInverterBlock_U1_ram_14_2_CLK : X_INV
    port map (
      I => U1_ram_14_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_2_CLK
    );
  NlwInverterBlock_U1_ram_14_3_CLK : X_INV
    port map (
      I => U1_ram_14_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_3_CLK
    );
  NlwInverterBlock_U1_ram_15_0_CLK : X_INV
    port map (
      I => U1_ram_15_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_0_CLK
    );
  NlwInverterBlock_U1_ram_15_1_CLK : X_INV
    port map (
      I => U1_ram_15_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_1_CLK
    );
  NlwInverterBlock_U1_ram_9_4_CLK : X_INV
    port map (
      I => U1_ram_9_4_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_9_4_CLK
    );
  NlwInverterBlock_U1_ram_13_0_CLK : X_INV
    port map (
      I => U1_ram_13_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_0_CLK
    );
  NlwInverterBlock_U1_ram_13_1_CLK : X_INV
    port map (
      I => U1_ram_13_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_1_CLK
    );
  NlwInverterBlock_U1_ram_12_4_CLK : X_INV
    port map (
      I => U1_ram_12_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_4_CLK
    );
  NlwInverterBlock_U1_ram_12_5_CLK : X_INV
    port map (
      I => U1_ram_12_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_5_CLK
    );
  NlwInverterBlock_U1_ram_13_2_CLK : X_INV
    port map (
      I => U1_ram_13_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_2_CLK
    );
  NlwInverterBlock_U1_ram_13_3_CLK : X_INV
    port map (
      I => U1_ram_13_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_13_3_CLK
    );
  NlwInverterBlock_U1_ram_12_6_CLK : X_INV
    port map (
      I => U1_ram_12_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_6_CLK
    );
  NlwInverterBlock_U1_ram_12_7_CLK : X_INV
    port map (
      I => U1_ram_12_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_7_CLK
    );
  NlwInverterBlock_U1_ram_9_1_CLK : X_INV
    port map (
      I => U1_ram_9_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_9_1_CLK
    );
  NlwInverterBlock_U1_ram_8_4_CLK : X_INV
    port map (
      I => U1_ram_8_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_4_CLK
    );
  NlwInverterBlock_U1_ram_8_5_CLK : X_INV
    port map (
      I => U1_ram_8_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_5_CLK
    );
  NlwInverterBlock_U1_ram_10_6_CLK : X_INV
    port map (
      I => U1_ram_10_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_6_CLK
    );
  NlwInverterBlock_U1_ram_10_7_CLK : X_INV
    port map (
      I => U1_ram_10_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_7_CLK
    );
  NlwInverterBlock_U1_ram_12_0_CLK : X_INV
    port map (
      I => U1_ram_12_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_0_CLK
    );
  NlwInverterBlock_U1_ram_12_1_CLK : X_INV
    port map (
      I => U1_ram_12_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_1_CLK
    );
  NlwInverterBlock_U1_ram_8_6_CLK : X_INV
    port map (
      I => U1_ram_8_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_6_CLK
    );
  NlwInverterBlock_U1_ram_8_7_CLK : X_INV
    port map (
      I => U1_ram_8_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_7_CLK
    );
  NlwInverterBlock_U1_ram_9_2_CLK : X_INV
    port map (
      I => U1_ram_9_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_9_2_CLK
    );
  NlwInverterBlock_U1_ram_9_3_CLK : X_INV
    port map (
      I => U1_ram_9_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_9_3_CLK
    );
  NlwInverterBlock_U1_ram_12_2_CLK : X_INV
    port map (
      I => U1_ram_12_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_2_CLK
    );
  NlwInverterBlock_U1_ram_12_3_CLK : X_INV
    port map (
      I => U1_ram_12_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_12_3_CLK
    );
  NlwInverterBlock_U1_ram_14_4_CLK : X_INV
    port map (
      I => U1_ram_14_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_4_CLK
    );
  NlwInverterBlock_U1_ram_14_5_CLK : X_INV
    port map (
      I => U1_ram_14_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_5_CLK
    );
  NlwInverterBlock_U1_ram_0_0_CLK : X_INV
    port map (
      I => U1_ram_0_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_0_CLK
    );
  NlwInverterBlock_U1_ram_0_1_CLK : X_INV
    port map (
      I => U1_ram_0_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_1_CLK
    );
  NlwInverterBlock_U1_ram_15_2_CLK : X_INV
    port map (
      I => U1_ram_15_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_2_CLK
    );
  NlwInverterBlock_U1_ram_15_3_CLK : X_INV
    port map (
      I => U1_ram_15_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_3_CLK
    );
  NlwInverterBlock_U1_ram_14_6_CLK : X_INV
    port map (
      I => U1_ram_14_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_6_CLK
    );
  NlwInverterBlock_U1_ram_14_7_CLK : X_INV
    port map (
      I => U1_ram_14_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_14_7_CLK
    );
  NlwInverterBlock_U1_ram_0_2_CLK : X_INV
    port map (
      I => U1_ram_0_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_2_CLK
    );
  NlwInverterBlock_U1_ram_0_3_CLK : X_INV
    port map (
      I => U1_ram_0_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_3_CLK
    );
  NlwInverterBlock_U1_ram_15_4_CLK : X_INV
    port map (
      I => U1_ram_15_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_4_CLK
    );
  NlwInverterBlock_U1_ram_15_5_CLK : X_INV
    port map (
      I => U1_ram_15_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_5_CLK
    );
  NlwInverterBlock_U1_ram_1_0_CLK : X_INV
    port map (
      I => U1_ram_1_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_0_CLK
    );
  NlwInverterBlock_U1_ram_1_1_CLK : X_INV
    port map (
      I => U1_ram_1_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_1_CLK
    );
  NlwInverterBlock_U1_ram_0_4_CLK : X_INV
    port map (
      I => U1_ram_0_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_4_CLK
    );
  NlwInverterBlock_U1_ram_0_5_CLK : X_INV
    port map (
      I => U1_ram_0_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_5_CLK
    );
  NlwInverterBlock_U1_ram_15_6_CLK : X_INV
    port map (
      I => U1_ram_15_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_6_CLK
    );
  NlwInverterBlock_U1_ram_15_7_CLK : X_INV
    port map (
      I => U1_ram_15_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_15_7_CLK
    );
  NlwInverterBlock_U1_ram_1_2_CLK : X_INV
    port map (
      I => U1_ram_1_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_2_CLK
    );
  NlwInverterBlock_U1_ram_1_3_CLK : X_INV
    port map (
      I => U1_ram_1_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_3_CLK
    );
  NlwInverterBlock_U1_ram_0_6_CLK : X_INV
    port map (
      I => U1_ram_0_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_6_CLK
    );
  NlwInverterBlock_U1_ram_0_7_CLK : X_INV
    port map (
      I => U1_ram_0_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_0_7_CLK
    );
  NlwInverterBlock_U1_ram_1_4_CLK : X_INV
    port map (
      I => U1_ram_1_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_4_CLK
    );
  NlwInverterBlock_U1_ram_1_5_CLK : X_INV
    port map (
      I => U1_ram_1_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_5_CLK
    );
  NlwInverterBlock_U1_ram_2_0_CLK : X_INV
    port map (
      I => U1_ram_2_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_0_CLK
    );
  NlwInverterBlock_U1_ram_2_1_CLK : X_INV
    port map (
      I => U1_ram_2_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_1_CLK
    );
  NlwInverterBlock_U1_ram_2_2_CLK : X_INV
    port map (
      I => U1_ram_2_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_2_CLK
    );
  NlwInverterBlock_U1_ram_2_3_CLK : X_INV
    port map (
      I => U1_ram_2_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_3_CLK
    );
  NlwInverterBlock_U1_ram_1_6_CLK : X_INV
    port map (
      I => U1_ram_1_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_6_CLK
    );
  NlwInverterBlock_U1_ram_1_7_CLK : X_INV
    port map (
      I => U1_ram_1_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_1_7_CLK
    );
  NlwInverterBlock_U1_ram_3_0_CLK : X_INV
    port map (
      I => U1_ram_3_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_0_CLK
    );
  NlwInverterBlock_U1_ram_3_1_CLK : X_INV
    port map (
      I => U1_ram_3_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_1_CLK
    );
  NlwInverterBlock_U1_ram_2_4_CLK : X_INV
    port map (
      I => U1_ram_2_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_4_CLK
    );
  NlwInverterBlock_U1_ram_2_5_CLK : X_INV
    port map (
      I => U1_ram_2_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_5_CLK
    );
  NlwInverterBlock_U1_ram_3_2_CLK : X_INV
    port map (
      I => U1_ram_3_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_2_CLK
    );
  NlwInverterBlock_U1_ram_3_3_CLK : X_INV
    port map (
      I => U1_ram_3_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_3_CLK
    );
  NlwInverterBlock_U1_ram_2_6_CLK : X_INV
    port map (
      I => U1_ram_2_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_6_CLK
    );
  NlwInverterBlock_U1_ram_2_7_CLK : X_INV
    port map (
      I => U1_ram_2_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_2_7_CLK
    );
  NlwInverterBlock_U1_ram_4_0_CLK : X_INV
    port map (
      I => U1_ram_4_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_0_CLK
    );
  NlwInverterBlock_U1_ram_4_1_CLK : X_INV
    port map (
      I => U1_ram_4_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_1_CLK
    );
  NlwInverterBlock_U1_ram_3_4_CLK : X_INV
    port map (
      I => U1_ram_3_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_4_CLK
    );
  NlwInverterBlock_U1_ram_3_5_CLK : X_INV
    port map (
      I => U1_ram_3_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_5_CLK
    );
  NlwInverterBlock_U1_ram_4_2_CLK : X_INV
    port map (
      I => U1_ram_4_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_2_CLK
    );
  NlwInverterBlock_U1_ram_4_3_CLK : X_INV
    port map (
      I => U1_ram_4_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_3_CLK
    );
  NlwInverterBlock_U1_ram_3_6_CLK : X_INV
    port map (
      I => U1_ram_3_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_6_CLK
    );
  NlwInverterBlock_U1_ram_3_7_CLK : X_INV
    port map (
      I => U1_ram_3_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_3_7_CLK
    );
  NlwInverterBlock_U1_ram_5_0_CLK : X_INV
    port map (
      I => U1_ram_5_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_0_CLK
    );
  NlwInverterBlock_U1_ram_5_1_CLK : X_INV
    port map (
      I => U1_ram_5_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_1_CLK
    );
  NlwInverterBlock_U1_ram_4_4_CLK : X_INV
    port map (
      I => U1_ram_4_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_4_CLK
    );
  NlwInverterBlock_U1_ram_4_5_CLK : X_INV
    port map (
      I => U1_ram_4_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_5_CLK
    );
  NlwInverterBlock_U1_ram_5_2_CLK : X_INV
    port map (
      I => U1_ram_5_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_2_CLK
    );
  NlwInverterBlock_U1_ram_5_3_CLK : X_INV
    port map (
      I => U1_ram_5_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_3_CLK
    );
  NlwInverterBlock_U1_ram_4_6_CLK : X_INV
    port map (
      I => U1_ram_4_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_6_CLK
    );
  NlwInverterBlock_U1_ram_4_7_CLK : X_INV
    port map (
      I => U1_ram_4_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_4_7_CLK
    );
  NlwInverterBlock_U1_ram_6_0_CLK : X_INV
    port map (
      I => U1_ram_6_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_0_CLK
    );
  NlwInverterBlock_U1_ram_6_1_CLK : X_INV
    port map (
      I => U1_ram_6_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_1_CLK
    );
  NlwInverterBlock_U1_ram_5_4_CLK : X_INV
    port map (
      I => U1_ram_5_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_4_CLK
    );
  NlwInverterBlock_U1_ram_5_5_CLK : X_INV
    port map (
      I => U1_ram_5_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_5_CLK
    );
  NlwInverterBlock_U1_ram_6_2_CLK : X_INV
    port map (
      I => U1_ram_6_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_2_CLK
    );
  NlwInverterBlock_U1_ram_6_3_CLK : X_INV
    port map (
      I => U1_ram_6_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_3_CLK
    );
  NlwInverterBlock_U1_ram_5_6_CLK : X_INV
    port map (
      I => U1_ram_5_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_6_CLK
    );
  NlwInverterBlock_U1_ram_5_7_CLK : X_INV
    port map (
      I => U1_ram_5_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_5_7_CLK
    );
  NlwInverterBlock_U1_ram_7_0_CLK : X_INV
    port map (
      I => U1_ram_7_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_0_CLK
    );
  NlwInverterBlock_U1_ram_7_1_CLK : X_INV
    port map (
      I => U1_ram_7_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_1_CLK
    );
  NlwInverterBlock_U1_ram_6_4_CLK : X_INV
    port map (
      I => U1_ram_6_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_4_CLK
    );
  NlwInverterBlock_U1_ram_6_5_CLK : X_INV
    port map (
      I => U1_ram_6_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_5_CLK
    );
  NlwInverterBlock_U1_ram_6_6_CLK : X_INV
    port map (
      I => U1_ram_6_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_6_CLK
    );
  NlwInverterBlock_U1_ram_6_7_CLK : X_INV
    port map (
      I => U1_ram_6_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_6_7_CLK
    );
  NlwInverterBlock_U1_ram_7_2_CLK : X_INV
    port map (
      I => U1_ram_7_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_2_CLK
    );
  NlwInverterBlock_U1_ram_7_3_CLK : X_INV
    port map (
      I => U1_ram_7_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_3_CLK
    );
  NlwInverterBlock_U1_ram_10_0_CLK : X_INV
    port map (
      I => U1_ram_10_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_0_CLK
    );
  NlwInverterBlock_U1_ram_10_1_CLK : X_INV
    port map (
      I => U1_ram_10_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_1_CLK
    );
  NlwInverterBlock_U1_ram_8_0_CLK : X_INV
    port map (
      I => U1_ram_8_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_0_CLK
    );
  NlwInverterBlock_U1_ram_8_1_CLK : X_INV
    port map (
      I => U1_ram_8_1_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_1_CLK
    );
  NlwInverterBlock_U1_ram_7_4_CLK : X_INV
    port map (
      I => U1_ram_7_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_4_CLK
    );
  NlwInverterBlock_U1_ram_7_5_CLK : X_INV
    port map (
      I => U1_ram_7_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_5_CLK
    );
  NlwInverterBlock_U1_ram_10_2_CLK : X_INV
    port map (
      I => U1_ram_10_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_2_CLK
    );
  NlwInverterBlock_U1_ram_10_3_CLK : X_INV
    port map (
      I => U1_ram_10_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_3_CLK
    );
  NlwInverterBlock_U1_ram_8_2_CLK : X_INV
    port map (
      I => U1_ram_8_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_2_CLK
    );
  NlwInverterBlock_U1_ram_8_3_CLK : X_INV
    port map (
      I => U1_ram_8_3_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_8_3_CLK
    );
  NlwInverterBlock_U1_ram_7_6_CLK : X_INV
    port map (
      I => U1_ram_7_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_6_CLK
    );
  NlwInverterBlock_U1_ram_7_7_CLK : X_INV
    port map (
      I => U1_ram_7_7_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_7_7_CLK
    );
  NlwInverterBlock_U1_ram_10_4_CLK : X_INV
    port map (
      I => U1_ram_10_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_4_CLK
    );
  NlwInverterBlock_U1_ram_10_5_CLK : X_INV
    port map (
      I => U1_ram_10_5_CLKINVNOT,
      O => NlwInverterSignal_U1_ram_10_5_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

