acom "$dsn/src/XILINX POST-P&R/presscontroller.vhd" 
acom "$dsn/src/XILINX POST-P&R/PRESS_TB_XI.vhd" 
asim  -advdataflow -sdftyp /press_top_tb_xi/uut="$dsn/src/Xilinx Post-P&R/presscontroller.sdf" TESTBENCH_FOR_press_top
wave  
wave /press_top_tb_xi/CLR
wave /press_top_tb_xi/CLK
wave /press_top_tb_xi/CLK_T
wave /press_top_tb_xi/DET
wave /press_top_tb_xi/STR
wave /press_top_tb_xi/STP
wave /press_top_tb_xi/RST
wave /press_top_tb_xi/Y
wave /press_top_tb_xi/OUTPUT
wave /press_top_tb_xi/TIMER
wave /press_top_tb_xi/LIMIT
run 7 ms
endsim
