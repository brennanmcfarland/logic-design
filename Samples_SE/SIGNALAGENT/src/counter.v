// Parametrized synchronous counter with asynchronous reset
// SIZE describes the output width, now it is defined as 4-bits counter

module counter(COUNTER, FULL, CLK, RESET, ENABLE);

	output [1:0] COUNTER;
	output FULL;
	input CLK, RESET, ENABLE;
	reg [1:0] COUNTER;

	always @(posedge CLK or posedge RESET) begin
		if (RESET) COUNTER = 'd0;
		else if (ENABLE)
			COUNTER = COUNTER + 'd1;
		end

	assign FULL = &COUNTER;	   
		
	reg full1, full2, full3;
	
	initial begin
	$signal_agent( "uut.full1", "full1", 1 );
	$signal_agent( "uut.u2.FULL", "full2", 1 );
	$signal_agent( "uut.u3.FULL", "full3", 1 );
	end
endmodule