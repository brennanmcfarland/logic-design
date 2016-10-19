--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.31
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Thu Feb 08 12:55:45 2007
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf counter.pcf -tpw 0 -rpw 100 -s 6 -ar Structure counter.ncd time_sim.vhd 
-- Device	: 2v40cs144-6 (PRODUCTION 1.121 2006-10-19)
-- Input file	: counter.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: counter
-- Xilinx	: C:\eda\Xilinx91i
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

entity counter is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    LOAD : in STD_LOGIC := 'X'; 
    ENABLE : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    D : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end counter;

architecture Structure of counter is
  signal LOAD_IBUF_0 : STD_LOGIC; 
  signal ENABLE_IBUF_1 : STD_LOGIC; 
  signal D_0_IBUF_2 : STD_LOGIC; 
  signal D_1_IBUF_3 : STD_LOGIC; 
  signal D_2_IBUF_4 : STD_LOGIC; 
  signal D_3_IBUF_5 : STD_LOGIC; 
  signal RESET_IBUF_6 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal LOAD_INBUF : STD_LOGIC; 
  signal ENABLE_INBUF : STD_LOGIC; 
  signal D_0_INBUF : STD_LOGIC; 
  signal D_1_INBUF : STD_LOGIC; 
  signal Q_0_O : STD_LOGIC; 
  signal D_2_INBUF : STD_LOGIC; 
  signal Q_1_O : STD_LOGIC; 
  signal D_3_INBUF : STD_LOGIC; 
  signal Q_2_O : STD_LOGIC; 
  signal Q_3_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal QINT_2_DXMUX_7 : STD_LOGIC; 
  signal QINT_2_F5MUX_8 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal QINT_2_BXINV_9 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal QINT_2_CLKINVNOT : STD_LOGIC; 
  signal QINT_2_CEINV_10 : STD_LOGIC; 
  signal QINT_3_DXMUX_11 : STD_LOGIC; 
  signal QINT_3_F5MUX_12 : STD_LOGIC; 
  signal D_3_IBUF_rt_13 : STD_LOGIC; 
  signal QINT_3_BXINV_14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal QINT_3_CLKINVNOT : STD_LOGIC; 
  signal QINT_3_CEINV_15 : STD_LOGIC; 
  signal QINT_1_DXMUX_16 : STD_LOGIC; 
  signal QINT_mux0002_1_pack_1 : STD_LOGIC; 
  signal QINT_1_DYMUX_17 : STD_LOGIC; 
  signal QINT_mux0002_0_pack_1 : STD_LOGIC; 
  signal QINT_1_SRFFMUX_18 : STD_LOGIC; 
  signal QINT_1_CLKINVNOT : STD_LOGIC; 
  signal QINT_1_CEINV_19 : STD_LOGIC; 
  signal QINT_2_FFX_RSTAND_20 : STD_LOGIC; 
  signal QINT_3_FFX_RSTAND_21 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal QINT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  LOAD_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 605 ps
    )
    port map (
      I => LOAD,
      O => LOAD_INBUF
    );
  LOAD_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 605 ps
    )
    port map (
      I => LOAD_INBUF,
      O => LOAD_IBUF_0
    );
  ENABLE_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 605 ps
    )
    port map (
      I => ENABLE,
      O => ENABLE_INBUF
    );
  ENABLE_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 605 ps
    )
    port map (
      I => ENABLE_INBUF,
      O => ENABLE_IBUF_1
    );
  D_0_IBUF : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 605 ps
    )
    port map (
      I => D(0),
      O => D_0_INBUF
    );
  D_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 605 ps
    )
    port map (
      I => D_0_INBUF,
      O => D_0_IBUF_2
    );
  D_1_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 605 ps
    )
    port map (
      I => D(1),
      O => D_1_INBUF
    );
  D_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 605 ps
    )
    port map (
      I => D_1_INBUF,
      O => D_1_IBUF_3
    );
  Q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => Q_0_O,
      O => Q(0)
    );
  D_2_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => D(2),
      O => D_2_INBUF
    );
  D_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 605 ps
    )
    port map (
      I => D_2_INBUF,
      O => D_2_IBUF_4
    );
  Q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => Q_1_O,
      O => Q(1)
    );
  D_3_IBUF : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 605 ps
    )
    port map (
      I => D(3),
      O => D_3_INBUF
    );
  D_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 605 ps
    )
    port map (
      I => D_3_INBUF,
      O => D_3_IBUF_5
    );
  Q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => Q_2_O,
      O => Q(2)
    );
  Q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => Q_3_O,
      O => Q(3)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_6
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX7P"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX7P",
      PATHPULSE => 605 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX7P",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  QINT_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT_2_F5MUX_8,
      O => QINT_2_DXMUX_7
    );
  QINT_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y10"
    )
    port map (
      IA => N14,
      IB => N13,
      SEL => QINT_2_BXINV_9,
      O => QINT_2_F5MUX_8
    );
  QINT_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT(2),
      O => QINT_2_BXINV_9
    );
  QINT_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => QINT_2_CLKINVNOT
    );
  QINT_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => ENABLE_IBUF_1,
      O => QINT_2_CEINV_10
    );
  QINT_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT_3_F5MUX_12,
      O => QINT_3_DXMUX_11
    );
  QINT_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y10"
    )
    port map (
      IA => N15,
      IB => D_3_IBUF_rt_13,
      SEL => QINT_3_BXINV_14,
      O => QINT_3_F5MUX_12
    );
  QINT_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => LOAD_IBUF_0,
      O => QINT_3_BXINV_14
    );
  QINT_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => QINT_3_CLKINVNOT
    );
  QINT_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => ENABLE_IBUF_1,
      O => QINT_3_CEINV_15
    );
  QINT_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT_mux0002_1_pack_1,
      O => QINT_1_DXMUX_16
    );
  QINT_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT_mux0002_0_pack_1,
      O => QINT_1_DYMUX_17
    );
  QINT_1_SRFFMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_IBUF_6,
      O => QINT_1_SRFFMUX_18
    );
  QINT_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_BUFGP,
      O => QINT_1_CLKINVNOT
    );
  QINT_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => ENABLE_IBUF_1,
      O => QINT_1_CEINV_19
    );
  QINT_mux0002_2_2 : X_LUT4
    generic map(
      INIT => X"CCA0",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => QINT(1),
      ADR1 => D_2_IBUF_4,
      ADR2 => QINT(0),
      ADR3 => LOAD_IBUF_0,
      O => N14
    );
  QINT_mux0002_3_1 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => QINT(1),
      ADR1 => QINT(2),
      ADR2 => QINT(0),
      ADR3 => QINT(3),
      O => N15
    );
  QINT_mux0002_0_1 : X_LUT4
    generic map(
      INIT => X"BB11",
      LOC => "SLICE_X15Y11"
    )
    port map (
      ADR0 => LOAD_IBUF_0,
      ADR1 => QINT(0),
      ADR2 => VCC,
      ADR3 => D_0_IBUF_2,
      O => QINT_mux0002_0_pack_1
    );
  QINT_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"CC5F",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => QINT(1),
      ADR1 => D_2_IBUF_4,
      ADR2 => QINT(0),
      ADR3 => LOAD_IBUF_0,
      O => N13
    );
  QINT_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      I => QINT_2_DXMUX_7,
      CE => QINT_2_CEINV_10,
      CLK => QINT_2_CLKINVNOT,
      SET => GND,
      RST => QINT_2_FFX_RSTAND_20,
      O => QINT(2)
    );
  QINT_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_IBUF_6,
      O => QINT_2_FFX_RSTAND_20
    );
  D_3_IBUF_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => D_3_IBUF_5,
      O => D_3_IBUF_rt_13
    );
  QINT_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '0'
    )
    port map (
      I => QINT_3_DXMUX_11,
      CE => QINT_3_CEINV_15,
      CLK => QINT_3_CLKINVNOT,
      SET => GND,
      RST => QINT_3_FFX_RSTAND_21,
      O => QINT(3)
    );
  QINT_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => RESET_IBUF_6,
      O => QINT_3_FFX_RSTAND_21
    );
  QINT_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      I => QINT_1_DYMUX_17,
      CE => QINT_1_CEINV_19,
      CLK => QINT_1_CLKINVNOT,
      SET => GND,
      RST => QINT_1_SRFFMUX_18,
      O => QINT(0)
    );
  QINT_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"B1E4",
      LOC => "SLICE_X15Y11"
    )
    port map (
      ADR0 => LOAD_IBUF_0,
      ADR1 => QINT(0),
      ADR2 => D_1_IBUF_3,
      ADR3 => QINT(1),
      O => QINT_mux0002_1_pack_1
    );
  QINT_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      I => QINT_1_DXMUX_16,
      CE => QINT_1_CEINV_19,
      CLK => QINT_1_CLKINVNOT,
      SET => GND,
      RST => QINT_1_SRFFMUX_18,
      O => QINT(1)
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  Q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT(0),
      O => Q_0_O
    );
  Q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT(1),
      O => Q_1_O
    );
  Q_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT(2),
      O => Q_2_O
    );
  Q_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 605 ps
    )
    port map (
      I => QINT(3),
      O => Q_3_O
    );
  NlwBlock_counter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_counter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

