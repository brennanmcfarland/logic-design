
`timescale 1 ns / 1 ps

module partS (a,b,y1,y2,y3);
	input a,b;
	output y1,y2,y3;
	and U1(y1,a,b);
	or U2(y2,a,b);
	xor U3(y3,a,b);

endmodule
