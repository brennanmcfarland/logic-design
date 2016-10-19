module alu(a,b,cin,s0,s1,f,cout);
	input a,b,cin,s0,s1;
	output f,cout;
	
	adder U1(a,(s0^b),(s1&cin),f,cout);
	
endmodule

module alu4(a,b,sum,f);
	input [3:0]a,b;
	input [1:0]s;
	wire [3:0]f;
	wire []cout;
	
	alu U0();
	alu U1();
	alu U2();
	alu U3();

endmodule