module OAO(y1,y3,y4,d,e,f,g);
	input d,e,f,g;
	output y1,y3,y4;
	
	not U5(e_,e);
	not U6(f_,f);
	nand U1(y1,e_,f_);
	nand U2();
	nand U3();
	nand U4();
	
	//etc etc
endmodule

module adder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire aORb,aANDb_,aANDb,cout_,y21,y23;
	
	OAO U1(cin,a,b,a,aANDb,aANDb_,cout);
	OAO U2(cout_,aORb,cin,aANDb,y21,y23,sum);
	not U3(cout_,cout);
	not U4(aANDb,aANDb_);
	//may need to rename this adder, don't delete the old assignment in the meantime
	
endmodule