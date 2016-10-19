-- Package 'sparse ' uses sparse array approach  and dynamic memory allocation
-- to model large memories in an efficient manner.
-- Access type variables and operations are encapsulated in 'sparse_arr_type'
-- protected type with three methods: 'init', 'store' and 'recall'.
package sparse is
	type sparse_arr_type is protected
	  -- 'init' method should be called to create actual memory structure dynamically
		procedure init(memdmp: in boolean := false);
	  -- 'store' method should be called to store value at a given address
		procedure store(address, value : in integer);
	  -- 'recall' method should be called to retrieve value from a given address
	    impure function recall(address : integer) return integer;
	  -- 'dump' method should be called to dump memory contents to the console 
	    procedure dump;
	end protected sparse_arr_type;

end package sparse;

use std.textio.all;
package body sparse is
	type sparse_arr_type is protected body
	  -- local constants for default address and cell contents
		constant def_cont: integer := 0;
		constant def_addr: integer := 0;

	  --  cell type and pointer to cell type declarations
		type cell;
		type cellpoint is access cell;
		type cell is record
			address : integer;
			contents : integer;
			successor : cellpoint;
		end record;

	  -- variable storing pointer to head of the list
		variable HEAD : cellpoint := null;
	  -- variable storing pointer to current element of the list
		variable HERE : cellpoint := null;
	  -- variable storing current size of the list
	    variable SIZE : integer := 0;
	  -- variable deciding if memory contents is dumped to file 
	    variable DUMP_ON : boolean := false;		

	  -- internal function 'Cell_found' searching for cell with specified memory address;
	  -- always returns pointer to the cell with specified address or the nearest
	  -- cell with lower address in the HERE variable (side effect!);
	  -- boolean value returned by the function specifies if the exact match was found
		impure function Cell_found( address: integer ) return Boolean is
	  		variable current : cellpoint;  -- currently checked cell pointer
			variable OK :  boolean;	       -- True if address found
		begin
			current := HEAD;
			OK := false;
			while current.address <= address loop
				if current.address = address then  -- we have found the cell
					OK := true;
					exit;
				elsif current.successor /= null then	-- more cells in the list
					if current.successor.address <= address then
						current := current.successor;-- jump to the next cell
					else
						exit;         -- next cell has too large address
					end if;
				else
					exit;             -- no more cells
				end if;
			end loop;
			HERE := current;		  -- update cell pointer (side effect!)
			return OK;				  -- return Boolean result
		end function Cell_found;

	  -- internal procedure 'Insert_cell' that adds new cell after the one to which
	  -- HERE points. Address and Value specified as parameters are stored in the cell
		procedure Insert_cell(
					address, value:  in integer ) is
		  variable new_one : cellpoint;
		begin
		  -- create new cell and connect it to its successor
		    new_one := new cell'(address,value,HERE.successor);
		  -- connect previous cell to the new one
		    HERE.successor := new_one;
		  -- modify pointer so that it points to the new one
			HERE := new_one;
			SIZE := SIZE + 1;
		end procedure Insert_cell;

	  -- 'init' method (no parameters) dynamically creating memory structure
	  -- (with just one cell).
		procedure init(memdmp: in boolean := false) is
		begin
			HEAD := new cell'(def_addr, def_cont, null);
			SIZE := 1;
			if memdmp then
				DUMP_ON := true;
			end if;	
		end procedure init;

	  -- 'store' method that saves given value at given address;
	  -- memory cell is created if it does not exist yet
		procedure store(address, value : in integer) is
		begin
			if Cell_found(address) then
				HERE.contents := value;
			else
				Insert_cell(address, value);
			end if;
		end store;

	  -- 'recall' method that retrieves contents of the cell with the specified
	  -- address; if the cell does not exist yet, it will be created with default
	  -- contents
		impure function recall(address : integer) return integer is
		begin
			if Cell_found(address) then
				return HERE.contents;
			else
				Insert_cell(address, def_cont);
				return def_cont;
			end if;
		end function recall;
		
	  -- 'dump' method that dumps the entire memory contents into one console line;
	  -- the line is formated like this:
	  --  "time; HEAD=> addr1:contents ->addr2:contents  ... ->TAIL"
		procedure dump is
		  variable current : cellpoint;
		  variable linebuf : LINE;
		begin
			if DUMP_ON then
				current := HEAD;
				write (linebuf, now, right, 7);
				write (linebuf, "; HEAD=> ");
				loop
					write( linebuf, current.address);
					write( linebuf, ":");
					write( linebuf, current.contents);
					write( linebuf, " ->");
					exit when current.successor = null;
					current := current.successor;
				end loop;
				write (linebuf, "TAIL");
				writeline (OUTPUT, linebuf);
			end if;
		end procedure dump;

	end protected body sparse_arr_type;

end package body sparse;
