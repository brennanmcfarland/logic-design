`timescale 1 ns / 10 ps

module testbench;
	integer ctr;
	wire a = ctr[2];
	wire b = ctr[1];
	wire cin = ctr[0];
	wire sum,cout;
	
	adder UUT(a,b,cin,sum,cout);
	
	initial
		begin
			ctr=0;
			$display("                 TIME |  A B Ci | sum | Co");
			$monitor($time, "     %b %b  %b    %b     %b", a,b,cin,sum,cout);
			$dumpfile("adder.vcd");
			$dumpvars(1,a,b,cin,sum,cout);
			$dumpflush;
			#80 $finish; //specify end time
		end
	
	always
		#10 ctr=ctr+1; //increment counter every 10 time units

endmodule