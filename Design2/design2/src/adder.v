module adder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	
	not U5(a_,a);
	not U6(b_,b);
	nand U1(ab,a_,b_);
	nand U2(a_b_,a,b);
	nand U3(u1_cin_,ab,cin);
	nand U4(cout,a_b_,u1_cin_);
	
endmodule