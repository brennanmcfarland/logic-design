--
-- Written by Synplicity
-- Tue Feb 07 08:09:09 2006
--

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
library UNISIM;
use UNISIM.VCOMPONENTS.all;

entity pr_sr_register is
port(
  PORT3_OUT_1_0 :  out std_logic;
  PORT3_OUT_1_2 :  out std_logic;
  PORT3_IN_c : in std_logic_vector (0 downto 0);
  DATAS_c : in std_logic_vector (7 downto 0);
  RESET_c :  in std_logic;
  nWRS_c :  in std_logic;
  BUSY_c :  out std_logic);
end pr_sr_register;

architecture beh of pr_sr_register is
  signal REG : std_logic_vector (7 downto 0);
  signal CNT : std_logic_vector (2 downto 0);
  signal CNT_I : std_logic_vector (2 to 2);
  signal BUSY_C_INT_1 : std_logic ;
  signal BUSY_C_I : std_logic ;
  signal UN7_CNT_AXBXC1 : std_logic ;
  signal UN7_CNT_AXBXC2 : std_logic ;
  signal NN_1 : std_logic ;
  signal N_16_I : std_logic ;
  signal UN1_TXD_7_I : std_logic ;
  signal TXD_2_U_I_M2 : std_logic ;
  signal TXD_2_U_I_M4 : std_logic ;
  signal TXD_2_4_I_M2 : std_logic ;
  signal TXD_2_4_I_M2_AM : std_logic ;
  signal TXD_2_4_I_M2_BM : std_logic ;
  signal TXD_2_U_I_M4_AM : std_logic ;
  signal TXD_2_U_I_M4_BM : std_logic ;
  signal NN_2 : std_logic ;
begin
  II_BUSY_c_i: INV port map (
      I => BUSY_C_INT_1,
      O => BUSY_C_I);
  \II_REG[0]\: FDCE port map (
      Q => REG(0),
      D => DATAS_c(0),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[1]\: FDCE port map (
      Q => REG(1),
      D => DATAS_c(1),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[2]\: FDCE port map (
      Q => REG(2),
      D => DATAS_c(2),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[3]\: FDCE port map (
      Q => REG(3),
      D => DATAS_c(3),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[4]\: FDCE port map (
      Q => REG(4),
      D => DATAS_c(4),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[5]\: FDCE port map (
      Q => REG(5),
      D => DATAS_c(5),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[6]\: FDCE port map (
      Q => REG(6),
      D => DATAS_c(6),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_REG[7]\: FDCE port map (
      Q => REG(7),
      D => DATAS_c(7),
      C => nWRS_c,
      CLR => RESET_c,
      CE => BUSY_C_I);
  \II_read.cnt[2]\: FDC_1 port map (
      Q => CNT(2),
      D => CNT_I(2),
      C => PORT3_IN_c(0),
      CLR => RESET_c);
  \II_read.cnt[1]\: FDC_1 port map (
      Q => CNT(1),
      D => UN7_CNT_AXBXC1,
      C => PORT3_IN_c(0),
      CLR => RESET_c);
  \II_read.cnt[0]\: FDC_1 port map (
      Q => CNT(0),
      D => UN7_CNT_AXBXC2,
      C => PORT3_IN_c(0),
      CLR => RESET_c);
  II_INT: FDP port map (
      Q => PORT3_OUT_1_2,
      D => NN_1,
      C => nWRS_c,
      PRE => N_16_I);
  II_BUSY_INT: FDC_1 port map (
      Q => BUSY_C_INT_1,
      D => UN1_TXD_7_I,
      C => PORT3_IN_c(0),
      CLR => RESET_c);
  II_TXD: FDP_1 port map (
      Q => PORT3_OUT_1_0,
      D => TXD_2_U_I_M2,
      C => PORT3_IN_c(0),
      PRE => RESET_c);
  \II_read.cnt_i[2]\: LUT1_L 
  generic map(
    INIT => X"1"
  )
  port map (
    I0 => CNT(2),
    LO => CNT_I(2));
  II_un7_cnt_axbxc1: LUT2_L 
  generic map(
    INIT => X"6"
  )
  port map (
    I0 => CNT(1),
    I1 => CNT(2),
    LO => UN7_CNT_AXBXC1);
  II_un7_cnt_axbxc2: LUT3_L 
  generic map(
    INIT => X"6A"
  )
  port map (
    I0 => CNT(0),
    I1 => CNT(1),
    I2 => CNT(2),
    LO => UN7_CNT_AXBXC2);
  \II_read.un1_txd_7_i\: LUT3_L 
  generic map(
    INIT => X"7F"
  )
  port map (
    I0 => CNT(0),
    I1 => CNT(1),
    I2 => CNT(2),
    LO => UN1_TXD_7_I);
  \II_read.TXD_2_u_i_m2\: MUXF6 port map (
      I0 => TXD_2_U_I_M4,
      I1 => TXD_2_4_I_M2,
      S => CNT(2),
      O => TXD_2_U_I_M2);
  \II_read.TXD_2_4_i_m2\: MUXF5 port map (
      I0 => TXD_2_4_I_M2_AM,
      I1 => TXD_2_4_I_M2_BM,
      S => CNT(1),
      O => TXD_2_4_I_M2);
  \II_read.TXD_2_4_i_m2_bm\: LUT3 
  generic map(
    INIT => X"CA"
  )
  port map (
    I0 => REG(3),
    I1 => REG(7),
    I2 => CNT(0),
    O => TXD_2_4_I_M2_BM);
  \II_read.TXD_2_4_i_m2_am\: LUT3 
  generic map(
    INIT => X"CA"
  )
  port map (
    I0 => REG(1),
    I1 => REG(5),
    I2 => CNT(0),
    O => TXD_2_4_I_M2_AM);
  \II_read.TXD_2_u_i_m4\: MUXF5 port map (
      I0 => TXD_2_U_I_M4_AM,
      I1 => TXD_2_U_I_M4_BM,
      S => CNT(0),
      O => TXD_2_U_I_M4);
  \II_read.TXD_2_u_i_m4_bm\: LUT3 
  generic map(
    INIT => X"CA"
  )
  port map (
    I0 => REG(4),
    I1 => REG(6),
    I2 => CNT(1),
    O => TXD_2_U_I_M4_BM);
  \II_read.TXD_2_u_i_m4_am\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => BUSY_C_INT_1,
    I1 => REG(0),
    I2 => REG(2),
    O => TXD_2_U_I_M4_AM);
  \II_intr_ctr.N_16_i\: LUT2 
  generic map(
    INIT => X"E"
  )
  port map (
    I0 => BUSY_C_INT_1,
    I1 => RESET_c,
    O => N_16_I);
  II_GND: GND port map (
      G => NN_1);
  II_VCC: VCC port map (
      P => NN_2);
  BUSY_c <= BUSY_C_INT_1;
end beh;

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
library UNISIM;
use UNISIM.VCOMPONENTS.all;

entity ram is
port(
  PORT3_IN_c : in std_logic_vector (4 downto 3);
  PORT2_c : in std_logic_vector (7 downto 7);
  un44_data_15 : out std_logic_vector (7 downto 0);
  ADD : in std_logic_vector (3 downto 0);
  PORT0_in : in std_logic_vector (7 downto 0);
  N_181_i :  out std_logic);
end ram;

architecture beh of ram is
  signal RAM_11 : std_logic_vector (7 downto 0);
  signal RAM_9 : std_logic_vector (7 downto 0);
  signal RAM_10 : std_logic_vector (7 downto 0);
  signal RAM_7 : std_logic_vector (7 downto 0);
  signal RAM_8 : std_logic_vector (7 downto 0);
  signal RAM_5 : std_logic_vector (7 downto 0);
  signal RAM_6 : std_logic_vector (7 downto 0);
  signal RAM_3 : std_logic_vector (7 downto 0);
  signal RAM_4 : std_logic_vector (7 downto 0);
  signal RAM_1 : std_logic_vector (7 downto 0);
  signal RAM_2 : std_logic_vector (7 downto 0);
  signal RAM_15 : std_logic_vector (7 downto 0);
  signal RAM_0 : std_logic_vector (7 downto 0);
  signal RAM_13 : std_logic_vector (7 downto 0);
  signal RAM_14 : std_logic_vector (7 downto 0);
  signal RAM_12 : std_logic_vector (7 downto 0);
  signal UN44_DATA_7 : std_logic_vector (7 downto 0);
  signal UN44_DATA_14 : std_logic_vector (7 downto 0);
  signal UN44_DATA_10 : std_logic_vector (7 downto 0);
  signal UN44_DATA_13 : std_logic_vector (7 downto 0);
  signal UN44_DATA_3 : std_logic_vector (7 downto 0);
  signal UN44_DATA_6 : std_logic_vector (7 downto 0);
  signal UN44_DATA_13_AM : std_logic_vector (7 downto 0);
  signal UN44_DATA_13_BM : std_logic_vector (7 downto 0);
  signal UN44_DATA_10_AM : std_logic_vector (7 downto 0);
  signal UN44_DATA_10_BM : std_logic_vector (7 downto 0);
  signal UN44_DATA_6_AM : std_logic_vector (7 downto 0);
  signal UN44_DATA_6_BM : std_logic_vector (7 downto 0);
  signal UN44_DATA_3_AM : std_logic_vector (7 downto 0);
  signal UN44_DATA_3_BM : std_logic_vector (7 downto 0);
  signal UN1_NCS_12_0_A2 : std_logic ;
  signal UN1_NCS_10_0_A2 : std_logic ;
  signal UN1_NCS_11_0_A2 : std_logic ;
  signal UN1_NCS_8_0_A2 : std_logic ;
  signal UN1_NCS_9_0_A2 : std_logic ;
  signal UN1_NCS_6_0_A2 : std_logic ;
  signal UN1_NCS_7_0_A2 : std_logic ;
  signal UN1_NCS_4_0_A2 : std_logic ;
  signal UN1_NCS_5_0_A2 : std_logic ;
  signal UN1_NCS_2_0_A2 : std_logic ;
  signal UN1_NCS_3_0_A2 : std_logic ;
  signal UN1_NCS_16_0_A2 : std_logic ;
  signal UN1_NCS_1_0_A2 : std_logic ;
  signal UN1_NCS_14_0_A2 : std_logic ;
  signal UN1_NCS_15_0_A2 : std_logic ;
  signal UN1_NCS_13_0_A2 : std_logic ;
  signal UN1_NCS_13_0_A2_1 : std_logic ;
  signal UN1_NCS_1_0_A2_2 : std_logic ;
  signal NN_1 : std_logic ;
  signal NN_2 : std_logic ;
begin
  \II_ram_11[0]\: LD port map (
      Q => RAM_11(0),
      D => PORT0_in(0),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[1]\: LD port map (
      Q => RAM_11(1),
      D => PORT0_in(1),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[2]\: LD port map (
      Q => RAM_11(2),
      D => PORT0_in(2),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[3]\: LD port map (
      Q => RAM_11(3),
      D => PORT0_in(3),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[4]\: LD port map (
      Q => RAM_11(4),
      D => PORT0_in(4),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[5]\: LD port map (
      Q => RAM_11(5),
      D => PORT0_in(5),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[6]\: LD port map (
      Q => RAM_11(6),
      D => PORT0_in(6),
      G => UN1_NCS_12_0_A2);
  \II_ram_11[7]\: LD port map (
      Q => RAM_11(7),
      D => PORT0_in(7),
      G => UN1_NCS_12_0_A2);
  \II_ram_9[1]\: LD port map (
      Q => RAM_9(1),
      D => PORT0_in(1),
      G => UN1_NCS_10_0_A2);
  \II_ram_9[2]\: LD port map (
      Q => RAM_9(2),
      D => PORT0_in(2),
      G => UN1_NCS_10_0_A2);
  \II_ram_9[3]\: LD port map (
      Q => RAM_9(3),
      D => PORT0_in(3),
      G => UN1_NCS_10_0_A2);
  \II_ram_9[4]\: LD port map (
      Q => RAM_9(4),
      D => PORT0_in(4),
      G => UN1_NCS_10_0_A2);
  \II_ram_9[5]\: LD port map (
      Q => RAM_9(5),
      D => PORT0_in(5),
      G => UN1_NCS_10_0_A2);
  \II_ram_9[6]\: LD port map (
      Q => RAM_9(6),
      D => PORT0_in(6),
      G => UN1_NCS_10_0_A2);
  \II_ram_9[7]\: LD port map (
      Q => RAM_9(7),
      D => PORT0_in(7),
      G => UN1_NCS_10_0_A2);
  \II_ram_10[0]\: LD port map (
      Q => RAM_10(0),
      D => PORT0_in(0),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[1]\: LD port map (
      Q => RAM_10(1),
      D => PORT0_in(1),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[2]\: LD port map (
      Q => RAM_10(2),
      D => PORT0_in(2),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[3]\: LD port map (
      Q => RAM_10(3),
      D => PORT0_in(3),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[4]\: LD port map (
      Q => RAM_10(4),
      D => PORT0_in(4),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[5]\: LD port map (
      Q => RAM_10(5),
      D => PORT0_in(5),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[6]\: LD port map (
      Q => RAM_10(6),
      D => PORT0_in(6),
      G => UN1_NCS_11_0_A2);
  \II_ram_10[7]\: LD port map (
      Q => RAM_10(7),
      D => PORT0_in(7),
      G => UN1_NCS_11_0_A2);
  \II_ram_7[2]\: LD port map (
      Q => RAM_7(2),
      D => PORT0_in(2),
      G => UN1_NCS_8_0_A2);
  \II_ram_7[3]\: LD port map (
      Q => RAM_7(3),
      D => PORT0_in(3),
      G => UN1_NCS_8_0_A2);
  \II_ram_7[4]\: LD port map (
      Q => RAM_7(4),
      D => PORT0_in(4),
      G => UN1_NCS_8_0_A2);
  \II_ram_7[5]\: LD port map (
      Q => RAM_7(5),
      D => PORT0_in(5),
      G => UN1_NCS_8_0_A2);
  \II_ram_7[6]\: LD port map (
      Q => RAM_7(6),
      D => PORT0_in(6),
      G => UN1_NCS_8_0_A2);
  \II_ram_7[7]\: LD port map (
      Q => RAM_7(7),
      D => PORT0_in(7),
      G => UN1_NCS_8_0_A2);
  \II_ram_8[0]\: LD port map (
      Q => RAM_8(0),
      D => PORT0_in(0),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[1]\: LD port map (
      Q => RAM_8(1),
      D => PORT0_in(1),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[2]\: LD port map (
      Q => RAM_8(2),
      D => PORT0_in(2),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[3]\: LD port map (
      Q => RAM_8(3),
      D => PORT0_in(3),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[4]\: LD port map (
      Q => RAM_8(4),
      D => PORT0_in(4),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[5]\: LD port map (
      Q => RAM_8(5),
      D => PORT0_in(5),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[6]\: LD port map (
      Q => RAM_8(6),
      D => PORT0_in(6),
      G => UN1_NCS_9_0_A2);
  \II_ram_8[7]\: LD port map (
      Q => RAM_8(7),
      D => PORT0_in(7),
      G => UN1_NCS_9_0_A2);
  \II_ram_9[0]\: LD port map (
      Q => RAM_9(0),
      D => PORT0_in(0),
      G => UN1_NCS_10_0_A2);
  \II_ram_5[3]\: LD port map (
      Q => RAM_5(3),
      D => PORT0_in(3),
      G => UN1_NCS_6_0_A2);
  \II_ram_5[4]\: LD port map (
      Q => RAM_5(4),
      D => PORT0_in(4),
      G => UN1_NCS_6_0_A2);
  \II_ram_5[5]\: LD port map (
      Q => RAM_5(5),
      D => PORT0_in(5),
      G => UN1_NCS_6_0_A2);
  \II_ram_5[6]\: LD port map (
      Q => RAM_5(6),
      D => PORT0_in(6),
      G => UN1_NCS_6_0_A2);
  \II_ram_5[7]\: LD port map (
      Q => RAM_5(7),
      D => PORT0_in(7),
      G => UN1_NCS_6_0_A2);
  \II_ram_6[0]\: LD port map (
      Q => RAM_6(0),
      D => PORT0_in(0),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[1]\: LD port map (
      Q => RAM_6(1),
      D => PORT0_in(1),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[2]\: LD port map (
      Q => RAM_6(2),
      D => PORT0_in(2),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[3]\: LD port map (
      Q => RAM_6(3),
      D => PORT0_in(3),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[4]\: LD port map (
      Q => RAM_6(4),
      D => PORT0_in(4),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[5]\: LD port map (
      Q => RAM_6(5),
      D => PORT0_in(5),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[6]\: LD port map (
      Q => RAM_6(6),
      D => PORT0_in(6),
      G => UN1_NCS_7_0_A2);
  \II_ram_6[7]\: LD port map (
      Q => RAM_6(7),
      D => PORT0_in(7),
      G => UN1_NCS_7_0_A2);
  \II_ram_7[0]\: LD port map (
      Q => RAM_7(0),
      D => PORT0_in(0),
      G => UN1_NCS_8_0_A2);
  \II_ram_7[1]\: LD port map (
      Q => RAM_7(1),
      D => PORT0_in(1),
      G => UN1_NCS_8_0_A2);
  \II_ram_3[4]\: LD port map (
      Q => RAM_3(4),
      D => PORT0_in(4),
      G => UN1_NCS_4_0_A2);
  \II_ram_3[5]\: LD port map (
      Q => RAM_3(5),
      D => PORT0_in(5),
      G => UN1_NCS_4_0_A2);
  \II_ram_3[6]\: LD port map (
      Q => RAM_3(6),
      D => PORT0_in(6),
      G => UN1_NCS_4_0_A2);
  \II_ram_3[7]\: LD port map (
      Q => RAM_3(7),
      D => PORT0_in(7),
      G => UN1_NCS_4_0_A2);
  \II_ram_4[0]\: LD port map (
      Q => RAM_4(0),
      D => PORT0_in(0),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[1]\: LD port map (
      Q => RAM_4(1),
      D => PORT0_in(1),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[2]\: LD port map (
      Q => RAM_4(2),
      D => PORT0_in(2),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[3]\: LD port map (
      Q => RAM_4(3),
      D => PORT0_in(3),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[4]\: LD port map (
      Q => RAM_4(4),
      D => PORT0_in(4),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[5]\: LD port map (
      Q => RAM_4(5),
      D => PORT0_in(5),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[6]\: LD port map (
      Q => RAM_4(6),
      D => PORT0_in(6),
      G => UN1_NCS_5_0_A2);
  \II_ram_4[7]\: LD port map (
      Q => RAM_4(7),
      D => PORT0_in(7),
      G => UN1_NCS_5_0_A2);
  \II_ram_5[0]\: LD port map (
      Q => RAM_5(0),
      D => PORT0_in(0),
      G => UN1_NCS_6_0_A2);
  \II_ram_5[1]\: LD port map (
      Q => RAM_5(1),
      D => PORT0_in(1),
      G => UN1_NCS_6_0_A2);
  \II_ram_5[2]\: LD port map (
      Q => RAM_5(2),
      D => PORT0_in(2),
      G => UN1_NCS_6_0_A2);
  \II_ram_1[5]\: LD port map (
      Q => RAM_1(5),
      D => PORT0_in(5),
      G => UN1_NCS_2_0_A2);
  \II_ram_1[6]\: LD port map (
      Q => RAM_1(6),
      D => PORT0_in(6),
      G => UN1_NCS_2_0_A2);
  \II_ram_1[7]\: LD port map (
      Q => RAM_1(7),
      D => PORT0_in(7),
      G => UN1_NCS_2_0_A2);
  \II_ram_2[0]\: LD port map (
      Q => RAM_2(0),
      D => PORT0_in(0),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[1]\: LD port map (
      Q => RAM_2(1),
      D => PORT0_in(1),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[2]\: LD port map (
      Q => RAM_2(2),
      D => PORT0_in(2),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[3]\: LD port map (
      Q => RAM_2(3),
      D => PORT0_in(3),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[4]\: LD port map (
      Q => RAM_2(4),
      D => PORT0_in(4),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[5]\: LD port map (
      Q => RAM_2(5),
      D => PORT0_in(5),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[6]\: LD port map (
      Q => RAM_2(6),
      D => PORT0_in(6),
      G => UN1_NCS_3_0_A2);
  \II_ram_2[7]\: LD port map (
      Q => RAM_2(7),
      D => PORT0_in(7),
      G => UN1_NCS_3_0_A2);
  \II_ram_3[0]\: LD port map (
      Q => RAM_3(0),
      D => PORT0_in(0),
      G => UN1_NCS_4_0_A2);
  \II_ram_3[1]\: LD port map (
      Q => RAM_3(1),
      D => PORT0_in(1),
      G => UN1_NCS_4_0_A2);
  \II_ram_3[2]\: LD port map (
      Q => RAM_3(2),
      D => PORT0_in(2),
      G => UN1_NCS_4_0_A2);
  \II_ram_3[3]\: LD port map (
      Q => RAM_3(3),
      D => PORT0_in(3),
      G => UN1_NCS_4_0_A2);
  \II_ram_15[6]\: LD port map (
      Q => RAM_15(6),
      D => PORT0_in(6),
      G => UN1_NCS_16_0_A2);
  \II_ram_15[7]\: LD port map (
      Q => RAM_15(7),
      D => PORT0_in(7),
      G => UN1_NCS_16_0_A2);
  \II_ram_0[0]\: LD port map (
      Q => RAM_0(0),
      D => PORT0_in(0),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[1]\: LD port map (
      Q => RAM_0(1),
      D => PORT0_in(1),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[2]\: LD port map (
      Q => RAM_0(2),
      D => PORT0_in(2),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[3]\: LD port map (
      Q => RAM_0(3),
      D => PORT0_in(3),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[4]\: LD port map (
      Q => RAM_0(4),
      D => PORT0_in(4),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[5]\: LD port map (
      Q => RAM_0(5),
      D => PORT0_in(5),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[6]\: LD port map (
      Q => RAM_0(6),
      D => PORT0_in(6),
      G => UN1_NCS_1_0_A2);
  \II_ram_0[7]\: LD port map (
      Q => RAM_0(7),
      D => PORT0_in(7),
      G => UN1_NCS_1_0_A2);
  \II_ram_1[0]\: LD port map (
      Q => RAM_1(0),
      D => PORT0_in(0),
      G => UN1_NCS_2_0_A2);
  \II_ram_1[1]\: LD port map (
      Q => RAM_1(1),
      D => PORT0_in(1),
      G => UN1_NCS_2_0_A2);
  \II_ram_1[2]\: LD port map (
      Q => RAM_1(2),
      D => PORT0_in(2),
      G => UN1_NCS_2_0_A2);
  \II_ram_1[3]\: LD port map (
      Q => RAM_1(3),
      D => PORT0_in(3),
      G => UN1_NCS_2_0_A2);
  \II_ram_1[4]\: LD port map (
      Q => RAM_1(4),
      D => PORT0_in(4),
      G => UN1_NCS_2_0_A2);
  \II_ram_13[7]\: LD port map (
      Q => RAM_13(7),
      D => PORT0_in(7),
      G => UN1_NCS_14_0_A2);
  \II_ram_14[0]\: LD port map (
      Q => RAM_14(0),
      D => PORT0_in(0),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[1]\: LD port map (
      Q => RAM_14(1),
      D => PORT0_in(1),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[2]\: LD port map (
      Q => RAM_14(2),
      D => PORT0_in(2),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[3]\: LD port map (
      Q => RAM_14(3),
      D => PORT0_in(3),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[4]\: LD port map (
      Q => RAM_14(4),
      D => PORT0_in(4),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[5]\: LD port map (
      Q => RAM_14(5),
      D => PORT0_in(5),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[6]\: LD port map (
      Q => RAM_14(6),
      D => PORT0_in(6),
      G => UN1_NCS_15_0_A2);
  \II_ram_14[7]\: LD port map (
      Q => RAM_14(7),
      D => PORT0_in(7),
      G => UN1_NCS_15_0_A2);
  \II_ram_15[0]\: LD port map (
      Q => RAM_15(0),
      D => PORT0_in(0),
      G => UN1_NCS_16_0_A2);
  \II_ram_15[1]\: LD port map (
      Q => RAM_15(1),
      D => PORT0_in(1),
      G => UN1_NCS_16_0_A2);
  \II_ram_15[2]\: LD port map (
      Q => RAM_15(2),
      D => PORT0_in(2),
      G => UN1_NCS_16_0_A2);
  \II_ram_15[3]\: LD port map (
      Q => RAM_15(3),
      D => PORT0_in(3),
      G => UN1_NCS_16_0_A2);
  \II_ram_15[4]\: LD port map (
      Q => RAM_15(4),
      D => PORT0_in(4),
      G => UN1_NCS_16_0_A2);
  \II_ram_15[5]\: LD port map (
      Q => RAM_15(5),
      D => PORT0_in(5),
      G => UN1_NCS_16_0_A2);
  \II_ram_12[0]\: LD port map (
      Q => RAM_12(0),
      D => PORT0_in(0),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[1]\: LD port map (
      Q => RAM_12(1),
      D => PORT0_in(1),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[2]\: LD port map (
      Q => RAM_12(2),
      D => PORT0_in(2),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[3]\: LD port map (
      Q => RAM_12(3),
      D => PORT0_in(3),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[4]\: LD port map (
      Q => RAM_12(4),
      D => PORT0_in(4),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[5]\: LD port map (
      Q => RAM_12(5),
      D => PORT0_in(5),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[6]\: LD port map (
      Q => RAM_12(6),
      D => PORT0_in(6),
      G => UN1_NCS_13_0_A2);
  \II_ram_12[7]\: LD port map (
      Q => RAM_12(7),
      D => PORT0_in(7),
      G => UN1_NCS_13_0_A2);
  \II_ram_13[0]\: LD port map (
      Q => RAM_13(0),
      D => PORT0_in(0),
      G => UN1_NCS_14_0_A2);
  \II_ram_13[1]\: LD port map (
      Q => RAM_13(1),
      D => PORT0_in(1),
      G => UN1_NCS_14_0_A2);
  \II_ram_13[2]\: LD port map (
      Q => RAM_13(2),
      D => PORT0_in(2),
      G => UN1_NCS_14_0_A2);
  \II_ram_13[3]\: LD port map (
      Q => RAM_13(3),
      D => PORT0_in(3),
      G => UN1_NCS_14_0_A2);
  \II_ram_13[4]\: LD port map (
      Q => RAM_13(4),
      D => PORT0_in(4),
      G => UN1_NCS_14_0_A2);
  \II_ram_13[5]\: LD port map (
      Q => RAM_13(5),
      D => PORT0_in(5),
      G => UN1_NCS_14_0_A2);
  \II_ram_13[6]\: LD port map (
      Q => RAM_13(6),
      D => PORT0_in(6),
      G => UN1_NCS_14_0_A2);
  \II_un44_data_15[7]\: MUXF7 port map (
      I0 => UN44_DATA_7(7),
      I1 => UN44_DATA_14(7),
      S => ADD(0),
      O => un44_data_15(7));
  \II_un44_data_15[6]\: MUXF7 port map (
      I0 => UN44_DATA_7(6),
      I1 => UN44_DATA_14(6),
      S => ADD(0),
      O => un44_data_15(6));
  \II_un44_data_15[5]\: MUXF7 port map (
      I0 => UN44_DATA_7(5),
      I1 => UN44_DATA_14(5),
      S => ADD(0),
      O => un44_data_15(5));
  \II_un44_data_15[4]\: MUXF7 port map (
      I0 => UN44_DATA_7(4),
      I1 => UN44_DATA_14(4),
      S => ADD(0),
      O => un44_data_15(4));
  \II_un44_data_15[3]\: MUXF7 port map (
      I0 => UN44_DATA_7(3),
      I1 => UN44_DATA_14(3),
      S => ADD(0),
      O => un44_data_15(3));
  \II_un44_data_15[2]\: MUXF7 port map (
      I0 => UN44_DATA_7(2),
      I1 => UN44_DATA_14(2),
      S => ADD(0),
      O => un44_data_15(2));
  \II_un44_data_15[1]\: MUXF7 port map (
      I0 => UN44_DATA_7(1),
      I1 => UN44_DATA_14(1),
      S => ADD(0),
      O => un44_data_15(1));
  \II_un44_data_15[0]\: MUXF7 port map (
      I0 => UN44_DATA_7(0),
      I1 => UN44_DATA_14(0),
      S => ADD(0),
      O => un44_data_15(0));
  \II_un44_data_14[7]\: MUXF6 port map (
      I0 => UN44_DATA_10(7),
      I1 => UN44_DATA_13(7),
      S => ADD(1),
      O => UN44_DATA_14(7));
  \II_un44_data_14[6]\: MUXF6 port map (
      I0 => UN44_DATA_10(6),
      I1 => UN44_DATA_13(6),
      S => ADD(1),
      O => UN44_DATA_14(6));
  \II_un44_data_14[5]\: MUXF6 port map (
      I0 => UN44_DATA_10(5),
      I1 => UN44_DATA_13(5),
      S => ADD(1),
      O => UN44_DATA_14(5));
  \II_un44_data_14[4]\: MUXF6 port map (
      I0 => UN44_DATA_10(4),
      I1 => UN44_DATA_13(4),
      S => ADD(1),
      O => UN44_DATA_14(4));
  \II_un44_data_14[3]\: MUXF6 port map (
      I0 => UN44_DATA_10(3),
      I1 => UN44_DATA_13(3),
      S => ADD(1),
      O => UN44_DATA_14(3));
  \II_un44_data_14[2]\: MUXF6 port map (
      I0 => UN44_DATA_10(2),
      I1 => UN44_DATA_13(2),
      S => ADD(1),
      O => UN44_DATA_14(2));
  \II_un44_data_14[1]\: MUXF6 port map (
      I0 => UN44_DATA_10(1),
      I1 => UN44_DATA_13(1),
      S => ADD(1),
      O => UN44_DATA_14(1));
  \II_un44_data_14[0]\: MUXF6 port map (
      I0 => UN44_DATA_10(0),
      I1 => UN44_DATA_13(0),
      S => ADD(1),
      O => UN44_DATA_14(0));
  \II_un44_data_7[7]\: MUXF6 port map (
      I0 => UN44_DATA_3(7),
      I1 => UN44_DATA_6(7),
      S => ADD(1),
      O => UN44_DATA_7(7));
  \II_un44_data_7[6]\: MUXF6 port map (
      I0 => UN44_DATA_3(6),
      I1 => UN44_DATA_6(6),
      S => ADD(1),
      O => UN44_DATA_7(6));
  \II_un44_data_7[5]\: MUXF6 port map (
      I0 => UN44_DATA_3(5),
      I1 => UN44_DATA_6(5),
      S => ADD(1),
      O => UN44_DATA_7(5));
  \II_un44_data_7[4]\: MUXF6 port map (
      I0 => UN44_DATA_3(4),
      I1 => UN44_DATA_6(4),
      S => ADD(1),
      O => UN44_DATA_7(4));
  \II_un44_data_7[3]\: MUXF6 port map (
      I0 => UN44_DATA_3(3),
      I1 => UN44_DATA_6(3),
      S => ADD(1),
      O => UN44_DATA_7(3));
  \II_un44_data_7[2]\: MUXF6 port map (
      I0 => UN44_DATA_3(2),
      I1 => UN44_DATA_6(2),
      S => ADD(1),
      O => UN44_DATA_7(2));
  \II_un44_data_7[1]\: MUXF6 port map (
      I0 => UN44_DATA_3(1),
      I1 => UN44_DATA_6(1),
      S => ADD(1),
      O => UN44_DATA_7(1));
  \II_un44_data_7[0]\: MUXF6 port map (
      I0 => UN44_DATA_3(0),
      I1 => UN44_DATA_6(0),
      S => ADD(1),
      O => UN44_DATA_7(0));
  II_un1_ncs_16_0_a2: LUT4 
  generic map(
    INIT => X"8000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_16_0_A2);
  II_un1_ncs_15_0_a2: LUT4 
  generic map(
    INIT => X"4000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_15_0_A2);
  II_un1_ncs_14_0_a2: LUT4 
  generic map(
    INIT => X"2000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_14_0_A2);
  II_un1_ncs_13_0_a2: LUT4 
  generic map(
    INIT => X"1000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_13_0_A2);
  II_un1_ncs_12_0_a2: LUT4 
  generic map(
    INIT => X"0800"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_12_0_A2);
  II_un1_ncs_11_0_a2: LUT4 
  generic map(
    INIT => X"0400"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_11_0_A2);
  II_un1_ncs_10_0_a2: LUT4 
  generic map(
    INIT => X"0200"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_10_0_A2);
  II_un1_ncs_9_0_a2: LUT4 
  generic map(
    INIT => X"0100"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_13_0_A2_1,
    O => UN1_NCS_9_0_A2);
  II_un1_ncs_8_0_a2: LUT4 
  generic map(
    INIT => X"8000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_8_0_A2);
  II_un1_ncs_7_0_a2: LUT4 
  generic map(
    INIT => X"4000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_7_0_A2);
  II_un1_ncs_6_0_a2: LUT4 
  generic map(
    INIT => X"2000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_6_0_A2);
  II_un1_ncs_5_0_a2: LUT4 
  generic map(
    INIT => X"1000"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_5_0_A2);
  II_un1_ncs_4_0_a2: LUT4 
  generic map(
    INIT => X"0800"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_4_0_A2);
  II_un1_ncs_3_0_a2: LUT4 
  generic map(
    INIT => X"0400"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_3_0_A2);
  II_un1_ncs_2_0_a2: LUT4 
  generic map(
    INIT => X"0200"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_2_0_A2);
  II_un1_ncs_1_0_a2: LUT4 
  generic map(
    INIT => X"0100"
  )
  port map (
    I0 => ADD(0),
    I1 => ADD(1),
    I2 => ADD(2),
    I3 => UN1_NCS_1_0_A2_2,
    O => UN1_NCS_1_0_A2);
  II_N_181_i: LUT3 
  generic map(
    INIT => X"FB"
  )
  port map (
    I0 => PORT2_c(7),
    I1 => PORT3_IN_c(3),
    I2 => PORT3_IN_c(4),
    O => N_181_i);
  \II_un44_data_13[7]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(7),
      I1 => UN44_DATA_13_BM(7),
      S => ADD(2),
      O => UN44_DATA_13(7));
  \II_un44_data_13_bm[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(7),
    I2 => RAM_15(7),
    O => UN44_DATA_13_BM(7));
  \II_un44_data_13_am[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(7),
    I2 => RAM_11(7),
    O => UN44_DATA_13_AM(7));
  \II_un44_data_13[6]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(6),
      I1 => UN44_DATA_13_BM(6),
      S => ADD(2),
      O => UN44_DATA_13(6));
  \II_un44_data_13_bm[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(6),
    I2 => RAM_15(6),
    O => UN44_DATA_13_BM(6));
  \II_un44_data_13_am[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(6),
    I2 => RAM_11(6),
    O => UN44_DATA_13_AM(6));
  \II_un44_data_13[5]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(5),
      I1 => UN44_DATA_13_BM(5),
      S => ADD(2),
      O => UN44_DATA_13(5));
  \II_un44_data_13_bm[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(5),
    I2 => RAM_15(5),
    O => UN44_DATA_13_BM(5));
  \II_un44_data_13_am[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(5),
    I2 => RAM_11(5),
    O => UN44_DATA_13_AM(5));
  \II_un44_data_13[4]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(4),
      I1 => UN44_DATA_13_BM(4),
      S => ADD(2),
      O => UN44_DATA_13(4));
  \II_un44_data_13_bm[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(4),
    I2 => RAM_15(4),
    O => UN44_DATA_13_BM(4));
  \II_un44_data_13_am[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(4),
    I2 => RAM_11(4),
    O => UN44_DATA_13_AM(4));
  \II_un44_data_13[3]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(3),
      I1 => UN44_DATA_13_BM(3),
      S => ADD(2),
      O => UN44_DATA_13(3));
  \II_un44_data_13_bm[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(3),
    I2 => RAM_15(3),
    O => UN44_DATA_13_BM(3));
  \II_un44_data_13_am[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(3),
    I2 => RAM_11(3),
    O => UN44_DATA_13_AM(3));
  \II_un44_data_13[2]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(2),
      I1 => UN44_DATA_13_BM(2),
      S => ADD(2),
      O => UN44_DATA_13(2));
  \II_un44_data_13_bm[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(2),
    I2 => RAM_15(2),
    O => UN44_DATA_13_BM(2));
  \II_un44_data_13_am[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(2),
    I2 => RAM_11(2),
    O => UN44_DATA_13_AM(2));
  \II_un44_data_13[1]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(1),
      I1 => UN44_DATA_13_BM(1),
      S => ADD(2),
      O => UN44_DATA_13(1));
  \II_un44_data_13_bm[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(1),
    I2 => RAM_15(1),
    O => UN44_DATA_13_BM(1));
  \II_un44_data_13_am[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(1),
    I2 => RAM_11(1),
    O => UN44_DATA_13_AM(1));
  \II_un44_data_13[0]\: MUXF5 port map (
      I0 => UN44_DATA_13_AM(0),
      I1 => UN44_DATA_13_BM(0),
      S => ADD(2),
      O => UN44_DATA_13(0));
  \II_un44_data_13_bm[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_7(0),
    I2 => RAM_15(0),
    O => UN44_DATA_13_BM(0));
  \II_un44_data_13_am[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_3(0),
    I2 => RAM_11(0),
    O => UN44_DATA_13_AM(0));
  \II_un44_data_10[7]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(7),
      I1 => UN44_DATA_10_BM(7),
      S => ADD(2),
      O => UN44_DATA_10(7));
  \II_un44_data_10_bm[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(7),
    I2 => RAM_13(7),
    O => UN44_DATA_10_BM(7));
  \II_un44_data_10_am[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(7),
    I2 => RAM_9(7),
    O => UN44_DATA_10_AM(7));
  \II_un44_data_10[6]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(6),
      I1 => UN44_DATA_10_BM(6),
      S => ADD(2),
      O => UN44_DATA_10(6));
  \II_un44_data_10_bm[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(6),
    I2 => RAM_13(6),
    O => UN44_DATA_10_BM(6));
  \II_un44_data_10_am[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(6),
    I2 => RAM_9(6),
    O => UN44_DATA_10_AM(6));
  \II_un44_data_10[5]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(5),
      I1 => UN44_DATA_10_BM(5),
      S => ADD(2),
      O => UN44_DATA_10(5));
  \II_un44_data_10_bm[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(5),
    I2 => RAM_13(5),
    O => UN44_DATA_10_BM(5));
  \II_un44_data_10_am[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(5),
    I2 => RAM_9(5),
    O => UN44_DATA_10_AM(5));
  \II_un44_data_10[4]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(4),
      I1 => UN44_DATA_10_BM(4),
      S => ADD(2),
      O => UN44_DATA_10(4));
  \II_un44_data_10_bm[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(4),
    I2 => RAM_13(4),
    O => UN44_DATA_10_BM(4));
  \II_un44_data_10_am[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(4),
    I2 => RAM_9(4),
    O => UN44_DATA_10_AM(4));
  \II_un44_data_10[3]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(3),
      I1 => UN44_DATA_10_BM(3),
      S => ADD(2),
      O => UN44_DATA_10(3));
  \II_un44_data_10_bm[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(3),
    I2 => RAM_13(3),
    O => UN44_DATA_10_BM(3));
  \II_un44_data_10_am[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(3),
    I2 => RAM_9(3),
    O => UN44_DATA_10_AM(3));
  \II_un44_data_10[2]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(2),
      I1 => UN44_DATA_10_BM(2),
      S => ADD(2),
      O => UN44_DATA_10(2));
  \II_un44_data_10_bm[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(2),
    I2 => RAM_13(2),
    O => UN44_DATA_10_BM(2));
  \II_un44_data_10_am[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(2),
    I2 => RAM_9(2),
    O => UN44_DATA_10_AM(2));
  \II_un44_data_10[1]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(1),
      I1 => UN44_DATA_10_BM(1),
      S => ADD(2),
      O => UN44_DATA_10(1));
  \II_un44_data_10_bm[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(1),
    I2 => RAM_13(1),
    O => UN44_DATA_10_BM(1));
  \II_un44_data_10_am[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(1),
    I2 => RAM_9(1),
    O => UN44_DATA_10_AM(1));
  \II_un44_data_10[0]\: MUXF5 port map (
      I0 => UN44_DATA_10_AM(0),
      I1 => UN44_DATA_10_BM(0),
      S => ADD(2),
      O => UN44_DATA_10(0));
  \II_un44_data_10_bm[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_5(0),
    I2 => RAM_13(0),
    O => UN44_DATA_10_BM(0));
  \II_un44_data_10_am[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_1(0),
    I2 => RAM_9(0),
    O => UN44_DATA_10_AM(0));
  \II_un44_data_6[7]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(7),
      I1 => UN44_DATA_6_BM(7),
      S => ADD(2),
      O => UN44_DATA_6(7));
  \II_un44_data_6_bm[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(7),
    I2 => RAM_14(7),
    O => UN44_DATA_6_BM(7));
  \II_un44_data_6_am[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(7),
    I2 => RAM_10(7),
    O => UN44_DATA_6_AM(7));
  \II_un44_data_6[6]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(6),
      I1 => UN44_DATA_6_BM(6),
      S => ADD(2),
      O => UN44_DATA_6(6));
  \II_un44_data_6_bm[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(6),
    I2 => RAM_14(6),
    O => UN44_DATA_6_BM(6));
  \II_un44_data_6_am[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(6),
    I2 => RAM_10(6),
    O => UN44_DATA_6_AM(6));
  \II_un44_data_6[5]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(5),
      I1 => UN44_DATA_6_BM(5),
      S => ADD(2),
      O => UN44_DATA_6(5));
  \II_un44_data_6_bm[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(5),
    I2 => RAM_14(5),
    O => UN44_DATA_6_BM(5));
  \II_un44_data_6_am[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(5),
    I2 => RAM_10(5),
    O => UN44_DATA_6_AM(5));
  \II_un44_data_6[4]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(4),
      I1 => UN44_DATA_6_BM(4),
      S => ADD(2),
      O => UN44_DATA_6(4));
  \II_un44_data_6_bm[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(4),
    I2 => RAM_14(4),
    O => UN44_DATA_6_BM(4));
  \II_un44_data_6_am[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(4),
    I2 => RAM_10(4),
    O => UN44_DATA_6_AM(4));
  \II_un44_data_6[3]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(3),
      I1 => UN44_DATA_6_BM(3),
      S => ADD(2),
      O => UN44_DATA_6(3));
  \II_un44_data_6_bm[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(3),
    I2 => RAM_14(3),
    O => UN44_DATA_6_BM(3));
  \II_un44_data_6_am[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(3),
    I2 => RAM_10(3),
    O => UN44_DATA_6_AM(3));
  \II_un44_data_6[2]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(2),
      I1 => UN44_DATA_6_BM(2),
      S => ADD(2),
      O => UN44_DATA_6(2));
  \II_un44_data_6_bm[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(2),
    I2 => RAM_14(2),
    O => UN44_DATA_6_BM(2));
  \II_un44_data_6_am[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(2),
    I2 => RAM_10(2),
    O => UN44_DATA_6_AM(2));
  \II_un44_data_6[1]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(1),
      I1 => UN44_DATA_6_BM(1),
      S => ADD(2),
      O => UN44_DATA_6(1));
  \II_un44_data_6_bm[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(1),
    I2 => RAM_14(1),
    O => UN44_DATA_6_BM(1));
  \II_un44_data_6_am[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(1),
    I2 => RAM_10(1),
    O => UN44_DATA_6_AM(1));
  \II_un44_data_6[0]\: MUXF5 port map (
      I0 => UN44_DATA_6_AM(0),
      I1 => UN44_DATA_6_BM(0),
      S => ADD(2),
      O => UN44_DATA_6(0));
  \II_un44_data_6_bm[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_6(0),
    I2 => RAM_14(0),
    O => UN44_DATA_6_BM(0));
  \II_un44_data_6_am[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_2(0),
    I2 => RAM_10(0),
    O => UN44_DATA_6_AM(0));
  \II_un44_data_3[7]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(7),
      I1 => UN44_DATA_3_BM(7),
      S => ADD(2),
      O => UN44_DATA_3(7));
  \II_un44_data_3_bm[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(7),
    I2 => RAM_12(7),
    O => UN44_DATA_3_BM(7));
  \II_un44_data_3_am[7]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(7),
    I2 => RAM_8(7),
    O => UN44_DATA_3_AM(7));
  \II_un44_data_3[6]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(6),
      I1 => UN44_DATA_3_BM(6),
      S => ADD(2),
      O => UN44_DATA_3(6));
  \II_un44_data_3_bm[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(6),
    I2 => RAM_12(6),
    O => UN44_DATA_3_BM(6));
  \II_un44_data_3_am[6]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(6),
    I2 => RAM_8(6),
    O => UN44_DATA_3_AM(6));
  \II_un44_data_3[5]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(5),
      I1 => UN44_DATA_3_BM(5),
      S => ADD(2),
      O => UN44_DATA_3(5));
  \II_un44_data_3_bm[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(5),
    I2 => RAM_12(5),
    O => UN44_DATA_3_BM(5));
  \II_un44_data_3_am[5]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(5),
    I2 => RAM_8(5),
    O => UN44_DATA_3_AM(5));
  \II_un44_data_3[4]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(4),
      I1 => UN44_DATA_3_BM(4),
      S => ADD(2),
      O => UN44_DATA_3(4));
  \II_un44_data_3_bm[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(4),
    I2 => RAM_12(4),
    O => UN44_DATA_3_BM(4));
  \II_un44_data_3_am[4]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(4),
    I2 => RAM_8(4),
    O => UN44_DATA_3_AM(4));
  \II_un44_data_3[3]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(3),
      I1 => UN44_DATA_3_BM(3),
      S => ADD(2),
      O => UN44_DATA_3(3));
  \II_un44_data_3_bm[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(3),
    I2 => RAM_12(3),
    O => UN44_DATA_3_BM(3));
  \II_un44_data_3_am[3]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(3),
    I2 => RAM_8(3),
    O => UN44_DATA_3_AM(3));
  \II_un44_data_3[2]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(2),
      I1 => UN44_DATA_3_BM(2),
      S => ADD(2),
      O => UN44_DATA_3(2));
  \II_un44_data_3_bm[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(2),
    I2 => RAM_12(2),
    O => UN44_DATA_3_BM(2));
  \II_un44_data_3_am[2]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(2),
    I2 => RAM_8(2),
    O => UN44_DATA_3_AM(2));
  \II_un44_data_3[1]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(1),
      I1 => UN44_DATA_3_BM(1),
      S => ADD(2),
      O => UN44_DATA_3(1));
  \II_un44_data_3_bm[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(1),
    I2 => RAM_12(1),
    O => UN44_DATA_3_BM(1));
  \II_un44_data_3_am[1]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(1),
    I2 => RAM_8(1),
    O => UN44_DATA_3_AM(1));
  \II_un44_data_3[0]\: MUXF5 port map (
      I0 => UN44_DATA_3_AM(0),
      I1 => UN44_DATA_3_BM(0),
      S => ADD(2),
      O => UN44_DATA_3(0));
  \II_un44_data_3_bm[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_4(0),
    I2 => RAM_12(0),
    O => UN44_DATA_3_BM(0));
  \II_un44_data_3_am[0]\: LUT3 
  generic map(
    INIT => X"E4"
  )
  port map (
    I0 => ADD(3),
    I1 => RAM_0(0),
    I2 => RAM_8(0),
    O => UN44_DATA_3_AM(0));
  II_un1_ncs_13_0_a2_1: LUT3 
  generic map(
    INIT => X"02"
  )
  port map (
    I0 => ADD(3),
    I1 => PORT2_c(7),
    I2 => PORT3_IN_c(3),
    O => UN1_NCS_13_0_A2_1);
  II_un1_ncs_1_0_a2_2: LUT3 
  generic map(
    INIT => X"01"
  )
  port map (
    I0 => ADD(3),
    I1 => PORT2_c(7),
    I2 => PORT3_IN_c(3),
    O => UN1_NCS_1_0_A2_2);
  II_GND: GND port map (
      G => NN_1);
  II_VCC: VCC port map (
      P => NN_2);
end beh;

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
library UNISIM;
use UNISIM.VCOMPONENTS.all;

entity Latch is
port(
  PORT0_in : in std_logic_vector (4 downto 0);
  ADD : out std_logic_vector (4 downto 0);
  ALE_c :  in std_logic);
end Latch;

architecture beh of Latch is
  signal NN_1 : std_logic ;
  signal NN_2 : std_logic ;
begin
  \II_OUTP[0]\: LD port map (
      Q => ADD(0),
      D => PORT0_in(0),
      G => ALE_c);
  \II_OUTP[1]\: LD port map (
      Q => ADD(1),
      D => PORT0_in(1),
      G => ALE_c);
  \II_OUTP[2]\: LD port map (
      Q => ADD(2),
      D => PORT0_in(2),
      G => ALE_c);
  \II_OUTP[3]\: LD port map (
      Q => ADD(3),
      D => PORT0_in(3),
      G => ALE_c);
  \II_OUTP[4]\: LD port map (
      Q => ADD(4),
      D => PORT0_in(4),
      G => ALE_c);
  II_GND: GND port map (
      G => NN_1);
  II_VCC: VCC port map (
      P => NN_2);
end beh;

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
library UNISIM;
use UNISIM.VCOMPONENTS.all;

entity Fpga is
port(
  ALE :  in std_logic;
  INTA :  in std_logic;
  RESET :  in std_logic;
  nWRS :  in std_logic;
  CODE : in std_logic_vector (3 downto 0);
  DATAS : in std_logic_vector (7 downto 0);
  PORT2 : in std_logic_vector (7 downto 0);
  PORT3_IN : in std_logic_vector (4 downto 0);
  ACKA :  out std_logic;
  BUSY :  out std_logic;
  CTR :  out std_logic;
  nCS :  out std_logic;
  nRD :  out std_logic;
  nWR :  out std_logic;
  ADDRESS : out std_logic_vector (4 downto 0);
  PORT1 : out std_logic_vector (3 downto 0);
  PORT3_OUT : out std_logic_vector (2 downto 0);
  PORT0 : inout std_logic_vector (7 downto 0));
end Fpga;

architecture beh of Fpga is
  signal PORT3_IN_C : std_logic_vector (4 downto 0);
  signal PORT3_OUT_1 : std_logic_vector (2 downto 0);
  signal CODE_C : std_logic_vector (3 downto 0);
  signal ADD : std_logic_vector (4 downto 0);
  signal PORT2_C : std_logic_vector (7 downto 6);
  signal PORT0_IN : std_logic_vector (7 downto 0);
  signal UN44_DATA_15 : std_logic_vector (7 downto 0);
  signal DATAS_C : std_logic_vector (7 downto 0);
  signal ALE_C : std_logic ;
  signal NWRS_C : std_logic ;
  signal NN_1 : std_logic ;
  signal INTA_C : std_logic ;
  signal BUSY_C : std_logic ;
  signal \U1.N_181_I\ : std_logic ;
  signal RESET_C : std_logic ;
  signal NN_2 : std_logic ;
  component Latch
    port(
      PORT0_in : in std_logic_vector(4 downto 0);
      ADD : out std_logic_vector(4 downto 0);
      ALE_c : in std_logic  );
  end component;
  component ram
    port(
      PORT3_IN_c : in std_logic_vector(4 downto 3);
      PORT2_c : in std_logic_vector(7 downto 7);
      un44_data_15 : out std_logic_vector(7 downto 0);
      ADD : in std_logic_vector(3 downto 0);
      PORT0_in : in std_logic_vector(7 downto 0);
      N_181_i : out std_logic  );
  end component;
  component pr_sr_register
    port(
      PORT3_OUT_1_0 : out std_logic;
      PORT3_OUT_1_2 : out std_logic;
      PORT3_IN_c : in std_logic_vector(0 downto 0);
      DATAS_c : in std_logic_vector(7 downto 0);
      RESET_c : in std_logic;
      nWRS_c : in std_logic;
      BUSY_c : out std_logic  );
  end component;
begin
  \II_PORT3_IN_ibuf[0]\: BUFGP port map (
      I => PORT3_IN(0),
      O => PORT3_IN_C(0));
  II_ALE_ibuf: BUFGP port map (
      I => ALE,
      O => ALE_C);
  II_nWRS_ibuf: BUFGP port map (
      I => nWRS,
      O => NWRS_C);
  \II_PORT3_OUT_obuf[2]\: OBUF port map (
      O => PORT3_OUT(2),
      I => PORT3_OUT_1(2));
  \II_PORT3_OUT_obuf[1]\: OBUF port map (
      O => PORT3_OUT(1),
      I => INTA_C);
  \II_PORT3_OUT_obuf[0]\: OBUF port map (
      O => PORT3_OUT(0),
      I => PORT3_OUT_1(0));
  \II_PORT1_obuf[3]\: OBUF port map (
      O => PORT1(3),
      I => CODE_C(3));
  \II_PORT1_obuf[2]\: OBUF port map (
      O => PORT1(2),
      I => CODE_C(2));
  \II_PORT1_obuf[1]\: OBUF port map (
      O => PORT1(1),
      I => CODE_C(1));
  \II_PORT1_obuf[0]\: OBUF port map (
      O => PORT1(0),
      I => CODE_C(0));
  \II_ADDRESS_obuf[4]\: OBUF port map (
      O => ADDRESS(4),
      I => ADD(4));
  \II_ADDRESS_obuf[3]\: OBUF port map (
      O => ADDRESS(3),
      I => ADD(3));
  \II_ADDRESS_obuf[2]\: OBUF port map (
      O => ADDRESS(2),
      I => ADD(2));
  \II_ADDRESS_obuf[1]\: OBUF port map (
      O => ADDRESS(1),
      I => ADD(1));
  \II_ADDRESS_obuf[0]\: OBUF port map (
      O => ADDRESS(0),
      I => ADD(0));
  II_nWR_obuf: OBUF port map (
      O => nWR,
      I => PORT3_IN_C(3));
  II_nRD_obuf: OBUF port map (
      O => nRD,
      I => PORT3_IN_C(4));
  II_nCS_obuf: OBUF port map (
      O => nCS,
      I => PORT2_C(6));
  II_CTR_obuf: OBUF port map (
      O => CTR,
      I => PORT3_IN_C(1));
  II_BUSY_obuf: OBUF port map (
      O => BUSY,
      I => BUSY_C);
  II_ACKA_obuf: OBUF port map (
      O => ACKA,
      I => PORT3_IN_C(2));
  \II_PORT0_iobuf[7]\: IOBUF port map (
      O => PORT0_IN(7),
      IO => PORT0(7),
      I => UN44_DATA_15(7),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[6]\: IOBUF port map (
      O => PORT0_IN(6),
      IO => PORT0(6),
      I => UN44_DATA_15(6),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[5]\: IOBUF port map (
      O => PORT0_IN(5),
      IO => PORT0(5),
      I => UN44_DATA_15(5),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[4]\: IOBUF port map (
      O => PORT0_IN(4),
      IO => PORT0(4),
      I => UN44_DATA_15(4),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[3]\: IOBUF port map (
      O => PORT0_IN(3),
      IO => PORT0(3),
      I => UN44_DATA_15(3),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[2]\: IOBUF port map (
      O => PORT0_IN(2),
      IO => PORT0(2),
      I => UN44_DATA_15(2),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[1]\: IOBUF port map (
      O => PORT0_IN(1),
      IO => PORT0(1),
      I => UN44_DATA_15(1),
      T => \U1.N_181_I\);
  \II_PORT0_iobuf[0]\: IOBUF port map (
      O => PORT0_IN(0),
      IO => PORT0(0),
      I => UN44_DATA_15(0),
      T => \U1.N_181_I\);
  \II_PORT3_IN_ibuf[4]\: IBUF port map (
      O => PORT3_IN_C(4),
      I => PORT3_IN(4));
  \II_PORT3_IN_ibuf[3]\: IBUF port map (
      O => PORT3_IN_C(3),
      I => PORT3_IN(3));
  \II_PORT3_IN_ibuf[2]\: IBUF port map (
      O => PORT3_IN_C(2),
      I => PORT3_IN(2));
  \II_PORT3_IN_ibuf[1]\: IBUF port map (
      O => PORT3_IN_C(1),
      I => PORT3_IN(1));
  \II_PORT2_ibuf[7]\: IBUF port map (
      O => PORT2_C(7),
      I => PORT2(7));
  \II_PORT2_ibuf[6]\: IBUF port map (
      O => PORT2_C(6),
      I => PORT2(6));
  \II_DATAS_ibuf[7]\: IBUF port map (
      O => DATAS_C(7),
      I => DATAS(7));
  \II_DATAS_ibuf[6]\: IBUF port map (
      O => DATAS_C(6),
      I => DATAS(6));
  \II_DATAS_ibuf[5]\: IBUF port map (
      O => DATAS_C(5),
      I => DATAS(5));
  \II_DATAS_ibuf[4]\: IBUF port map (
      O => DATAS_C(4),
      I => DATAS(4));
  \II_DATAS_ibuf[3]\: IBUF port map (
      O => DATAS_C(3),
      I => DATAS(3));
  \II_DATAS_ibuf[2]\: IBUF port map (
      O => DATAS_C(2),
      I => DATAS(2));
  \II_DATAS_ibuf[1]\: IBUF port map (
      O => DATAS_C(1),
      I => DATAS(1));
  \II_DATAS_ibuf[0]\: IBUF port map (
      O => DATAS_C(0),
      I => DATAS(0));
  \II_CODE_ibuf[3]\: IBUF port map (
      O => CODE_C(3),
      I => CODE(3));
  \II_CODE_ibuf[2]\: IBUF port map (
      O => CODE_C(2),
      I => CODE(2));
  \II_CODE_ibuf[1]\: IBUF port map (
      O => CODE_C(1),
      I => CODE(1));
  \II_CODE_ibuf[0]\: IBUF port map (
      O => CODE_C(0),
      I => CODE(0));
  II_RESET_ibuf: IBUF port map (
      O => RESET_C,
      I => RESET);
  II_INTA_ibuf: IBUF port map (
      O => INTA_C,
      I => INTA);
  II_U0: Latch port map (
      PORT0_in(0) => PORT0_IN(0),
      PORT0_in(1) => PORT0_IN(1),
      PORT0_in(2) => PORT0_IN(2),
      PORT0_in(3) => PORT0_IN(3),
      PORT0_in(4) => PORT0_IN(4),
      ADD(0) => ADD(0),
      ADD(1) => ADD(1),
      ADD(2) => ADD(2),
      ADD(3) => ADD(3),
      ADD(4) => ADD(4),
      ALE_c => ALE_C);
  II_U1: ram port map (
      PORT3_IN_c(3) => PORT3_IN_C(3),
      PORT3_IN_c(4) => PORT3_IN_C(4),
      PORT2_c(7) => PORT2_C(7),
      un44_data_15(0) => UN44_DATA_15(0),
      un44_data_15(1) => UN44_DATA_15(1),
      un44_data_15(2) => UN44_DATA_15(2),
      un44_data_15(3) => UN44_DATA_15(3),
      un44_data_15(4) => UN44_DATA_15(4),
      un44_data_15(5) => UN44_DATA_15(5),
      un44_data_15(6) => UN44_DATA_15(6),
      un44_data_15(7) => UN44_DATA_15(7),
      ADD(0) => ADD(0),
      ADD(1) => ADD(1),
      ADD(2) => ADD(2),
      ADD(3) => ADD(3),
      PORT0_in(0) => PORT0_IN(0),
      PORT0_in(1) => PORT0_IN(1),
      PORT0_in(2) => PORT0_IN(2),
      PORT0_in(3) => PORT0_IN(3),
      PORT0_in(4) => PORT0_IN(4),
      PORT0_in(5) => PORT0_IN(5),
      PORT0_in(6) => PORT0_IN(6),
      PORT0_in(7) => PORT0_IN(7),
      N_181_i => \U1.N_181_I\);
  II_U2: pr_sr_register port map (
      PORT3_OUT_1_0 => PORT3_OUT_1(0),
      PORT3_OUT_1_2 => PORT3_OUT_1(2),
      PORT3_IN_c(0) => PORT3_IN_C(0),
      DATAS_c(0) => DATAS_C(0),
      DATAS_c(1) => DATAS_C(1),
      DATAS_c(2) => DATAS_C(2),
      DATAS_c(3) => DATAS_C(3),
      DATAS_c(4) => DATAS_C(4),
      DATAS_c(5) => DATAS_C(5),
      DATAS_c(6) => DATAS_C(6),
      DATAS_c(7) => DATAS_C(7),
      RESET_c => RESET_C,
      nWRS_c => NWRS_C,
      BUSY_c => BUSY_C);
  II_GND: GND port map (
      G => NN_1);
  II_VCC: VCC port map (
      P => NN_2);
end beh;

