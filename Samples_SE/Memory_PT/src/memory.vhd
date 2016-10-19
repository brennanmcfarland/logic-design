library IEEE;
use IEEE.std_logic_1164.all;
use work.sparse.all;  -- package with protected type

entity memory is
	generic ( maxa : integer := 1023;    -- maximal integer address value
	          maxd : integer := 15 );    -- maximal integer data value
	port (
		CLK: in STD_LOGIC;               -- clock: active rising edge
		WE: in STD_LOGIC;                -- Write Enable: active high
		RE: in STD_LOGIC;                -- Read Enable: active high
		ADDR: in INTEGER range 0 to maxa;-- Address (integer)
		DI: in INTEGER range 0 to maxd;  -- Data In (integer)
		DO: out INTEGER range 0 to maxd  -- Data Out (integer)
	);
end entity memory;

architecture behavior of memory is
  -- shared variable using protected type from the 'sparse' package
	shared variable mem : sparse_arr_type;
begin
  -- creating dynamic memory object
	memini: process
	begin
		mem.init(true);  -- call 'init' method, initialize dump
		wait;	         -- terminate process at time 0 ns
	end process memini;

  -- synchronous memory operations
	synch: process(CLK)
	begin
		if rising_edge(CLK) then		-- active clock edge detected:
			if RE='1' then              -- we are reading
				DO <= mem.recall(ADDR); -- call 'recall' method
			end if;
			if WE='1' then              -- we are writing
				mem.store(ADDR, DI);    -- call 'store' method
			end if;
		end if;
		if falling_edge(CLK) then		-- dump memory contents
			mem.dump;					--  to the console 
		end if;
	end process synch;

end behavior;

