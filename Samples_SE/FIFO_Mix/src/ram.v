module ram (	input WE, input CLK,
				input [7:0] ADDR,
				input [7:0] DATA,
				output [7:0] Q       );

reg [7:0] ram_MEM [255:0];

	always @(posedge CLK )
	begin
		if (WE == 1'b1)
			ram_MEM [ADDR ] <= DATA ;
	end

	assign Q = ram_MEM [ADDR ];
endmodule

