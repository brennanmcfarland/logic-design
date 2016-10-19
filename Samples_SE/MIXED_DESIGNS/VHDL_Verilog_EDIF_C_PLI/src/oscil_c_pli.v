module oscil_c_pli (CLK, CLR, F0, F1);
	input CLK;
	input CLR;
	output F0;
	output F1;
	
	initial
	$oscil_c_pli(CLK, CLR, F0, F1);
	
endmodule 