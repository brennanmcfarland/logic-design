-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2007-10-30 17:40:56 +0100 (Tue, 30 Oct 2007) $
-- $Revision: 68819 $

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Counter is
    generic(
        N    : integer := 4;    --counter length
        EN_Q0     : integer := 0;    --enable condition, 0 - EN, 1 - EN & (q>0)
        DIR     : integer := 1    --counting direction
    );
    port (
        Clk     : in std_logic;
        Rst     : in std_logic;
          Load     : in std_logic;
        Enable    : in std_logic;
          DataIn    : in std_logic_vector(N downto 0);
        QOut     : out std_logic_vector(N downto 0)
       );
end Counter;


architecture counter_rtl of counter is

    signal q : std_logic_vector(QOut'range);

begin

    process(Clk, Rst, Load)
    begin
        if ( Rst = '1' ) then
            q <= ( others =>'0' );
        elsif rising_edge(Load) then
            q <= DataIn;
        elsif falling_edge(Clk) then
            if ( Enable='1' and ( (EN_Q0 = 0) or ( ( EN_Q0 = 1) and (q > 0) ) ) ) then
                if DIR = 1 then
                    q <= q + 1;
                else
                    q <= q - 1;
                end if;
            end if;
        end if;
    end process;

    Qout <= q;

end counter_rtl;
