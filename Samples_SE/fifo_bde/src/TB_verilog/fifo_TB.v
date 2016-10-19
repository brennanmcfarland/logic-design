
`timescale 1ps / 1ps
module fifo_tb;


//Internal signals declarations:
reg [31:0]DIP;
reg CLKP;
reg PUSHP;
reg POPP;
wire [31:0]DOP;
wire EMPTYP;
wire FULLP;
wire LASTP;

integer res_file;
								  
initial
begin
	res_file = $fopen ("results_verlog.txt");
//	$fdisplay (res_file,"Inputs: DIP CLKP PUSHP POPP\n");
//	$fdisplay (res_file,"Outputs: DOP FULLP EMPTYP LASTP RESULTS\n");
end	

always @ (DIP or CLKP or PUSHP or POPP or DOP or FULLP or
		  EMPTYP or LASTP)
begin
	$fdisplay (res_file, " %d ps %b %b %b %b %b %b %b %b", $time,
				DIP, CLKP, PUSHP, POPP, DOP, FULLP, EMPTYP, LASTP);
end


// Unit Under Test port map
	fifo UUT (
		.DIP(DIP),
		.CLKP(CLKP),
		.PUSHP(PUSHP),
		.POPP(POPP),
		.DOP(DOP),
		.EMPTYP(EMPTYP),
		.FULLP(FULLP),
		.LASTP(LASTP));

initial
	$monitor($realtime,,"ps %h %h %h %h %h %h %h %h ",DIP,CLKP,PUSHP,POPP,DOP,EMPTYP,FULLP,LASTP);
//Below code was generated based on waveform file: "D:\Program Files\Aldec\Active-HDL 5.0\Projects\fifo_bde\compile\fifo_f.ver"

initial
begin : STIMUL // begin of stimulus process
	#0
	POPP = 1'b0;
	DIP = 32'b00000000000000000000000000000000;
	CLKP = 1'b0;
	PUSHP = 1'b0;
    #20000; //0
	CLKP = 1'b1;
    #20000; //20000
	DIP = 32'b00010001000000000000000000010001;
	CLKP = 1'b0;
	PUSHP = 1'b1;
    #20000; //40000
	CLKP = 1'b1;
    #10000; //60000
	DIP = 32'b00100010000000000000000000100010;
    #10000; //70000
	CLKP = 1'b0;
    #20000; //80000
	CLKP = 1'b1;
    #10000; //100000
	DIP = 32'b00110011000000000000000000110011;
    #10000; //110000
	CLKP = 1'b0;
    #20000; //120000
	CLKP = 1'b1;
    #10000; //140000
	DIP = 32'b01000100000000000000000001000100;
    #10000; //150000
	CLKP = 1'b0;
    #20000; //160000
	CLKP = 1'b1;
    #10000; //180000
	DIP = 32'b01010101000000000000000001010101;
    #10000; //190000
	CLKP = 1'b0;
    #20000; //200000
	CLKP = 1'b1;
    #10000; //220000
	DIP = 32'b01100110111111110000000001100110;
    #10000; //230000
	CLKP = 1'b0;
    #20000; //240000
	CLKP = 1'b1;
    #10000; //260000
	DIP = 32'b01110111111111111111111101110111;
    #10000; //270000
	CLKP = 1'b0;
    #20000; //280000
	CLKP = 1'b1;
    #10000; //300000
	DIP = 32'b10001000000000001111111110001000;
    #10000; //310000
	CLKP = 1'b0;
    #20000; //320000
	CLKP = 1'b1;
    #10000; //340000
	DIP = 32'b10011001000000000000000010011001;
    #10000; //350000
	CLKP = 1'b0;
    #20000; //360000
	CLKP = 1'b1;
    #10000; //380000
	DIP = 32'b10101010000000000000000010101010;
    #10000; //390000
	CLKP = 1'b0;
    #20000; //400000
	CLKP = 1'b1;
    #10000; //420000
	DIP = 32'b10111011000000000000000010111011;
    #10000; //430000
	CLKP = 1'b0;
    #20000; //440000
	CLKP = 1'b1;
    #10000; //460000
	DIP = 32'b11001100000000000000000011001100;
    #10000; //470000
	CLKP = 1'b0;
    #20000; //480000
	CLKP = 1'b1;
    #10000; //500000
	DIP = 32'b11011101000000000000000011011101;
    #10000; //510000
	CLKP = 1'b0;
    #20000; //520000
	CLKP = 1'b1;
    #10000; //540000
	DIP = 32'b11101110000000000000000011101110;
    #10000; //550000
	CLKP = 1'b0;
    #20000; //560000
	CLKP = 1'b1;
    #10000; //580000
	DIP = 32'b11111111000000000000000011111111;
    #10000; //590000
	CLKP = 1'b0;
    #20000; //600000
	CLKP = 1'b1;
    #10000; //620000
	DIP = 32'b11111111111111111111111111111111;
    #10000; //630000
	CLKP = 1'b0;
    #20000; //640000
	CLKP = 1'b1;
    #10000; //660000
	DIP = 32'b00000000000000000000000000000000;
    #10000; //670000
	CLKP = 1'b0;
    #20000; //680000
	CLKP = 1'b1;
    #10000; //700000
	POPP = 1'b1;
	PUSHP = 1'b0;
    #10000; //710000
	CLKP = 1'b0;
    #20000; //720000
	CLKP = 1'b1;
    #20000; //740000
	CLKP = 1'b0;
    #20000; //760000
	CLKP = 1'b1;
    #20000; //780000
	CLKP = 1'b0;
    #20000; //800000
	CLKP = 1'b1;
    #20000; //820000
	CLKP = 1'b0;
    #20000; //840000
	CLKP = 1'b1;
    #20000; //860000
	CLKP = 1'b0;
    #20000; //880000
	CLKP = 1'b1;
    #20000; //900000
	CLKP = 1'b0;
    #20000; //920000
	CLKP = 1'b1;
    #20000; //940000
	CLKP = 1'b0;
    #20000; //960000
	CLKP = 1'b1;
    #20000; //980000
	CLKP = 1'b0;
    #20000; //1000000
	CLKP = 1'b1;
    #20000; //1020000
	CLKP = 1'b0;
    #20000; //1040000
	CLKP = 1'b1;
    #20000; //1060000
	CLKP = 1'b0;
    #20000; //1080000
	CLKP = 1'b1;
    #20000; //1100000
	CLKP = 1'b0;
    #20000; //1120000
	CLKP = 1'b1;
    #20000; //1140000
	CLKP = 1'b0;
    #20000; //1160000
	CLKP = 1'b1;
    #20000; //1180000
	CLKP = 1'b0;
    #20000; //1200000
	CLKP = 1'b1;
    #20000; //1220000
	CLKP = 1'b0;
    #20000; //1240000
	CLKP = 1'b1;
    #20000; //1260000
	CLKP = 1'b0;
    #20000; //1280000
	CLKP = 1'b1;
    #20000; //1300000
	CLKP = 1'b0;
    #20000; //1320000
	CLKP = 1'b1;
    #20000; //1340000
	CLKP = 1'b0;
    #20000; //1360000
	CLKP = 1'b1;
    #20000; //1380000
	CLKP = 1'b0;
    #20000; //1400000
	CLKP = 1'b1;
    #20000; //1420000
	CLKP = 1'b0;
    #20000; //1440000
	CLKP = 1'b1;
    #20000; //1460000
	CLKP = 1'b0;
    #20000; //1480000
	CLKP = 1'b1;
    #20000; //1500000
	CLKP = 1'b0;
    #20000; //1520000
	CLKP = 1'b1;
    #20000; //1540000
	CLKP = 1'b0;
    #20000; //1560000
	CLKP = 1'b1;
    #20000; //1580000
	CLKP = 1'b0;
    #20000; //1600000
	CLKP = 1'b1;
    #20000; //1620000
	CLKP = 1'b0;
    #20000; //1640000
	CLKP = 1'b1;
    #20000; //1660000
	CLKP = 1'b0;
    #20000; //1680000
	CLKP = 1'b1;
    #20000; //1700000
	CLKP = 1'b0;
    #20000; //1720000
	CLKP = 1'b1;
    #20000; //1740000
	CLKP = 1'b0;
    #20000; //1760000
	CLKP = 1'b1;
    #20000; //1780000
	CLKP = 1'b0;
    #20000; //1800000
end // end of stimulus process
	



endmodule