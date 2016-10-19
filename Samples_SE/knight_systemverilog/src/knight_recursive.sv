`timescale 1ns/1ns

module knight_rec;
parameter DIM = 5;

// SystemVerilog: "typedef" defines a new type. 
// Two types are defined in the following two lines: boolean and knight_type.	
// Both types derived from enum data type.
typedef enum {NO, YES} boolean;
typedef enum {FULL, EMPTY} knight_type;

// SystemVerilog: Use of user-defined type knight_type.	
// The following line shows how to declare arrays of user-defined enumerated type knight_type.
knight_type BoardKnightType [(DIM*DIM)-1:0];

reg [6:0] Board2D [DIM-1:0][DIM-1:0];
reg [6:0] Board1D [(DIM*DIM)-1:0];
reg [7:0] BoardChar [(DIM*DIM)-1:0];

reg [4:0] CMVectX [7:0];
reg [4:0] CMVectY [7:0];

reg Result;

integer res1, res2, res3;

// SystemVerilog: Use of enumerated data type.
// Declared Flag variable includes the three memebers: Next, Back, Nothing.
enum {Next, Back, Nothing} Flag;

integer X1, X2, Y1, Y2;
integer X, Y;

initial begin	  
  #0;
  // SystemVerilog: The following two system functions ($low, $high) are array querying system functions
  // $low returns the minimum of the left bound (msb) and the right bound (lsb) of the dimension.
  // $high shall return the maximum of the left bound (msb) and the right bound (lsb) of the dimension.
  Y1 = $low(Board2D,1);
  Y2 = $high(Board2D,1);
  X1 = $low(Board2D,2);
  X2 = $high(Board2D,2);	 
  X = (X2-X1);
  Y = (Y2-Y1);	
  #1;				  
  // SystemVerilog: Use of increment and decrement assignment operators ++i, --i, i++ and i--;
  `ifdef disp
    //$display("Dimensions of Chessboard you chose: X=%d, Y=%d",++X,++Y);
    $fdisplay(res1,"Dimensions of Chessboard you chose: X=%d, Y=%d",++X,++Y);
    $fdisplay(res2,"Dimensions of Chessboard you chose: X=%d, Y=%d",++X,++Y);
    $fdisplay(res3,"Dimensions of Chessboard you chose: X=%d, Y=%d",++X,++Y);
  `endif
  #10 Init;
  #10 Try(5'd0, 5'd0, 7'd1, Result);
  if(Result) $display("This is a solution :");
  else $display("I can find a solution! Sorry");
  #10 PrintBoard2D_console; 
end

// SystemVerilog allows to write multiple statements between the task declaration and endtask.
// It means the the begin...end can be omitted.
task Init;
  reg [7:0] k;

  // SystemVerilog: SystemVerilog allowas to declare the for loop control variable within the for
  // loop (res [7:0] i=0). The value of loop control variable can be changed by the C assignment
  // operators, such as +=, and the C increment and decrement operators, ++ and --.
  for(reg [7:0] i=0; i<DIM; i += 1)
    for(reg [7:0] j=0; j<DIM; j = j++)
      Board2D[i][j] = 0;
  for(k=0; k<DIM*DIM; k = k + 1)
	// Assignment value EMPTY to one element of the array of user-defined enumerated type knight_type.
    BoardKnightType[k] = EMPTY;
  for(k=0; k<DIM*DIM; k = k + 1)
    BoardChar[k] = "-";
  for(k=0; k<DIM*DIM; k = k + 1)
    Board1D[k] = 0;

  CMVectX[0] =  2; CMVectY[0] =  1;
  CMVectX[1] =  1; CMVectY[1] =  2;
  CMVectX[2] = -1; CMVectY[2] =  2;
  CMVectX[3] = -2; CMVectY[3] =  1;
  CMVectX[4] = -2; CMVectY[4] = -1;
  CMVectX[5] = -1; CMVectY[5] = -2;
  CMVectX[6] =  1; CMVectY[6] = -2;
  CMVectX[7] =  2; CMVectY[7] = -1;
endtask

task PrintBoard2D_console;
  for(reg [3:0] i=0; i<DIM; i = i++) begin
    for(reg [3:0] j=0; j<DIM; j += 1) begin
	  $write("%d",Board2D[i][j]);
    end  
    $write("\n");
  end
  $write("\n");
endtask

task PrintBoard2D_file;
  for(reg [3:0] i=0; i<DIM; i = i++) begin
    for(reg [3:0] j=0; j<DIM; j += 1) begin
	  $fwrite(res1,"%d",Board2D[i][j]);
    end  
    $fwrite(res1,"\n");
  end
  $fwrite(res1,"\n");
endtask

task PrintBoardChar_file;
reg[3:0] i,j;
reg[7:0] c;
begin
  for(i=0; i<DIM; i = i+1) begin
    for(j=0; j<DIM; j = j+1) begin
	  c = DIM * i + j;
	  if (BoardKnightType[c] == EMPTY) $fwrite(res2,"X  ");
	  else $fwrite(res2,"1  ");  
	end  
	$fwrite(res2,"\n");
  end
  $fwrite(res2,"\n");
end
endtask

task PrintBoardEnum_file;
reg[3:0] i,j;
reg[7:0] c;
begin
  for(i=0; i<DIM; i = i+1) begin
    for(j=0; j<DIM; j = j+1) begin
	  c = DIM * i + j;
	  if (BoardKnightType[c] == EMPTY) $fwrite(res3,"EMPTY  ");
	  else $fwrite(res3,"FULL   ");  
	end  
	$fwrite(res3,"\n");
  end
  $fwrite(res3,"\n");
end
endtask

function IsFree(input [3:0] x, input [3:0] y); 
  // SystemVerilog: One of the jump statements: return. The return statement returns a value
  // and exits from a function.
  if(Board2D[x][y]) return 0;
  else IsFree = 1;
endfunction

task WriteArray2D(input [4:0] x, input [4:0] y, input [6:0] v);
  reg [6:0] c;
  c = DIM * x + y;	
  Board2D[x][y] = v;
  Board1D[c] = v;
endtask

task WriteCharArray1D(input [4:0] x, input [4:0] y, input [6:0] v);
  reg [6:0] c;
  c = DIM * x + y;	
  if (v == 0) begin
    BoardKnightType[c] = EMPTY;
    BoardChar[c] = "-";
  end
  else begin
    BoardKnightType[c] = FULL;
    BoardChar[c] = "*";
  end
endtask

task automatic Try;
  input [4:0] x,y;
  input [6:0] n;
  output result;
  reg [3:0] i;
  reg [4:0] nx,ny;
  reg Finish;

  Finish = 0;
  next_flag = 0;
  back_flag = 0;	

  WriteArray2D(x,y,n);
  WriteCharArray1D(x,y,n);
  next_flag = 1;
  #1;
  `ifdef disp
    $display("Current level is %d\n",n);		
    $fdisplay(res1,"Current level is %d",n);		
    $fdisplay(res2,"Current level is %d",n);
    $fdisplay(res3,"Current level is %d",n);
    PrintBoardChar_file;	  
    PrintBoard2D_file;
    PrintBoardEnum_file;
  `endif
  next_flag = 0;
  #1;	  
  if(n < DIM * DIM) begin
    for(i=0;i<8 && (!Finish); i = i + 1)
    // A begin...end, fork...join, fork...join_any or fork...join_none blocks can have a statement
    // label before the block because they are considered a statement.
    for_block1 : begin 
      nx = x + CMVectX[i];
      ny = y + CMVectY[i];
      if(!nx[4] && !ny[4] && nx < DIM && ny < DIM) begin 
        if(IsFree(nx,ny))
        // A begin...end, fork...join, fork...join_any or fork...join_none blocks can have a statement
	    // label before the block because they are considered a statement.
		if_block1 : begin
                      Try(nx,ny,n+1,Finish);
 		            end : if_block1
        back_flag = 1;
	    next_flag = 0;
      end
    // SystemVerilog: SystemVerilog allows a matching block name to be specified after
    // the block end, join, join_any or join_none keyword, preceded by a colon.
    end : for_block1
    if(Finish) result = 1;
    else begin
	  // SystemVerilog: SystemVerilog allows a label to be specified before any statement, as in C.
      back_flag = 0;
	  #1;
      statement1: result = 0;
	  statement2: WriteArray2D(x,y,0);   //Go back
	  WriteCharArray1D(x,y,0);
      back_flag = 1;
	  next_flag = 0;
      #1;
	  `ifdef disp
        $display("Going Back one level");
        $fdisplay(res1,"Going Back one level");
        $fdisplay(res2,"Going Back one level");
        $fdisplay(res3,"Going Back one level");
        $display("Current level is %d\n",n);
        $fdisplay(res1,"Current level is %d",n-1);
        $fdisplay(res2,"Current level is %d",n-1);
        $fdisplay(res3,"Current level is %d",n-1);
        PrintBoardChar_file;	  
        PrintBoard2D_file;
        PrintBoardEnum_file;
      `endif
    end

  end
  else result = 1;	 
      back_flag = 1;
	  next_flag = 1;

endtask

reg next_flag;
reg back_flag;
reg [1:0] next_back_temp;
reg [1:0] next_back;

// SystemVerilog: SystemVerilog provides a special always_comb procedure for
// modeling combinational logic behavior.
always_comb begin					  
  next_back_temp = {next_flag,back_flag};
end

always @(next_back_temp) begin
  next_back = next_back_temp;
end
	
always @(next_back) begin					  
  case (next_back)
    2'b10 :   Flag = Next;
	2'b01 :   Flag = Back;
	default : Flag = Nothing;
  endcase
end

`ifdef disp
	always @(Flag) begin
	  case (Flag)
	    Next : begin
	             $display("Next Step");
	             $fdisplay(res1,"Next Step");
				 $fdisplay(res2,"Next Step");
				 $fdisplay(res3,"Next Step");
	           end
	    Back : begin
	             $display("Step Back");
	             $fdisplay(res1,"Step Back");
				 $fdisplay(res2,"Step Back");
				 $fdisplay(res3,"Step Back");
		       end
	  endcase
	end
`endif

// SystemVerilog: SystemVerilog provides a final block that is executed at the end of simulation.
final begin
  if(Result) $display("!!! Operation Succeeded !!!");
  else $display("!!! Operation Not Succeeded !!!");
end

`ifdef disp
	initial begin
		#0;
		res1 = $fopen("res_recursive_digit.txt");
		res2 = $fopen("res_recursive_char.txt");
		res3 = $fopen("res_recursive_enum.txt");
	end
`endif

endmodule 
