module adder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	
	not U5(a_,a);
	not U6(b_,b);
	nand U1(aORb,a_,b_);
	nand U2
	etc etc.........
endmodule