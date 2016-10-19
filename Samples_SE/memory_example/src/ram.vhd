------------------------------------------------------------------------------------
--
-- Design unit generated by Aldec IP Core Generator, version 6.3.
-- Copyright (c) 2003-2004 by Aldec, Inc. All rights reserved.
--
------------------------------------------------------------------------------------
--
-- Created on Monday 2004-09-20, 10:47:28
--
------------------------------------------------------------------------------------
-- Details:
--		Type: Synchronous dual port Random Access Memory (RAM)
--		Word size: 8 bits
--		Memory depth: 128 words
--		Clock input CLK active high
--		Write enable input WE active high
------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ram} architecture {ram_arch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity ram is
	port (
		WE : in std_logic;
		CLK : in std_logic;
		ADDRrd : in std_logic_vector(6 downto 0);
		ADDRwr : in std_logic_vector(6 downto 0);
		DATA : in std_logic_vector (7 downto 0);
		Q : out std_logic_vector (7 downto 0)
	);
end entity;

--}} End of automatically maintained section

library IEEE;
use IEEE.std_logic_unsigned.all;

architecture ram_arch of ram is

type ram_mem_type is array (127 downto 0) of std_logic_vector (7 downto 0);
signal ram_mem : ram_mem_type;

begin

	process (CLK)
	variable ADDRwr_TEMP: integer range 127 downto 0;
	begin
		if rising_edge(CLK) then
			if (WE = '1') then
				ADDRwr_TEMP := CONV_INTEGER(ADDRwr);
				ram_mem(ADDRwr_TEMP) <= DATA;
			end if;
		end if;
	end process;

	Q <= ram_mem(CONV_INTEGER(ADDRrd));

end architecture;
