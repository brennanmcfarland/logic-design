------------------------------------------------------------------------------------
-- Details:
--		Type: First In - First Out (FIFO) Memory 
--		Data width: 8
--		Depth: 16
--		Write Clock input WCLK active high
--		Write Enable input WE active high
--		Read Clock input RCLK active low 
--		Read Enable input RE active high
--		Asynchronous Clear input CLR active high
--		DATA input
--      Q output
--		Empty flag output EMPTY active high
--		Full flag output FULL active high
------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity fifo is
	generic (
		depth : positive := 16
		);	
	port(
		CLR   : in  std_logic;
		WCLK  : in  std_logic;
		WE    : in  std_logic;
		RCLK  : in  std_logic;
		RE    : in  std_logic;
		DATA  : in  std_logic_vector(7 downto 0);
		EMPTY : out std_logic;
		FULL  : out std_logic;
		Q     : out std_logic_vector(7 downto 0)
	);
end entity;


library IEEE;
use IEEE.std_logic_unsigned.all;

architecture behavior of fifo is

	constant fmax : positive := depth-1;	

	type fifo_array_type is array (fmax downto 0) of std_logic_vector(7 downto 0);

	signal fifo_array : fifo_array_type;
	signal WR_PTR : INTEGER range 0 to fmax;
	signal RD_PTR : INTEGER range 0 to fmax;
	signal count  : INTEGER range 0 to depth;

begin
--EMBEDDED PSL PROPERTY saying "in all cases, after FULL output rose, it will eventually fall"
--psl property full_nfull is always (rose(FULL)-> eventually! fell(FULL))@rising_edge(RCLK);
--PROPERTY DEFINED ABOVE IS ASSERTED
--psl full_nfull_a: assert (full_nfull) report "FULL signal not deactivated!";

	CNT: process(CLR, WR_PTR, RD_PTR)
		variable change : integer;		
	begin  
		if CLR = '1' then
			count <= 0;
			change := 0;
		else
			change := 0;
			if WR_PTR'event then
				change := 1;
			end if;
			if RD_PTR'event then
				change := change - 1;
			end if;
			count <= count + change;
		end if;
	end process;
	
	STATUS: process(count)
	begin  
		if count=0 then
			FULL   <= '0';
			EMPTY  <= '1';
		elsif count=depth  then
			FULL   <= '1'; 
			EMPTY  <= '0'; 
		else	
			FULL   <= '0'; 
			EMPTY  <= '0'; 
		end if;			
	end process;
	
	FWRITE: process (CLR, WCLK)
	begin
		if CLR = '1' then
			for INDEX in fmax downto 0 loop
				fifo_array(INDEX) <= (others => '0');
			end loop;
			WR_PTR <= 0;
		elsif rising_edge(WCLK) then
			if WE = '1' and count<depth then
				fifo_array(WR_PTR) <= DATA;
				-- move pointer
				if WR_PTR=fmax then 
					WR_PTR <= 0; 
				else WR_PTR <= WR_PTR + 1;
				end if;
			end if;
		end if;
	end process;

	FREAD: process (CLR, RCLK)
	begin
		if CLR = '1' then
			RD_PTR <= 0;
		elsif falling_edge(RCLK) then
			if RE = '1' and count>0 then
				Q <= fifo_array(RD_PTR);
				-- move pointer 
				if RD_PTR=fmax then 
					RD_PTR <= 0; 
				else RD_PTR <= RD_PTR + 1;
				end if;
			end if;
		end if;
	end process;

end architecture;
