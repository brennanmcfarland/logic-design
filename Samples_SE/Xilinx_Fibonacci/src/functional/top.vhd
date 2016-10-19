library IEEE;
use IEEE.std_logic_1164.all;

entity TOP is port ( 
	DISPA : out std_logic_vector (6 downto 0);
	DISPB : out std_logic_vector (6 downto 0);
	FIBO  : out std_logic_vector (7 downto 0);
	ENABLE: in  std_logic;
	RESET : in  std_logic;
	CLK   : in  std_logic
	
	);
end TOP;

architecture STRUCTURE of TOP is

-- components declaration

component FIB port (
	CLOCK : in  std_logic;
	RESET : in  std_logic;
	ENABLE: in  std_logic;
	FIB   : out std_logic_vector (7 downto 0);
	DISPA : out std_logic_vector (6 downto 0);
	DISPB : out std_logic_vector (6 downto 0)
	);
end component;
-- signals declaration 

begin

U1 : FIB port map(
	DISPA => DISPA,
	DISPB => DISPB,
	FIB => FIBO,
	CLOCK => CLK,
	ENABLE => ENABLE,
	RESET => RESET );

end STRUCTURE;
