-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2007-11-30 10:36:46 +0100 (Fri, 30 Nov 2007) $
-- $Revision: 70726 $

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_TEXTIO.all;
use STD.TEXTIO.all;

architecture buggy of tb is

--Internal signals declarations:
signal Clk             : std_logic;
signal Rst             : std_logic;
signal Key             : std_logic;
signal Car             : std_logic;
signal RadioSensor         : std_logic;
signal FailureDetect         : std_logic;
signal GreenA             : std_logic;
signal YellowA             : std_logic;
signal RedA             : std_logic;
signal FlashingYellowA         : std_logic;
signal GreenB             : std_logic;
signal YellowB             : std_logic;
signal RedB             : std_logic;
signal FlashingYellowB         : std_logic;
signal RedCrossing         : std_logic;
signal GreenCrossing         : std_logic;
signal FlashingGreenCrossing     : std_logic;

component TrafficControl is
    generic(
        N      : integer             := 3;        --counter's length (Count1)
        M      : integer             := 8;        --counter's length (Count2)
        N1     : std_logic_vector(3 downto 0)     := "0010";
        M1    : std_logic_vector(3 downto 0)     := "0100";
        M2    : std_logic_vector(3 downto 0)     := "0010";
        N3    : std_logic_vector(3 downto 0)     := "0010";
        T1    : std_logic_vector(8 downto 0)     := "000000101"
    );
      port (
          Clk             : in std_logic;
        Rst             : in std_logic;
        Key             : in std_logic;     -- Key=1 a pedestrian pushed one of the keys
        Car             : in std_logic;     -- Car=1 a car is on the road B
        RadioSensor         : in std_logic;        -- RadioSensor=1 an ambulance is on the road B
        FailureDetect         : in std_logic;        -- FailureDetect = 1 any lights element failure
        GreenA             : out std_logic;
        YellowA         : out std_logic;
        RedA             : out std_logic;
        FlashingYellowA     : out std_logic;
        GreenB             : out std_logic;
        YellowB         : out std_logic;
        RedB             : out std_logic;
        FlashingYellowB     : out std_logic;
        RedCrossing         : out std_logic;
        GreenCrossing         : out std_logic;
        FlashingGreenCrossing      : out std_logic
    );
end component;


begin

-- Unit Under Test port map
    UUT : TrafficControl
        generic map(
        N     => 3,
        M     => 8,
        N1     => "0010",
        M1     =>"0011",
        M2     =>"0001",
        N3     =>"0001",
        T1     =>"000000101"
    )
  port map(
          Clk                => Clk,
        Rst             => Rst,
        Key             => Key,
        Car             => Car,
        RadioSensor     => RadioSensor,
        FailureDetect     => FailureDetect,
        GreenA             => GreenA,
        YellowA         => YellowA,
        RedA             => RedA,
        FlashingYellowA => FlashingYellowA,
        GreenB             => GreenB,
        YellowB         => YellowB,
        RedB             => RedB,
        FlashingYellowB => FlashingYellowB,
        RedCrossing     => RedCrossing,
        GreenCrossing     => GreenCrossing,
        FlashingGreenCrossing      => FlashingGreenCrossing
    );

--file operation
process(Clk, Rst, Key, Car, RadioSensor, FailureDetect, GreenA, YellowA, RedA, FlashingYellowA, GreenB, YellowB, RedB, FlashingYellowB, RedCrossing, GreenCrossing, FlashingGreenCrossing)

    file myfile : text open write_mode is "lights.txt";
    variable out_line : LINE;
begin
    write(out_line, NOW, right, 8, ns);
    write(out_line, Clk, right, 2);
    write(out_line, Rst, right, 2);
    write(out_line, Key, right, 2);
    write(out_line, Car, right, 2);
    write(out_line, RadioSensor, right, 2);
    write(out_line, FailureDetect, right, 2);
    write(out_line, GreenA, right, 2);
    write(out_line, YellowA, right, 2);
    write(out_line, RedA, right, 2);
    write(out_line, FlashingYellowA, right, 2);
    write(out_line, GreenB, right, 2);
    write(out_line, YellowB, right, 2);
    write(out_line, RedB, right, 2);
    write(out_line, FlashingYellowB, right, 2);
    write(out_line, RedCrossing, right, 2);
    write(out_line, GreenCrossing, right, 2);
    write(out_line, FlashingGreenCrossing, right, 2);
    writeline(myfile, out_line);
end process;


CLOCK:process
begin
    Clk <= '0';
    wait for 50 ns;
    Clk <= '1';
    wait for 50 ns;
end process;

STIMUL:process
begin                 --beginning of stimulus process

    Rst <= '1';
    Key <= '0';
    Car <= '0';
    RadioSensor <= '0';
    FailureDetect <= '0';
    wait for 70 ns;
    Rst <= '0';
    wait for 290 ns;
    Car <= '1';
       wait for 480 ns;
    Car <= '0';
    wait for 570 ns;
    Car <= '1';
       wait for 1680 ns;
    Car <= '0';
    wait for 990 ns;
    RadioSensor <= '1';
       wait for 450 ns;
    RadioSensor <= '0';
       wait for 480 ns;
    Key <= '1';
       wait for 1710 ns;
    Key <= '0';
       wait for 330 ns;
    Car <= '1';
       wait for 150 ns;
    Car <= '0';
       wait for 330 ns;
    Car <= '1';
       wait for 210 ns;
    RadioSensor <= '1';
       wait for 390 ns;
    Rst <= '1';
    Car <= '0';
       wait for 30 ns;
    Rst <= '0';
       wait for 1180 ns;
    RadioSensor <= '0';
       wait for 1290 ns;
    FailureDetect <= '1';
       wait for 660 ns;
    FailureDetect <= '0';
       wait for 630 ns;
    Car <= '1';
       wait for 930 ns;
    Car <= '0';
       wait for 150 ns;
    FailureDetect <= '1';
       wait for 370 ns;
    FailureDetect <= '0';
       wait for 470 ns;
    Car <= '1';
    wait for 480 ns;
    Car <= '0';
    wait for 460 ns;
    RadioSensor <= '1';
    wait for 4 us;

end process;

end architecture;

configuration tb_buggy of tb is
    for buggy
        for UUT : TrafficControl use entity work.TrafficControl(buggy); end for;
    end for;
end configuration;
