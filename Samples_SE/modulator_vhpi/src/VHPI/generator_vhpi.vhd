--
----------------------------------------------------------------------------------------------------
--
-- Title       : generator
-- Design      : modulator_vhpi
-- Author      : Aldec
-- Company     : Aldec
--
------------------------------------------------------------------------------
-- VHPI Language Interface - (C) Copyright 2004 by Aldec, Inc.
--
-- File        : generator_vhpi.vhd
-- Generated   : 3:23:32 PM Monday, August 08, 2005
-- By          : VHPI Wizard ver. 2.0
--
------------------------------------------------------------------------------
--
-- Description : Foreign architecture declaration
--
------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity generator is
	port (
		CLK : in bit;
		Freq : in integer;
		Sel : in bit_vector(1 downto 0);
		Wave : out real
	);

end generator;

architecture generator of generator is

attribute foreign of generator : architecture is "VHPI $dsn/src/VHPI/modulator_vhpi.dll;generator_model";

begin
end;
