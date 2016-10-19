`timescale 1 ns / 10 ps

module testbench;
	reg a,b,cin;
	wire s,cout;
	
	adder UUT(a,b,cin,sum,cout);
	
	initial
		begin
			a=0; b=0; cin=0;
			$display("     TIME |  A B Ci | sum | Co");
			$monitor($time, "%b %b %b %b %b", a,b,cin,sum,cout);
			$dumpfile("adder.vcd");
			$dumpvars(1,a,b,cin,sum,cout);
			$dumpflush;
			#80 $finish; //specify end time
	end
	
	always
		#10 cin=~cin; //invert ci every 10 time units
	always
		#20 b=~b; //invert b every 20 time units
	always
		#40 a=~a; //invert a every 40 time units
endmodule

//stuff for next week's lab, need to copy over to new project
module Testbench
	
	integer ctr; //used to generate input
	wire a=ctr[2]; //a is the bit 2 of the counter
	wire b=ctr[1];
	wire cin=ctr[0];
	wire sum,cout; //output
	
	adder UUT(a,b,cin,sum,cout);
	
	initial
		begin
			ctr=0;
			//other stuff from this week's lab
		end
		always
			#10 ctr=ctr+1; //increment counter every 10 time units
endmodule