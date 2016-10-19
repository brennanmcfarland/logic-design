-- 
-- VHDL Netlist
-- 
-- Design : averager
-- Program : Figaro
-- Version : Atmel 7.5 (patch level 7 applied)
-- Vendor : Atmel
-- Created : June 7, 2005 at : 11:02:44 am

library IEEE;
use IEEE.STD_LOGIC_1164.all;

use IEEE.VITAL_timing.all;

library AT40K;
use AT40K.VCOMPONENTS.all;

entity averager is
    generic ( 
      tipd_datain_7 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_6 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_5 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_4 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_3 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_2 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_1 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_datain_0 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_CLK : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns);
      tipd_R : VitalDelayType01Z := (0 ns, 0 ns, 0 ns, 0 ns, 0 ns, 0 ns)
    );
    port ( 
      datain : in STD_LOGIC_VECTOR(7 downto 0) := "XXXXXXXX";
      CLK : in STD_LOGIC := 'X';
      R : in STD_LOGIC := 'X';
      dataout : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ;

architecture figaro_implementation of averager is 

  signal board_datain: STD_LOGIC_VECTOR(7 downto 0);
  signal board_dataout: STD_LOGIC_VECTOR(7 downto 0);
  signal CLK_vhdl1: STD_LOGIC;
  signal R_vhdl2: STD_LOGIC;
  signal u1_inta_7: STD_LOGIC;
  signal inta_7: STD_LOGIC;
  signal u2_inta_0_7: STD_LOGIC;
  signal intb_7: STD_LOGIC;
  signal u3_inta_7: STD_LOGIC;
  signal intc_7: STD_LOGIC;
  signal u4_inta_7: STD_LOGIC;
  signal u1_inta_6: STD_LOGIC;
  signal inta_6: STD_LOGIC;
  signal u2_inta_0_6: STD_LOGIC;
  signal intb_6: STD_LOGIC;
  signal u3_inta_6: STD_LOGIC;
  signal intc_6: STD_LOGIC;
  signal u4_inta_6: STD_LOGIC;
  signal u4_Q_6: STD_LOGIC;
  signal u1_inta_5: STD_LOGIC;
  signal inta_5: STD_LOGIC;
  signal u2_inta_0_5: STD_LOGIC;
  signal intb_5: STD_LOGIC;
  signal u3_inta_5: STD_LOGIC;
  signal intc_5: STD_LOGIC;
  signal u4_inta_5: STD_LOGIC;
  signal u4_Q_5: STD_LOGIC;
  signal u1_inta_4: STD_LOGIC;
  signal inta_4: STD_LOGIC;
  signal u2_inta_0_4: STD_LOGIC;
  signal intb_4: STD_LOGIC;
  signal u3_inta_4: STD_LOGIC;
  signal intc_4: STD_LOGIC;
  signal u4_inta_4: STD_LOGIC;
  signal u4_Q_4: STD_LOGIC;
  signal u1_inta_3: STD_LOGIC;
  signal inta_3: STD_LOGIC;
  signal u2_inta_0_3: STD_LOGIC;
  signal intb_3: STD_LOGIC;
  signal u3_inta_3: STD_LOGIC;
  signal intc_3: STD_LOGIC;
  signal u4_inta_3: STD_LOGIC;
  signal u4_Q_3: STD_LOGIC;
  signal u1_inta_2: STD_LOGIC;
  signal inta_2: STD_LOGIC;
  signal u2_inta_0_2: STD_LOGIC;
  signal intb_2: STD_LOGIC;
  signal u3_inta_2: STD_LOGIC;
  signal intc_2: STD_LOGIC;
  signal u4_inta_2: STD_LOGIC;
  signal u4_Q_2: STD_LOGIC;
  signal u1_inta_1: STD_LOGIC;
  signal inta_1: STD_LOGIC;
  signal u2_inta_0_1: STD_LOGIC;
  signal intb_1: STD_LOGIC;
  signal u3_inta_1: STD_LOGIC;
  signal intc_1: STD_LOGIC;
  signal u4_inta_1: STD_LOGIC;
  signal u4_Q_1: STD_LOGIC;
  signal u1_inta_0: STD_LOGIC;
  signal inta_0: STD_LOGIC;
  signal u2_inta_0_0: STD_LOGIC;
  signal intb_0: STD_LOGIC;
  signal u3_inta_0: STD_LOGIC;
  signal intc_0: STD_LOGIC;
  signal u4_inta_0: STD_LOGIC;
  signal u4_Q_0: STD_LOGIC;
  signal u4_u3_carry_3_2: STD_LOGIC;
  signal u4_u3_carry_4_2: STD_LOGIC;
  signal u4_u3_carry_5_2: STD_LOGIC;
  signal u4_u3_carry_6_2: STD_LOGIC;
  signal u4_u3_carry_7_2: STD_LOGIC;
  signal u4_u3_carry_8_2: STD_LOGIC;
  signal u4_Q_7: STD_LOGIC;
  signal u6_operand2Z0Z_7: STD_LOGIC;
  signal u3_u3_carry_3_1: STD_LOGIC;
  signal u3_u3_carry_4_1: STD_LOGIC;
  signal u3_u3_carry_5_1: STD_LOGIC;
  signal u3_u3_carry_6_1: STD_LOGIC;
  signal u3_u3_carry_7_1: STD_LOGIC;
  signal u3_u3_carry_8_1: STD_LOGIC;
  signal u6_operand1Z0Z_7: STD_LOGIC;
  signal u6_operand2Z0Z_6: STD_LOGIC;
  signal u6_operand1Z0Z_6: STD_LOGIC;
  signal u6_operand2Z0Z_5: STD_LOGIC;
  signal u6_operand1Z0Z_5: STD_LOGIC;
  signal u6_operand2Z0Z_4: STD_LOGIC;
  signal u6_operand1Z0Z_4: STD_LOGIC;
  signal u6_operand2Z0Z_3: STD_LOGIC;
  signal u6_operand1Z0Z_3: STD_LOGIC;
  signal u6_operand2Z0Z_2: STD_LOGIC;
  signal u6_operand1Z0Z_2: STD_LOGIC;
  signal u6_operand2Z0Z_1: STD_LOGIC;
  signal u6_operand1Z0Z_1: STD_LOGIC;
  signal u6_operand1Z0Z_0: STD_LOGIC;
  signal u6_operand2Z0Z_0: STD_LOGIC;
  signal u6_carry_3_4: STD_LOGIC;
  signal u6_carry_4_4: STD_LOGIC;
  signal u6_carry_5_4: STD_LOGIC;
  signal u6_carry_6_4: STD_LOGIC;
  signal u6_carry_7_4: STD_LOGIC;
  signal u6_carry_8_4: STD_LOGIC;
  signal u6_carry_9_4: STD_LOGIC;
  signal u6_operand2Z0Z_8: STD_LOGIC;
  signal u6_operand1Z0Z_8: STD_LOGIC;
  signal u7_operand2Z0Z_9: STD_LOGIC;
  signal u7_operand2Z0Z_8: STD_LOGIC;
  signal u1_u3_carry_3: STD_LOGIC;
  signal u1_u3_carry_4: STD_LOGIC;
  signal u1_u3_carry_5: STD_LOGIC;
  signal u1_u3_carry_6: STD_LOGIC;
  signal u1_u3_carry_7: STD_LOGIC;
  signal u1_u3_carry_8: STD_LOGIC;
  signal u5_operand1Z0Z_8: STD_LOGIC;
  signal u2_u3_carry_3_0: STD_LOGIC;
  signal u2_u3_carry_4_0: STD_LOGIC;
  signal u2_u3_carry_5_0: STD_LOGIC;
  signal u2_u3_carry_6_0: STD_LOGIC;
  signal u2_u3_carry_7_0: STD_LOGIC;
  signal u2_u3_carry_8_0: STD_LOGIC;
  signal u5_operand2Z0Z_7: STD_LOGIC;
  signal u5_operand1Z0Z_7: STD_LOGIC;
  signal u5_operand2Z0Z_6: STD_LOGIC;
  signal u5_operand1Z0Z_6: STD_LOGIC;
  signal u5_operand2Z0Z_5: STD_LOGIC;
  signal u5_operand1Z0Z_5: STD_LOGIC;
  signal u5_operand2Z0Z_4: STD_LOGIC;
  signal u5_operand1Z0Z_4: STD_LOGIC;
  signal u5_operand2Z0Z_3: STD_LOGIC;
  signal u5_operand1Z0Z_3: STD_LOGIC;
  signal u5_operand2Z0Z_2: STD_LOGIC;
  signal u5_operand1Z0Z_2: STD_LOGIC;
  signal u5_operand2Z0Z_1: STD_LOGIC;
  signal u5_operand1Z0Z_1: STD_LOGIC;
  signal u5_operand1Z0Z_0: STD_LOGIC;
  signal u5_operand2Z0Z_0: STD_LOGIC;
  signal u5_carry_3_3: STD_LOGIC;
  signal u5_carry_4_3: STD_LOGIC;
  signal u5_carry_5_3: STD_LOGIC;
  signal u5_carry_6_3: STD_LOGIC;
  signal u5_carry_7_3: STD_LOGIC;
  signal u5_carry_8_3: STD_LOGIC;
  signal u5_carry_9_3: STD_LOGIC;
  signal u5_operand2Z0Z_8: STD_LOGIC;
  signal u7_operand1Z0Z_8: STD_LOGIC;
  signal u7_operand2Z0Z_7: STD_LOGIC;
  signal u7_operand1Z0Z_7: STD_LOGIC;
  signal u7_operand2Z0Z_6: STD_LOGIC;
  signal u7_operand1Z0Z_6: STD_LOGIC;
  signal u7_operand2Z0Z_5: STD_LOGIC;
  signal u7_operand1Z0Z_5: STD_LOGIC;
  signal u7_operand2Z0Z_4: STD_LOGIC;
  signal u7_operand1Z0Z_4: STD_LOGIC;
  signal u7_operand2Z0Z_3: STD_LOGIC;
  signal u7_operand1Z0Z_3: STD_LOGIC;
  signal u7_operand2Z0Z_2: STD_LOGIC;
  signal u7_operand1Z0Z_2: STD_LOGIC;
  signal u7_operand2Z0Z_1: STD_LOGIC;
  signal u7_operand1Z0Z_1: STD_LOGIC;
  signal u7_operand1Z0Z_0: STD_LOGIC;
  signal u7_operand2Z0Z_0: STD_LOGIC;
  signal u7_carry_3_5: STD_LOGIC;
  signal carry_4_5: STD_LOGIC;
  signal carry_5_5: STD_LOGIC;
  signal carry_6_5: STD_LOGIC;
  signal carry_7_5: STD_LOGIC;
  signal carry_8_5: STD_LOGIC;
  signal carry_9_5: STD_LOGIC;
  signal clkarrivedZ1: STD_LOGIC;
  signal u9_pipeZ0Z_8: STD_LOGIC;
  signal u9_pipeZ0Z_7: STD_LOGIC;
  signal u9_pipeZ0Z_6: STD_LOGIC;
  signal u9_pipeZ0Z_5: STD_LOGIC;
  signal u9_pipeZ0Z_4: STD_LOGIC;
  signal u9_pipeZ0Z_3: STD_LOGIC;
  signal u9_pipeZ0Z_2: STD_LOGIC;
  signal u9_pipeZ0Z_1: STD_LOGIC;
  signal enable: STD_LOGIC;
  signal u8_Q_4_7: STD_LOGIC;
  signal u7_operand1Z0Z_9: STD_LOGIC;
  signal dataout_c_7: STD_LOGIC;
  signal fig1631: STD_LOGIC;
  signal dataout_c_6: STD_LOGIC;
  signal dataout_c_5: STD_LOGIC;
  signal dataout_c_4: STD_LOGIC;
  signal dataout_c_3: STD_LOGIC;
  signal dataout_c_2: STD_LOGIC;
  signal dataout_c_1: STD_LOGIC;
  signal dataout_c_0: STD_LOGIC;
  signal datain_c_7: STD_LOGIC;
  signal datain_c_6: STD_LOGIC;
  signal datain_c_5: STD_LOGIC;
  signal datain_c_4: STD_LOGIC;
  signal datain_c_3: STD_LOGIC;
  signal datain_c_2: STD_LOGIC;
  signal datain_c_1: STD_LOGIC;
  signal datain_c_0: STD_LOGIC;
  signal CLK_c: STD_LOGIC;
  signal R_c: STD_LOGIC;
  signal ipd_datain: STD_LOGIC_VECTOR(7 downto 0);
  signal ipd_R: STD_LOGIC; 
  signal ipd_CLK: STD_LOGIC; 
  signal one : STD_LOGIC := '1';
  signal zero : STD_LOGIC := '0';
begin
  WIRE_DELAY : block
  begin
    VitalWireDelay ( OutSig => ipd_datain(7), InSig => datain(7), twire =>  tipd_datain_7 );
    VitalWireDelay ( OutSig => ipd_datain(2), InSig => datain(2), twire =>  tipd_datain_2 );
    VitalWireDelay ( OutSig => ipd_datain(0), InSig => datain(0), twire =>  tipd_datain_0 );
    VitalWireDelay ( OutSig => ipd_datain(1), InSig => datain(1), twire =>  tipd_datain_1 );
    VitalWireDelay ( OutSig => ipd_datain(3), InSig => datain(3), twire =>  tipd_datain_3 );
    VitalWireDelay ( OutSig => ipd_R, InSig => R, twire =>  tipd_R );
    VitalWireDelay ( OutSig => ipd_datain(4), InSig => datain(4), twire =>  tipd_datain_4 );
    VitalWireDelay ( OutSig => ipd_datain(6), InSig => datain(6), twire =>  tipd_datain_6 );
    VitalWireDelay ( OutSig => ipd_CLK, InSig => CLK, twire =>  tipd_CLK );
    VitalWireDelay ( OutSig => ipd_datain(5), InSig => datain(5), twire =>  tipd_datain_5 );
  end block;
  INPUT_ASSIGNMENTS : block
  begin
    board_datain(7) <= ipd_datain(7);
    CLK_vhdl1 <= ipd_CLK;
    R_vhdl2 <= ipd_R;
    board_datain(6) <= ipd_datain(6);
    board_datain(5) <= ipd_datain(5);
    board_datain(4) <= ipd_datain(4);
    board_datain(3) <= ipd_datain(3);
    board_datain(2) <= ipd_datain(2);
    board_datain(1) <= ipd_datain(1);
    board_datain(0) <= ipd_datain(0);
  end block;
  u1_u1_Q_0_7 : PLUTR1 port map ( Y => datain_c_7, CLK => CLK_c, RS => R_c, G => u1_inta_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_7 : PLUTR1 port map ( Y => u1_inta_7, CLK => CLK_c, RS => R_c, G => inta_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_7 : PLUTR1 port map ( Y => inta_7, CLK => CLK_c, RS => R_c, G => u2_inta_0_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_7 : PLUTR1 port map ( Y => u2_inta_0_7, CLK => CLK_c, RS => R_c, G => intb_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_7 : PLUTR1 port map ( Y => intb_7, CLK => CLK_c, RS => R_c, G => u3_inta_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_7 : PLUTR1 port map ( Y => u3_inta_7, CLK => CLK_c, RS => R_c, G => intc_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_7 : PLUTR1 port map ( Y => intc_7, CLK => CLK_c, RS => R_c, G => u4_inta_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_6 : PLUTR1 port map ( Y => datain_c_6, CLK => CLK_c, RS => R_c, G => u1_inta_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_6 : PLUTR1 port map ( Y => u1_inta_6, CLK => CLK_c, RS => R_c, G => inta_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_6 : PLUTR1 port map ( Y => inta_6, CLK => CLK_c, RS => R_c, G => u2_inta_0_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_6 : PLUTR1 port map ( Y => u2_inta_0_6, CLK => CLK_c, RS => R_c, G => intb_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_6 : PLUTR1 port map ( Y => intb_6, CLK => CLK_c, RS => R_c, G => u3_inta_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_6 : PLUTR1 port map ( Y => u3_inta_6, CLK => CLK_c, RS => R_c, G => intc_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_6 : PLUTR1 port map ( Y => intc_6, CLK => CLK_c, RS => R_c, G => u4_inta_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_6 : PLUTR1 port map ( Y => u4_inta_6, CLK => CLK_c, RS => R_c, G => u4_Q_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_5 : PLUTR1 port map ( Y => datain_c_5, CLK => CLK_c, RS => R_c, G => u1_inta_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_5 : PLUTR1 port map ( Y => u1_inta_5, CLK => CLK_c, RS => R_c, G => inta_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_5 : PLUTR1 port map ( Y => inta_5, CLK => CLK_c, RS => R_c, G => u2_inta_0_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_5 : PLUTR1 port map ( Y => u2_inta_0_5, CLK => CLK_c, RS => R_c, G => intb_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_5 : PLUTR1 port map ( Y => intb_5, CLK => CLK_c, RS => R_c, G => u3_inta_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_5 : PLUTR1 port map ( Y => u3_inta_5, CLK => CLK_c, RS => R_c, G => intc_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_5 : PLUTR1 port map ( Y => intc_5, CLK => CLK_c, RS => R_c, G => u4_inta_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_5 : PLUTR1 port map ( Y => u4_inta_5, CLK => CLK_c, RS => R_c, G => u4_Q_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_4 : PLUTR1 port map ( Y => datain_c_4, CLK => CLK_c, RS => R_c, G => u1_inta_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_4 : PLUTR1 port map ( Y => u1_inta_4, CLK => CLK_c, RS => R_c, G => inta_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_4 : PLUTR1 port map ( Y => inta_4, CLK => CLK_c, RS => R_c, G => u2_inta_0_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_4 : PLUTR1 port map ( Y => u2_inta_0_4, CLK => CLK_c, RS => R_c, G => intb_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_4 : PLUTR1 port map ( Y => intb_4, CLK => CLK_c, RS => R_c, G => u3_inta_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_4 : PLUTR1 port map ( Y => u3_inta_4, CLK => CLK_c, RS => R_c, G => intc_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_4 : PLUTR1 port map ( Y => intc_4, CLK => CLK_c, RS => R_c, G => u4_inta_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_4 : PLUTR1 port map ( Y => u4_inta_4, CLK => CLK_c, RS => R_c, G => u4_Q_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_3 : PLUTR1 port map ( Y => datain_c_3, CLK => CLK_c, RS => R_c, G => u1_inta_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_3 : PLUTR1 port map ( Y => u1_inta_3, CLK => CLK_c, RS => R_c, G => inta_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_3 : PLUTR1 port map ( Y => inta_3, CLK => CLK_c, RS => R_c, G => u2_inta_0_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_3 : PLUTR1 port map ( Y => u2_inta_0_3, CLK => CLK_c, RS => R_c, G => intb_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_3 : PLUTR1 port map ( Y => intb_3, CLK => CLK_c, RS => R_c, G => u3_inta_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_3 : PLUTR1 port map ( Y => u3_inta_3, CLK => CLK_c, RS => R_c, G => intc_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_3 : PLUTR1 port map ( Y => intc_3, CLK => CLK_c, RS => R_c, G => u4_inta_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_3 : PLUTR1 port map ( Y => u4_inta_3, CLK => CLK_c, RS => R_c, G => u4_Q_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_2 : PLUTR1 port map ( Y => datain_c_2, CLK => CLK_c, RS => R_c, G => u1_inta_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_2 : PLUTR1 port map ( Y => u1_inta_2, CLK => CLK_c, RS => R_c, G => inta_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_2 : PLUTR1 port map ( Y => inta_2, CLK => CLK_c, RS => R_c, G => u2_inta_0_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_2 : PLUTR1 port map ( Y => u2_inta_0_2, CLK => CLK_c, RS => R_c, G => intb_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_2 : PLUTR1 port map ( Y => intb_2, CLK => CLK_c, RS => R_c, G => u3_inta_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_2 : PLUTR1 port map ( Y => u3_inta_2, CLK => CLK_c, RS => R_c, G => intc_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_2 : PLUTR1 port map ( Y => intc_2, CLK => CLK_c, RS => R_c, G => u4_inta_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_2 : PLUTR1 port map ( Y => u4_inta_2, CLK => CLK_c, RS => R_c, G => u4_Q_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_1 : PLUTR1 port map ( Y => datain_c_1, CLK => CLK_c, RS => R_c, G => u1_inta_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_1 : PLUTR1 port map ( Y => u1_inta_1, CLK => CLK_c, RS => R_c, G => inta_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_1 : PLUTR1 port map ( Y => inta_1, CLK => CLK_c, RS => R_c, G => u2_inta_0_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_1 : PLUTR1 port map ( Y => u2_inta_0_1, CLK => CLK_c, RS => R_c, G => intb_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_1 : PLUTR1 port map ( Y => intb_1, CLK => CLK_c, RS => R_c, G => u3_inta_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_1 : PLUTR1 port map ( Y => u3_inta_1, CLK => CLK_c, RS => R_c, G => intc_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_1 : PLUTR1 port map ( Y => intc_1, CLK => CLK_c, RS => R_c, G => u4_inta_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_1 : PLUTR1 port map ( Y => u4_inta_1, CLK => CLK_c, RS => R_c, G => u4_Q_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u1_Q_0_0 : PLUTR1 port map ( Y => datain_c_0, CLK => CLK_c, RS => R_c, G => u1_inta_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u1_u2_Q_0_0 : PLUTR1 port map ( Y => u1_inta_0, CLK => CLK_c, RS => R_c, G => inta_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u1_Q_0_0 : PLUTR1 port map ( Y => inta_0, CLK => CLK_c, RS => R_c, G => u2_inta_0_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u2_u2_Q_0_0 : PLUTR1 port map ( Y => u2_inta_0_0, CLK => CLK_c, RS => R_c, G => intb_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u1_Q_0_0 : PLUTR1 port map ( Y => intb_0, CLK => CLK_c, RS => R_c, G => u3_inta_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u3_u2_Q_0_0 : PLUTR1 port map ( Y => u3_inta_0, CLK => CLK_c, RS => R_c, G => intc_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u1_Q_0_0 : PLUTR1 port map ( Y => intc_0, CLK => CLK_c, RS => R_c, G => u4_inta_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u2_Q_0_0 : PLUTR1 port map ( Y => u4_inta_0, CLK => CLK_c, RS => R_c, G => u4_Q_0, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u4_u3_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u4_Q_1, Y => u4_inta_1, Z => u4_inta_0, W => u4_Q_0, G => u4_u3_carry_3_2,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u4_u3_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u4_Q_2, Y => u4_inta_2, Z => u4_u3_carry_3_2, G => u4_u3_carry_4_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u4_u3_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u4_Q_3, Y => u4_inta_3, Z => u4_u3_carry_4_2, G => u4_u3_carry_5_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u4_u3_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u4_Q_4, Y => u4_inta_4, Z => u4_u3_carry_5_2, G => u4_u3_carry_6_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u4_u3_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u4_Q_5, Y => u4_inta_5, Z => u4_u3_carry_6_2, G => u4_u3_carry_7_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u4_u3_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u4_Q_6, Y => u4_inta_6, Z => u4_u3_carry_7_2, G => u4_u3_carry_8_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u4_u2_Q_0_7 : PLUTR1 port map ( Y => u4_inta_7, CLK => CLK_c, RS => R_c, G => u4_Q_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u6_operand2_0_7 : PLUTR1 port map ( X => u4_inta_7, Y => u4_u3_carry_8_2, Z => u4_Q_7, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u3_u3_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u3_inta_1, Y => intc_1, Z => intc_0, W => u3_inta_0, G => u3_u3_carry_3_1,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u3_u3_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u3_inta_2, Y => intc_2, Z => u3_u3_carry_3_1, G => u3_u3_carry_4_1, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u3_u3_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u3_inta_3, Y => intc_3, Z => u3_u3_carry_4_1, G => u3_u3_carry_5_1, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u3_u3_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u3_inta_4, Y => intc_4, Z => u3_u3_carry_5_1, G => u3_u3_carry_6_1, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u3_u3_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u3_inta_5, Y => intc_5, Z => u3_u3_carry_6_1, G => u3_u3_carry_7_1, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u3_u3_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u3_inta_6, Y => intc_6, Z => u3_u3_carry_7_1, G => u3_u3_carry_8_1, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_operand1_0_7 : PLUTR1 port map ( X => intc_7, Y => u3_u3_carry_8_1, Z => u3_inta_7, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand2_0_6 : PLUTR1 port map ( X => u4_inta_6, Y => u4_u3_carry_7_2, Z => u4_Q_6, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand1_0_6 : PLUTR1 port map ( X => intc_6, Y => u3_u3_carry_7_1, Z => u3_inta_6, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand2_0_5 : PLUTR1 port map ( X => u4_inta_5, Y => u4_u3_carry_6_2, Z => u4_Q_5, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand1_0_5 : PLUTR1 port map ( X => intc_5, Y => u3_u3_carry_6_1, Z => u3_inta_5, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand2_0_4 : PLUTR1 port map ( X => u4_inta_4, Y => u4_u3_carry_5_2, Z => u4_Q_4, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand1_0_4 : PLUTR1 port map ( X => intc_4, Y => u3_u3_carry_5_1, Z => u3_inta_4, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand2_0_3 : PLUTR1 port map ( X => u4_inta_3, Y => u4_u3_carry_4_2, Z => u4_Q_3, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand1_0_3 : PLUTR1 port map ( X => intc_3, Y => u3_u3_carry_4_1, Z => u3_inta_3, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand2_0_2 : PLUTR1 port map ( X => u4_inta_2, Y => u4_u3_carry_3_2, Z => u4_Q_2, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand1_0_2 : PLUTR1 port map ( X => intc_2, Y => u3_u3_carry_3_1, Z => u3_inta_2, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u6_operand2_0_1 : PLUTR1 port map ( X => u4_inta_1, Y => u4_Q_1, Z => u4_Q_0, W => u4_inta_0, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_1,
    G10 => one ,G13 => zero ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u6_operand1_0_1 : PLUTR1 port map ( X => intc_1, Y => u3_inta_1, Z => u3_inta_0, W => intc_0, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_1,
    G10 => one ,G13 => zero ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u6_operand1_0_0 : PLUTR1 port map ( X => intc_0, Y => u3_inta_0, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_0, W => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u6_operand2_0_0 : PLUTR1 port map ( X => u4_inta_0, Y => u4_Q_0, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_0, W => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u6_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u6_operand2Z0Z_1, Y => u6_operand1Z0Z_1, Z => u6_operand1Z0Z_0, W => u6_operand2Z0Z_0, G => u6_carry_3_4,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u6_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u6_operand2Z0Z_2, Y => u6_operand1Z0Z_2, Z => u6_carry_3_4, G => u6_carry_4_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u6_operand2Z0Z_3, Y => u6_operand1Z0Z_3, Z => u6_carry_4_4, G => u6_carry_5_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u6_operand2Z0Z_4, Y => u6_operand1Z0Z_4, Z => u6_carry_5_4, G => u6_carry_6_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u6_operand2Z0Z_5, Y => u6_operand1Z0Z_5, Z => u6_carry_6_4, G => u6_carry_7_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u6_operand2Z0Z_6, Y => u6_operand1Z0Z_6, Z => u6_carry_7_4, G => u6_carry_8_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_op_plus_plus_0_carry_9 : PLUT1 port map ( X => u6_operand2Z0Z_7, Y => u6_operand1Z0Z_7, Z => u6_carry_8_4, G => u6_carry_9_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u6_operand2_0_8 : PLUTR1 port map ( X => u4_u3_carry_8_2, Y => u4_Q_7, Z => u4_inta_7, CLK => CLK_c, RS => R_c, G => u6_operand2Z0Z_8, W => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u6_operand1_0_8 : PLUTR1 port map ( X => u3_u3_carry_8_1, Y => u3_inta_7, Z => intc_7, CLK => CLK_c, RS => R_c, G => u6_operand1Z0Z_8, W => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u7_operand2_0_9 : PLUTR1 port map ( X => u6_carry_9_4, Y => u6_operand2Z0Z_8, Z => u6_operand1Z0Z_8, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_9, W => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u7_operand2_0_8 : PLUTR1 port map ( X => u6_operand1Z0Z_8, Y => u6_carry_9_4, Z => u6_operand2Z0Z_8, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_8, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u1_u3_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u1_inta_1, Y => inta_1, Z => inta_0, W => u1_inta_0, G => u1_u3_carry_3,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u1_u3_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u1_inta_2, Y => inta_2, Z => u1_u3_carry_3, G => u1_u3_carry_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u1_u3_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u1_inta_3, Y => inta_3, Z => u1_u3_carry_4, G => u1_u3_carry_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u1_u3_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u1_inta_4, Y => inta_4, Z => u1_u3_carry_5, G => u1_u3_carry_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u1_u3_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u1_inta_5, Y => inta_5, Z => u1_u3_carry_6, G => u1_u3_carry_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u1_u3_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u1_inta_6, Y => inta_6, Z => u1_u3_carry_7, G => u1_u3_carry_8, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_operand1_0_8 : PLUTR1 port map ( X => u1_u3_carry_8, Y => u1_inta_7, Z => inta_7, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_8, W => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u2_u3_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u2_inta_0_1, Y => intb_1, Z => intb_0, W => u2_inta_0_0, G => u2_u3_carry_3_0,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u2_u3_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u2_inta_0_2, Y => intb_2, Z => u2_u3_carry_3_0, G => u2_u3_carry_4_0, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u2_u3_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u2_inta_0_3, Y => intb_3, Z => u2_u3_carry_4_0, G => u2_u3_carry_5_0, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u2_u3_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u2_inta_0_4, Y => intb_4, Z => u2_u3_carry_5_0, G => u2_u3_carry_6_0, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u2_u3_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u2_inta_0_5, Y => intb_5, Z => u2_u3_carry_6_0, G => u2_u3_carry_7_0, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u2_u3_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u2_inta_0_6, Y => intb_6, Z => u2_u3_carry_7_0, G => u2_u3_carry_8_0, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_operand2_0_7 : PLUTR1 port map ( X => intb_7, Y => u2_u3_carry_8_0, Z => u2_inta_0_7, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand1_0_7 : PLUTR1 port map ( X => inta_7, Y => u1_u3_carry_8, Z => u1_inta_7, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand2_0_6 : PLUTR1 port map ( X => intb_6, Y => u2_u3_carry_7_0, Z => u2_inta_0_6, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand1_0_6 : PLUTR1 port map ( X => inta_6, Y => u1_u3_carry_7, Z => u1_inta_6, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand2_0_5 : PLUTR1 port map ( X => intb_5, Y => u2_u3_carry_6_0, Z => u2_inta_0_5, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand1_0_5 : PLUTR1 port map ( X => inta_5, Y => u1_u3_carry_6, Z => u1_inta_5, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand2_0_4 : PLUTR1 port map ( X => intb_4, Y => u2_u3_carry_5_0, Z => u2_inta_0_4, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand1_0_4 : PLUTR1 port map ( X => inta_4, Y => u1_u3_carry_5, Z => u1_inta_4, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand2_0_3 : PLUTR1 port map ( X => intb_3, Y => u2_u3_carry_4_0, Z => u2_inta_0_3, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand1_0_3 : PLUTR1 port map ( X => inta_3, Y => u1_u3_carry_4, Z => u1_inta_3, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand2_0_2 : PLUTR1 port map ( X => intb_2, Y => u2_u3_carry_3_0, Z => u2_inta_0_2, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand1_0_2 : PLUTR1 port map ( X => inta_2, Y => u1_u3_carry_3, Z => u1_inta_2, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u5_operand2_0_1 : PLUTR1 port map ( X => intb_1, Y => u2_inta_0_1, Z => u2_inta_0_0, W => intb_0, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_1,
    G10 => one ,G13 => zero ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u5_operand1_0_1 : PLUTR1 port map ( X => inta_1, Y => u1_inta_1, Z => u1_inta_0, W => inta_0, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_1,
    G10 => one ,G13 => zero ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u5_operand1_0_0 : PLUTR1 port map ( X => inta_0, Y => u1_inta_0, CLK => CLK_c, RS => R_c, G => u5_operand1Z0Z_0, W => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u5_operand2_0_0 : PLUTR1 port map ( X => intb_0, Y => u2_inta_0_0, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_0, W => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u5_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u5_operand2Z0Z_1, Y => u5_operand1Z0Z_1, Z => u5_operand1Z0Z_0, W => u5_operand2Z0Z_0, G => u5_carry_3_3,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u5_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u5_operand2Z0Z_2, Y => u5_operand1Z0Z_2, Z => u5_carry_3_3, G => u5_carry_4_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u5_operand2Z0Z_3, Y => u5_operand1Z0Z_3, Z => u5_carry_4_3, G => u5_carry_5_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u5_operand2Z0Z_4, Y => u5_operand1Z0Z_4, Z => u5_carry_5_3, G => u5_carry_6_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u5_operand2Z0Z_5, Y => u5_operand1Z0Z_5, Z => u5_carry_6_3, G => u5_carry_7_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u5_operand2Z0Z_6, Y => u5_operand1Z0Z_6, Z => u5_carry_7_3, G => u5_carry_8_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_op_plus_plus_0_carry_9 : PLUT1 port map ( X => u5_operand2Z0Z_7, Y => u5_operand1Z0Z_7, Z => u5_carry_8_3, G => u5_carry_9_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u5_operand2_0_8 : PLUTR1 port map ( X => u2_u3_carry_8_0, Y => u2_inta_0_7, Z => intb_7, CLK => CLK_c, RS => R_c, G => u5_operand2Z0Z_8, W => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u7_operand1_0_8 : PLUTR1 port map ( X => u5_operand1Z0Z_8, Y => u5_carry_9_3, Z => u5_operand2Z0Z_8, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_8, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_7 : PLUTR1 port map ( X => u6_operand1Z0Z_7, Y => u6_carry_8_4, Z => u6_operand2Z0Z_7, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand1_0_7 : PLUTR1 port map ( X => u5_operand1Z0Z_7, Y => u5_carry_8_3, Z => u5_operand2Z0Z_7, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_7, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_6 : PLUTR1 port map ( X => u6_operand1Z0Z_6, Y => u6_carry_7_4, Z => u6_operand2Z0Z_6, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand1_0_6 : PLUTR1 port map ( X => u5_operand1Z0Z_6, Y => u5_carry_7_3, Z => u5_operand2Z0Z_6, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_6, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_5 : PLUTR1 port map ( X => u6_operand1Z0Z_5, Y => u6_carry_6_4, Z => u6_operand2Z0Z_5, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand1_0_5 : PLUTR1 port map ( X => u5_operand1Z0Z_5, Y => u5_carry_6_3, Z => u5_operand2Z0Z_5, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_4 : PLUTR1 port map ( X => u6_operand1Z0Z_4, Y => u6_carry_5_4, Z => u6_operand2Z0Z_4, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand1_0_4 : PLUTR1 port map ( X => u5_operand1Z0Z_4, Y => u5_carry_5_3, Z => u5_operand2Z0Z_4, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_4, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_3 : PLUTR1 port map ( X => u6_operand1Z0Z_3, Y => u6_carry_4_4, Z => u6_operand2Z0Z_3, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand1_0_3 : PLUTR1 port map ( X => u5_operand1Z0Z_3, Y => u5_carry_4_3, Z => u5_operand2Z0Z_3, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_3, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_2 : PLUTR1 port map ( X => u6_operand1Z0Z_2, Y => u6_carry_3_4, Z => u6_operand2Z0Z_2, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand1_0_2 : PLUTR1 port map ( X => u5_operand1Z0Z_2, Y => u5_carry_3_3, Z => u5_operand2Z0Z_2, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_2, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => zero ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => one  ) ;
  u7_operand2_0_1 : PLUTR1 port map ( X => u6_operand1Z0Z_1, Y => u6_operand2Z0Z_1, Z => u6_operand2Z0Z_0, W => u6_operand1Z0Z_0, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_1,
    G10 => one ,G13 => zero ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u7_operand1_0_1 : PLUTR1 port map ( X => u5_operand1Z0Z_1, Y => u5_operand2Z0Z_1, Z => u5_operand2Z0Z_0, W => u5_operand1Z0Z_0, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_1,
    G10 => one ,G13 => zero ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u7_operand1_0_0 : PLUTR1 port map ( X => u5_operand1Z0Z_0, Y => u5_operand2Z0Z_0, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_0, W => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u7_operand2_0_0 : PLUTR1 port map ( X => u6_operand1Z0Z_0, Y => u6_operand2Z0Z_0, CLK => CLK_c, RS => R_c, G => u7_operand2Z0Z_0, W => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u7_op_plus_plus_0_carry_3 : PLUT1 port map ( X => u7_operand2Z0Z_1, Y => u7_operand1Z0Z_1, Z => u7_operand1Z0Z_0, W => u7_operand2Z0Z_0, G => u7_carry_3_5,
    G10 => one ,G13 => zero ,G5 => one ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => zero ,G6 => zero ,G14 => zero ,G3 => one ,G8 => one ,G0 => one  ) ;
  u7_op_plus_plus_0_carry_4 : PLUT1 port map ( X => u7_operand2Z0Z_2, Y => u7_operand1Z0Z_2, Z => u7_carry_3_5, G => carry_4_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u7_op_plus_plus_0_carry_5 : PLUT1 port map ( X => u7_operand2Z0Z_3, Y => u7_operand1Z0Z_3, Z => carry_4_5, G => carry_5_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u7_op_plus_plus_0_carry_6 : PLUT1 port map ( X => u7_operand2Z0Z_4, Y => u7_operand1Z0Z_4, Z => carry_5_5, G => carry_6_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u7_op_plus_plus_0_carry_7 : PLUT1 port map ( X => u7_operand2Z0Z_5, Y => u7_operand1Z0Z_5, Z => carry_6_5, G => carry_7_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u7_op_plus_plus_0_carry_8 : PLUT1 port map ( X => u7_operand2Z0Z_6, Y => u7_operand1Z0Z_6, Z => carry_7_5, G => carry_8_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u7_op_plus_plus_0_carry_9 : PLUT1 port map ( X => u7_operand2Z0Z_7, Y => u7_operand1Z0Z_7, Z => carry_8_5, G => carry_9_5, W => zero,
    G10 => one ,G13 => one ,G5 => zero ,G2 => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => zero ,G8 => one ,G0 => one  ) ;
  clkarrivedZ0 : PLUTR1 port map ( CLK => CLK_c, RS => R_c, G => clkarrivedZ1, W => zero, X => zero, Y => zero, Z => zero,
    G10 => one ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => one ,G3 => one ,RSFUNCTION => zero ,G8 => one ,G0 => one  ) ;
  u9_pipe_0_8 : PLUTR1 port map ( Y => clkarrivedZ1, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_8, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_7 : PLUTR1 port map ( Y => u9_pipeZ0Z_8, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_7, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_6 : PLUTR1 port map ( Y => u9_pipeZ0Z_7, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_6, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_5 : PLUTR1 port map ( Y => u9_pipeZ0Z_6, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_5, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_4 : PLUTR1 port map ( Y => u9_pipeZ0Z_5, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_4, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_3 : PLUTR1 port map ( Y => u9_pipeZ0Z_4, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_3, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_2 : PLUTR1 port map ( Y => u9_pipeZ0Z_3, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_2, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_1 : PLUTR1 port map ( Y => u9_pipeZ0Z_2, CLK => CLK_c, RS => R_c, G => u9_pipeZ0Z_1, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u9_pipe_0_0 : PLUTR1 port map ( Y => u9_pipeZ0Z_1, CLK => CLK_c, RS => R_c, G => enable, W => zero, X => zero, Z => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => one ,G12 => one ,G15 => one ,G4 => one ,G9 => zero ,G1 => zero ,FB => zero ,G11 => zero ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => zero ,G0 => zero  ) ;
  u8_Q_4_0_a2_7 : PLUT1 port map ( X => u7_operand2Z0Z_8, Y => u7_operand1Z0Z_8, Z => carry_9_5, W => enable, G => u8_Q_4_7,
    G10 => one ,G13 => one ,G5 => zero ,G2 => one ,G7 => zero ,G12 => one ,G15 => zero ,G4 => one ,G9 => one ,G1 => one ,FB => zero ,G11 => one ,G6 => one ,G14 => one ,G3 => zero ,G8 => one ,G0 => one  ) ;
  u7_operand1_0_9 : PLUTR1 port map ( X => u5_carry_9_3, Y => u5_operand2Z0Z_8, Z => u5_operand1Z0Z_8, CLK => CLK_c, RS => R_c, G => u7_operand1Z0Z_9, W => zero,
    G10 => zero ,G13 => one ,G5 => one ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => one ,G4 => one ,G9 => one ,G1 => zero ,FB => zero ,G11 => zero ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u8_Q_0_7 : PLUTR1 port map ( X => u7_operand2Z0Z_9, Y => u8_Q_4_7, Z => u7_operand1Z0Z_9, W => enable, CLK => CLK_c, RS => R_c, G => dataout_c_7,
    G10 => zero ,G13 => zero ,G5 => zero ,CLOCKEDGE => one ,G2 => one ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => one ,G4 => zero ,G9 => one ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  fig1630 : PLUT1 port map ( X => enable, Y => u7_operand2Z0Z_8, Z => u7_operand1Z0Z_8, W => carry_9_5, G => fig1631,
    G10 => zero ,G13 => zero ,G5 => zero ,G2 => one ,G7 => one ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => zero ,G3 => one ,G8 => zero ,G0 => zero  ) ;
  u8_Q_0_6 : PLUTR1 port map ( X => u7_operand1Z0Z_9, Y => u7_operand2Z0Z_9, Z => fig1631, W => u8_Q_4_7, CLK => CLK_c, RS => R_c, G => dataout_c_6,
    G10 => one ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => one ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => one ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => one  ) ;
  u8_Q_0_5 : PLUTR1 port map ( X => u7_operand1Z0Z_8, Y => u7_operand2Z0Z_8, Z => enable, W => carry_9_5, CLK => CLK_c, RS => R_c, G => dataout_c_5,
    G10 => zero ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u8_Q_0_4 : PLUTR1 port map ( X => u7_operand1Z0Z_7, Y => u7_operand2Z0Z_7, Z => enable, W => carry_8_5, CLK => CLK_c, RS => R_c, G => dataout_c_4,
    G10 => zero ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u8_Q_0_3 : PLUTR1 port map ( X => u7_operand1Z0Z_6, Y => u7_operand2Z0Z_6, Z => enable, W => carry_7_5, CLK => CLK_c, RS => R_c, G => dataout_c_3,
    G10 => zero ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u8_Q_0_2 : PLUTR1 port map ( X => u7_operand1Z0Z_5, Y => u7_operand2Z0Z_5, Z => enable, W => carry_6_5, CLK => CLK_c, RS => R_c, G => dataout_c_2,
    G10 => zero ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u8_Q_0_1 : PLUTR1 port map ( X => u7_operand1Z0Z_4, Y => u7_operand2Z0Z_4, Z => enable, W => carry_5_5, CLK => CLK_c, RS => R_c, G => dataout_c_1,
    G10 => zero ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  u8_Q_0_0 : PLUTR1 port map ( X => u7_operand1Z0Z_3, Y => u7_operand2Z0Z_3, Z => enable, W => carry_4_5, CLK => CLK_c, RS => R_c, G => dataout_c_0,
    G10 => zero ,G13 => one ,G5 => zero ,CLOCKEDGE => one ,G2 => zero ,RSPOLARITY => zero ,G7 => zero ,G12 => zero ,G15 => zero ,G4 => zero ,G9 => zero ,G1 => zero ,FB => zero ,G11 => one ,G6 => zero ,G14 => one ,G3 => zero ,RSFUNCTION => zero ,G8 => one ,G0 => zero  ) ;
  R_pad : RSBUF port map ( PAD => R_vhdl2, Q => R_c ); 
  dataout_pad_0 : OBUF port map ( A => dataout_c_0, PAD => board_dataout(0) ); 
  datain_pad_3 : IBUF port map ( PAD => board_datain(3), Q => datain_c_3 ); 
  datain_pad_4 : IBUF port map ( PAD => board_datain(4), Q => datain_c_4 ); 
  dataout_pad_1 : OBUF port map ( A => dataout_c_1, PAD => board_dataout(1) ); 
  datain_pad_0 : IBUF port map ( PAD => board_datain(0), Q => datain_c_0 ); 
  datain_pad_1 : IBUF port map ( PAD => board_datain(1), Q => datain_c_1 ); 
  datain_pad_2 : IBUF port map ( PAD => board_datain(2), Q => datain_c_2 ); 
  dataout_pad_2 : OBUF port map ( A => dataout_c_2, PAD => board_dataout(2) ); 
  datain_pad_7 : IBUF port map ( PAD => board_datain(7), Q => datain_c_7 ); 
  dataout_pad_3 : OBUF port map ( A => dataout_c_3, PAD => board_dataout(3) ); 
  datain_pad_6 : IBUF port map ( PAD => board_datain(6), Q => datain_c_6 ); 
  CLK_pad : GCLKBUF port map ( PAD => CLK_vhdl1, Q => CLK_c ); 
  datain_pad_5 : IBUF port map ( PAD => board_datain(5), Q => datain_c_5 ); 
  dataout_pad_5 : OBUF port map ( A => dataout_c_5, PAD => board_dataout(5) ); 
  dataout_pad_4 : OBUF port map ( A => dataout_c_4, PAD => board_dataout(4) ); 
  dataout_pad_7 : OBUF port map ( A => dataout_c_7, PAD => board_dataout(7) ); 
  dataout_pad_6 : OBUF port map ( A => dataout_c_6, PAD => board_dataout(6) ); 
  OUTPUT_ASSIGNMENTS : block
  begin
    dataout(7) <= board_dataout(7);
    dataout(6) <= board_dataout(6);
    dataout(5) <= board_dataout(5);
    dataout(4) <= board_dataout(4);
    dataout(3) <= board_dataout(3);
    dataout(2) <= board_dataout(2);
    dataout(1) <= board_dataout(1);
    dataout(0) <= board_dataout(0);
  end block;
end;

