module counter (	input CLR, CE, CLK,
					output TC,
					output [7:0] Q      );

  reg [7:0] count;

//EMBEDDED PSL PROPERTY SAYING "when count reaches FE, in the next cycle it will reach FF and activate TC"
// psl property cnt_end = ({(count==8'hFE);(count==8'hFF)&&TC}@(posedge CLK));
//COVERAGE OF THE PROPERTY DEFINED ABOVE IS REQUESTED
// psl cnt_end_c: cover (cnt_end) report "End of counting sequence covered!";

	always @(posedge CLR or negedge CLK)
      begin
		if (CLR == 1'b1)
			count = {8{1'b0}};
		else
			if (CE == 1'b1)
					count = count + 1;
      end

	assign Q  = count;

	assign TC = (count == {8{1'b1}}) ? 1'b1 : 1'b0;
endmodule