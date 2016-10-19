setactivelib -work
acom "$dsn/src/and2.vhd" 
acom "$dsn/src/cnt_4b.vhd" 
acom "$dsn/src/hex2led.vhd" 
acom "$dsn/src/CNT_BCD.bde" 
acom "$dsn/src/CNT_BCD2.bde" 
acom "$dsn/src/CONTROL.asf" 
acom "$dsn/src/freq_top.bde" 
acom "$dsn/src/TestBench/TestBenchPack.vhd"
acom "$dsn/src/TestBench/testbench.vhd"    
acom "$dsn/src/testbench_cnt_bcd_conf.vhd"    
# 

asim -advdataflow testbench_cnt_bcd_conf 
wave
wave /testbench/stim_*  
wave /testbench/expected*	
wave /testbench/actual*  
run 25 us	  
endsim

