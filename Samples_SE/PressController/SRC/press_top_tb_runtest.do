acom "$dsn/src/automachine.asf" 
acom "$dsn/src/counters.vhd" 
acom "$dsn/src/press.bde" 
acom "$dsn/src/press_top.bde" 
acom "$dsn/src/Press_top_TB.vhd" 
asim -ieee_nowarn -advdataflow TESTBENCH_FOR_Press_top 
wave  
wave /press_top_tb/CLR
wave /press_top_tb/CLK
wave /press_top_tb/CLK_T
wave /press_top_tb/DET
wave /press_top_tb/STR
wave /press_top_tb/STP
wave /press_top_tb/RST
wave /press_top_tb/Y
wave /press_top_tb/OUTPUT
wave /press_top_tb/TIMER
wave /press_top_tb/LIMIT
run 7 ms
endsim