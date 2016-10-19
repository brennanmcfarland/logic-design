-- Copyright (c) Aldec, Inc.
-- All rights reserved.
--
-- Last modified: $Date: 2007-11-30 10:36:46 +0100 (Fri, 30 Nov 2007) $
-- $Revision: 70726 $

library ieee;
use ieee.std_logic_1164.all;

entity FFD is
    port (
        Clk  : in std_logic;
        Rst  : in std_logic;
        Set  : in std_logic;
        DIn  : in std_logic_vector;
        QOut : out std_logic_vector
      );
end entity;

architecture FFD_rtl of FFD is
begin

    process (Clk, Rst, Set)
    begin
        if (Rst = '1') then
            QOut <= ( QOut'range => '0' );
        elsif ( Set = '1' ) then
            QOut <= ( QOut'range => '1' );
        elsif rising_edge(Clk) then
            QOut <= DIn;
        end if;
    end process;

end architecture;
