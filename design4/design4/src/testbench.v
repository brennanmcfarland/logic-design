'timescale 1ns/10ps

module testbench;
	reg [3:0]a,b;
	reg [1:0]s;
	wire[3:0]f;
	
	alu4 UUT(a,b,s,f);
	
	initial
		begin
			$
			#80 $finish
		end
	always
		begin
			a=4; b=1; s='b10;
			#10 a=7; b=-8;
			#20 a=-1; b=5; s='b11;
			
			#10; //delay since always block repeats on completion
		end
		
endmodule