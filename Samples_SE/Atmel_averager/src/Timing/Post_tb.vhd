----------------------------------------------------------------
--
-- FILENAME     :    uart_tb.vhd
-- AUTHOR	:    ATMEL Corp.	
-- FILE CONTENTS:    test bench for UART simulation
-- DATE CREATED :    Wed May 22 20:22:47 EDT 1996
--
-- CELL NAME    :    uart_TB
-- CONFIGURATION:    CFG_uart_TB
-- TIME SCALE   :    1 ns
-- LOGIC SYSTEM :    IEEE-1164
--
-- DESCRIPTION  :    This file contains the test bench for simulating
--		     transmitter part of the UART. 
-- FILES	:    averager.sen - contains data bytes that are to be
--		     transmitted. Data must be organized one byte on the
--                   seperate line. No error checking is enforced for
--                   checking illegality/incompleteness of the data.
--		     
--		     timing.out - simulation output. Must be validated
--		     manually for now.
-- HISTORY      :
--
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;


use IEEE.std_logic_TEXTIO.all;
use STD.TEXTIO.all;

-- entity declaration 
entity aver_TB is
  generic(

    Time_units: Time := 1 ns;           -- of input stimulus file
    Precision: Integer := 3;            -- decimal precision of output
    Input_File: String := "averager.sen"; 	-- input data
    Output_File: String := "timing.out");	-- output results

end aver_TB;

-- architecture body 
architecture tb_arch of aver_TB is

	component averager
		port ( 
			datain : in STD_LOGIC_VECTOR(7 downto 0) := "XXXXXXXX";
			CLK : in STD_LOGIC := 'X';
			R : in STD_LOGIC := 'X';
			dataout : out STD_LOGIC_VECTOR(7 downto 0)
			);
	end component;

  --
  -- temporary pin names, used as actuals in UART instantiation
  --
  signal  sysclk, rst : std_logic;
  signal  clk: std_logic := '0';
  signal  datain, dataout : std_logic_VECTOR(7 downto 0);

  -- 
  -- CLOCK pulse width
  --
  constant CLKWIDTH : time := 100 ns;

  --
  -- simulation output file name
  --
  file  outvectors : TEXT is out Output_File;

begin
 
  -- 
  -- process below reads the data bytes one at a time
  -- from the file pointed by "Input_File". It then checks the
  -- status on "txrdy" line to make sure that transmission buffer
  -- is empty to receive the new byte. If it is empty, then 
  -- it assigns the data byte to "data" pin of the UART and 
  -- aserts the "write" pulse. If the buffer is not empty, then 
  -- it waits  untill the buffer is ready for receiving the new data.
  --
  process 
  file testvectors            : TEXT is in Input_File;
  variable    L               : Line;
  variable    input_vec       : std_logic_vector(7 downto 0);

  begin

   read_data: while not ENDFILE(testvectors) loop

	wait until ( clk'event and clk = '1' );
   	readline(testvectors,L);
    	read (L, input_vec);                    
  	datain <= input_vec(7 downto 0) ;
   end loop;
   wait;
  end process;

  --
  -- process below outputs the results to a file pointed by
  -- "Output_File". It uses "tstart", "tend" and "txclk"
  -- output signals of UART to insert appropriate comments
  -- in the output. Note that tstart, tend and txclk pins
  -- are used for simulation purpose only.
  --
  process

  variable L                  : Line;
  variable real_time          : real;
 
  begin

   	wait until (sysclk'event and sysclk = '1') ;
	wait for 20 ns;
	-- write current time
 	real_time := (TIME'POS(NOW/100) *100.0) / (1.0 * TIME'POS(Time_units));

        write (L, real_time, DIGITS=>Precision);
        write (L, HT);                         

	write (L, datain);
        write (L, HT);                         
	-- write the input byte presently assigned to "data" port
	write (L, dataout);

	-- write the line to the file and flush "L"
        writeline(outvectors, L); 
  end process;

  -- instantiation of Averager Design
  aver_test : averager port map (
                clk => sysclk,
				R  => rst,
                datain => datain,
                dataout => dataout
        );

  --
  -- Process below creates a free running clock for the UART.
  -- Note that you must modify the loop index to create additional
  -- clock cycles.
  --
  process 
  begin
	FOR i in 1 TO 40 LOOP
		clk <= '1' after CLKWIDTH  , '0' after (2 * CLKWIDTH) ;
		wait for 200 ns;
	END LOOP ;
	wait;
  end process;

  sysclk <= clk after 20 ns;

  --
  -- Process below creates a reset pulse
  -- 

  process
  begin
	rst <= '0' after 0 ns, '1' after 20 ns;
	wait;
  end process;

end tb_arch;

library work;
configuration CFG_aver_TB of aver_TB is
  for tb_arch
  end for;
end CFG_aver_TB;
