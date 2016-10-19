module TestBench;
	
	reg a,b;
	wire y1,y2,y3;
	
	partD UUT(a,b,y1,y2,y3);
	
	initial
		begin
			a=0;b=0;
			$display("                TIME |A| B|Y1|Y2|Y3");
			$monitor($time,"  %b  %b  %b  %b  %b",a,b,y1,y2,y3);
		end
	always
		begin
			#10 b=1;
			#10 a=1;b=0;
			#10 b=1;
		end
	initial
		#40 $finish;
		
endmodule