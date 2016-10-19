`timescale 1 ns / 10 ps

module testbench;
	reg a,b,cin;
	wire s,cout;
	
	adder UUT(a,b,cin,sum,cout);
	
	initial
		begin
			a=0; b=0; cin=0;
			$display("                 TIME |  A B Ci | sum | Co");
			$monitor($time, "     %b %b  %b    %b     %b", a,b,cin,sum,cout);
			$dumpfile("adder.vcd");
			$dumpvars(1,a,b,cin,sum,cout);
			$dumpflush;
			#80 $finish; //specify end time
		end
	
	always
		#10 cin=~cin; //invert cin every 10 time units
	always
		#20 b=~b; //invert b every 20 time units
	always
		#40 a=~a; //invert a every 40 time units
endmodule