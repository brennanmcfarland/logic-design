-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2007-11-29 17:49:29 +0100 (Thu, 29 Nov 2007) $
-- $Revision: 70682 $

library ieee;
use ieee.std_logic_1164.all;

entity TrafficControl is
    generic(
        N  : integer := 3;        --counter's length (Count1)
        M  : integer := 8;        --counter's length (Count2)
        N1 : std_logic_vector(3 downto 0) := "0010";
        M1 : std_logic_vector(3 downto 0) := "0011";
        M2 : std_logic_vector(3 downto 0) := "0010";
        N3 : std_logic_vector(3 downto 0) := "0010";
        T1 : std_logic_vector(8 downto 0) := "000000101"
    );
    port (
        Clk                   : in std_logic;
        Rst                   : in std_logic;
        Key                   : in std_logic;   -- Key=1 a pedestrian pushed one of the keys
        Car                   : in std_logic;   -- Car=1 a car is on the road B
        RadioSensor           : in std_logic;   -- RadioSensor=1 an ambulance is on the road B
        FailureDetect         : in std_logic;   -- FailureDetect = 1 any lights element failure
        GreenA                : out std_logic;
        YellowA               : out std_logic;
        RedA                  : out std_logic;
        FlashingYellowA       : out std_logic;
        GreenB                : out std_logic;
        YellowB               : out std_logic;
        RedB                  : out std_logic;
        FlashingYellowB       : out std_logic;
        RedCrossing           : out std_logic;
        GreenCrossing         : out std_logic;
        FlashingGreenCrossing : out std_logic
    );
end entity;
