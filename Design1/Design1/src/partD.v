
`timescale 1 ns / 1 ps

module partD (a,b,y1,y2,y3);
	input a,b;
	output y1,y2,y3;
	assign y1=a&b;
	assign y2=a|b;
	assign y3=a^b;

endmodule
