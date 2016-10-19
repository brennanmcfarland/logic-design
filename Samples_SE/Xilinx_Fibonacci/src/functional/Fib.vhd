--
-- 				    Fibonacci Generator
--			    ===================================
--
-- Generates Fibonacci pseudo-random numbers (8 bit) starting with initial values 0 and 1.
-- When 'Enable' signal is active every falling edge of the 'Clock' signal causes a generation
--   of the next number. 'Reset' signal starts sequence from the initial values (0 and 1).
-- Generated numbers are presented binary on the 'Fib' ouputs and 
--   hexadecimaly on the two 7-segment displays.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity fib is
	port (
	CLOCK, RESET, ENABLE : in std_logic;    
        FIB    : out std_logic_vector (7 downto 0);	-- output
        DISPA  : out std_logic_vector (6 downto 0);	-- display
        DISPB  : out std_logic_vector (6 downto 0)	-- display
        ) ;
	end fib;

architecture fib_arch of fib is

signal FIBOUT, PREV_FIB, FIBADD : std_logic_vector (7 downto 0):="00000000";

function BIN2LED7 (BIN: std_logic_vector (3 downto 0)) return std_logic_vector is
	
  begin		          -- 7-segment display decoder
		case BIN is
                          -- SEGMENTS: abcdefg
                when "0000" => return "0000001";
                when "0001" => return "1001111";
                when "0010" => return "0010010";
                when "0011" => return "0000110";
                when "0100" => return "1001100";
                when "0101" => return "0100100";
                when "0110" => return "0100000";
                when "0111" => return "0001101";
                when "1000" => return "0000000";
                when "1001" => return "0000100";
                when "1010" => return "0001000";
                when "1011" => return "1100000";
                when "1100" => return "0110001";
                when "1101" => return "1000010";
                when "1110" => return "0110000";
		when "1111" => return "0111000";
		when others => return "1111111";
	end case;
  end;

begin
   
  process ( CLOCK,RESET,ENABLE )

    begin
	if RESET='0' then
	    FIBOUT <= "00000001";
	    PREV_FIB <= "00000000";
	  elsif CLOCK'event and CLOCK='0' and ENABLE='1' then
	    PREV_FIB <= FIBOUT;
	    case (FIBOUT="00000000") and (PREV_FIB="00000000") is
	      when true =>
	        FIBOUT <= "00000001";
	      when others =>
	      	FIBOUT <= FIBADD;
	    end case;
	  else null;			-- do nothing
	end if;
  end process ;
     
FIBADD <= FIBOUT + PREV_FIB; 
FIB    <= FIBOUT;

-- display decoders

DISPA <= BIN2LED7( FIBOUT( 7 downto 4 ) );
DISPB <= BIN2LED7( FIBOUT( 3 downto 0 ) );

end fib_arch ;


