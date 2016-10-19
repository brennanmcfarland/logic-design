module adder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire cout, y1a, y3a_, y3a, y1b,y3b;
	
	OAO U1(cin,a,b,a,y1a,y3a_,cout);
	not U3(cout_,cout);
	not U4(y3a,y3a_);
	OAO U2(cout_,y1a,cin,y3a,y1b,y3b,sum);
	
endmodule

module OAO(d,e,f,g,y1,y3_,y4);
	input d,e,f,g;
	output y1,y3_,y4;
	
	not U5(e_,e);
	not U6(f_,f);
	nand U1(y1,e_,f_);
	nand U2(y2,d,y1);
	nand U3(y3_,f,g);
	nand U4(y4,y2,y3_);
endmodule