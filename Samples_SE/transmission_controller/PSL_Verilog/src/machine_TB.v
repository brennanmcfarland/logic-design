`timescale 1ns / 1ps

module  machine_TB;
	localparam CLK_PERIOD = 10;
	localparam CLK_HP = CLK_PERIOD / 2.0;
	
	reg CLK;
	reg [7:0] DATA;
	reg DRDY;
	reg ENA;
	reg REQ;
	reg RESET;
	wire ACK;
	wire EXC;
	wire IDL;
	wire [7:0] Y;
	
machine UUT (	.ACK(ACK),
				.CLK(CLK),
				.DATA(DATA),
				.DRDY(DRDY),
				.ENA(ENA),
				.EXC(EXC),
				.IDL(IDL),
				.REQ(REQ),
				.RESET(RESET),
				.Y(Y)
			);
	
	initial begin : CKL_GEN
		CLK = 1'b0;
		forever begin : flipping
			#CLK_HP CLK = ~CLK;
		end //flipping
	end	// CLK_GEN	
	
	initial begin :STIMULUS
		RESET <= 1'b1;
		DRDY = 1'b0;
		REQ = 1'b0;
		ENA = 1'b0;
		DATA = 8'b10101010;
	    #10; 				//0 ns
		RESET = 1'b0;
	    #10; 				//10 ns
		ENA = 1'b1;
	    #20; 				//20 ns
		REQ <= 1'b1;
	    #20; 				//40 ns
		DRDY <= 1'b1;
	    #40; 				//60 ns
		REQ <= 1'b0;
	    #30; 				//100 ns
		DRDY <= 1'b0;
	    #50; 				//130 ns
		REQ <= 1'b1;
	    #20; 				//180 ns
		DATA <= 8'b0000XXXX;
	    #10; 				//200 ns
		DRDY <= 1'b1;
	    #30; 				//210 ns
		DRDY <= 1'b0;
	    #20; 				//240 ns
		DRDY <= 1'b1;
		DATA <= 8'b01010101;
	    #40; 				//260 ns
		DRDY <= 1'b0;
		REQ <= 1'b0;
	    #50; 				//300 ns
		RESET <= 1'b1;
		#0.020;  			//350 ns
		RESET <= 1'b0;
		#9.998;
		REQ <= 1'b1;
		$stop;
	end	//STIMULUS
endmodule