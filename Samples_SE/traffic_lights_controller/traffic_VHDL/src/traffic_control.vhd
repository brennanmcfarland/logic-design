-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2007-11-30 10:36:46 +0100 (Fri, 30 Nov 2007) $
-- $Revision: 70726 $

library ieee;
use ieee.std_logic_1164.all;

architecture buggy of TrafficControl is

type FSM_type is (NORMAL, YELLOW, RED1,    RED2, YELLOW_RED, FAILURE);
--FSM
signal CurrentStateReg        : std_logic_vector( 5 downto 0);
signal NextState        : FSM_type;
signal CurrentState         : FSM_type;

--inputs into registers
signal rK     : std_logic_vector( 0 downto 0);
signal rC     : std_logic_vector( 0 downto 0);
signal rR     : std_logic_vector( 0 downto 0);

signal Set     : std_logic;
signal RSet     : std_logic;

-- Counter Count1 signals
signal Load        : std_logic;
signal Enable         : std_logic;
signal DataIn         : std_logic_vector(N downto 0);
signal Count1_QOut    : std_logic_vector(N downto 0);

-- Counter Count2 signals
signal Count2_QOut             : std_logic_vector(M downto 0);
signal Load_T1                 : std_logic;
signal Zero                 : std_logic;
signal StateNormal            : std_logic;

signal F                : std_logic;
signal nextF                : std_logic;

component FFD is
      port (
          Clk  : in std_logic;
          Rst  : in std_logic;
          Set  : in std_logic;
          DIn  : in std_logic_vector;
          QOut : out std_logic_vector
      );
end component;

component Counter is
    generic(
        N     : integer := 4;    --counter length
        EN_Q0     : integer :=0;        --enable condition, 0 - EN, 1 - EN & (q>0)
        DIR     : integer :=1        --counting direction
    );
      port (
          Clk     : in std_logic;
          Rst     : in std_logic;
          Load     : in std_logic;
          Enable    : in std_logic;
          DataIn    : in std_logic_vector(N downto 0);
          QOut     : out std_logic_vector(N downto 0)
       );
end component;

begin
    --output logic
    GreenA         <= '1' when (CurrentState = NORMAL) else '0';
    YellowA     <= '1' when (CurrentState = YELLOW or CurrentState = YELLOW_RED) else '0';
    RedA         <= '1' when (CurrentState = RED1 or CurrentState = RED2 or CurrentState = YELLOW_RED) else '0';
    FlashingYellowA <= '1' when(CurrentState = FAILURE) else '0';

    GreenB         <= '1' when (CurrentState = RED1 or CurrentState = RED2 or CurrentState = YELLOW_RED) else '0';
    YellowB     <= '1' when (CurrentState = YELLOW or CurrentState = YELLOW_RED) else '0';
    RedB         <= '1' when (CurrentState = NORMAL or CurrentState = YELLOW) else '0';
    FlashingYellowB <= '1' when (CurrentState = FAILURE) else '0';

    RedCrossing     <= '1' when (CurrentState = NORMAL or CurrentState = YELLOW or CurrentState = YELLOW_RED) else '0';
    GreenCrossing     <= '1' when (CurrentState = RED1) else '0';
    FlashingGreenCrossing     <= '1' when (CurrentState = RED2) else '0';

FFD_K : FFD
    port map (
        Clk    => Clk,
        Rst    => '0',
        Set    => Key,
        DIn    => "0",
        QOut    => rK
    );
FFD_C : FFD
    port map(
        Clk    => Clk,
        Rst    => '0',
        Set    => Car,
        DIn    => "0",
        QOut    => rC
    );
FFD_R : FFD
    port map(
        Clk     => Clk,
        Rst    => '0',
        Set    => RadioSensor,
        DIn    => "0",
        QOut    => rR
    );

--FSM
-- state change on the clock
process(Clk, Rst)
begin
    if ( Rst = '1' )then
        CurrentState <= NORMAL;
        F <= '0';
    elsif falling_edge(Clk) then
        CurrentState <= NextState;
        F <= nextF;
    end if;
end process;

process(CurrentState, rst, Count1_QOut)
begin
    if rst = '1' then
        Load <= '0';
        Load_T1 <= '0';
    end if;
    if CurrentState'event then
        if (CurrentState = NORMAL) and (F = '0') then
            Load_T1 <= '1', '0' after 10 ns;
        else
            Load    <= '1', '0' after 10 ns;
        end if;
    end if;
end process;


-- state control and some temporal signals logic
process(Rst, FailureDetect, rC, rK, rR, Zero, Count2_QOut, Count1_QOut, NextState, Clk)
begin
    if Rst = '1' then
        NextState     <= NORMAL;
        DataIn        <= "0000";
    else
        case CurrentState is--NextState

        when NORMAL =>                    --Green_for_RoadA
            if FailureDetect = '1' then
                NextState <= FAILURE;
            elsif rR = "1" then         --Immediate_Transition_to_Yellow
                --ok  NextState     <= Yellow; --ok
                --
                NextState <=RED1; --bug
                DataIn         <= N1;
                nextF <= '0';
            elsif ((((rK="1") or (rC="1"))) and (Count2_QOut > T1) ) then --Conditional_Transition_to_Yellow
                -- NextState <= YELLOW; --ok
                --
                NextState <= RED1; --bug
                DataIn <= N1;
                nextF <= '0';
            else
                NextState <= Normal;
            end if;                          --End green_for_RoadA


        when YELLOW =>                    -- Yellow_for_RoadA
            if FailureDetect = '1' then
                NextState <= FAILURE;
            elsif Count1_Qout = "0000" then                -- Transition_into_RedA
                NextState     <= RED1;
                DataIn         <= M1;
                nextF <= '0';
            else
                NextState     <= YELLOW;
            end    if;                        -- End yellow_for_RoadA


        when RED1 =>                    -- Red_for_RoadA
            if FailureDetect = '1' then
                NextState <= FAILURE;
            elsif Count1_Qout = "0000" then
                    NextState <= RED2;    --Transition_into_RedA_FlashingGreenCrossing
                    DataIn <= M2;
                    nextF <= '0';
            else
                NextState <= RED1;
            end if;                        --End red_for_RoadA


        when RED2 =>                    --Red_for_RoadA_FlashingGreen_for_Crossing
            if FailureDetect = '1' then
                NextState <= FAILURE;
            elsif Count1_Qout = "0000" then            --Transition_into_Red_Yellow_A
                    NextState <= YELLOW_RED;
                    DataIn <= N3;
                    nextF <= '0';
            else
                NextState <= RED2;
            end if;                            --End red_for_RoadA_FlashingGreen_for_Crossing


        when YELLOW_RED =>                    --Yellow_and_Red_for_Road_A
            if FailureDetect = '1' then
                NextState <= FAILURE;
            elsif Count1_Qout = "0000" then            --Transition_into_NormalState
                NextState <= NORMAL;
                DataIn <= N3;
                nextF <= '0';
            else
                NextState <= YELLOW_RED;
            end    if;                                --Yellow_and_Red_for_Road_A


        --when FAILURE =>                            --Failere_Detected
        when others =>
            if FailureDetect = '1' then
                -- NextState <= FAILURE;  --ok
                --
                NextState <= YELLOW; --bug;
            else
                NextState <= NORMAL;
                    nextF <= '1';
            end if;                            --Failere_Detected

        end case;
    end if;
--end of FSM machine process

end process;

--additional signal CurrentStateReg (asserted in OVA file)
with CurrentState select
CurrentStateReg     <= "000001" when NORMAL,
                     "000010" when YELLOW,
                     "000100" when RED1,
                     "001000" when RED2,
                     "010000" when YELLOW_RED,
                     "100000" when FAILURE;


Set     <= '1' when (CurrentState = YELLOW) or (CurrentState = RED1)or(CurrentState = RED2)or (CurrentState = YELLOW_RED) else '0';
RSet     <= '1' when (CurrentState = YELLOW) or (CurrentState = RED1)or(CurrentState = RED2)or (CurrentState = YELLOW_RED) else '0';

Zero     <= '1' when (Count1_QOut = "0000") else '0';

process (Clk, Rst, Set, RSet)
begin
if falling_edge(clk) or falling_edge(RSet) or rising_edge(Rst) or rising_edge(Set) then
    if (Rst = '1') or (RSet = '0')   then
        Enable <= '0';
    elsif Set = '1' then
        Enable <= '1';
    end if;
end if;
end process;


Count1 : Counter
    generic map(
        N         =>N,
        EN_Q0    => 1,
        DIR     => 0
        )
    port map(
            Clk     => Clk,
            Rst        => Rst,
            Load    => Load,
            DataIn    => DataIn,
            Enable    => Enable,
            QOut     => Count1_QOut
        );

-- counter which counts the period t1 for green light of the road A
StateNormal <= '1' when (CurrentState = NORMAL) else '0';

Count2 : Counter
    generic map(
        N         => M,
        EN_Q0     => 0,
        DIR     => 1
        )
    port map (
        Clk        => Clk,
        Rst        => Load_T1,
        Load    => Rst,
        DataIn     => T1,
        Enable    => StateNormal,
        QOut    => Count2_QOut
        );

end architecture;
