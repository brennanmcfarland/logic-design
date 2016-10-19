setactivelib -work
buildc $dsn/src/vhpi_for_ahdl/vhpi_for_ahdl.dlm
acom "$dsn/src/and2.vhd" 
acom "$dsn/src/cnt_4b.vhd" 
acom "$dsn/src/hex2led.vhd" 
acom "$dsn/src/CNT_BCD.bde" 
acom "$dsn/src/CONTROL.asf" 
acom "$dsn/src/freq_top.bde" 
acom "$dsn/src/TestBench/TestBenchPack.vhd"
acom "$dsn/src/vhpi_component.vhd"    
acom "$dsn/src/TestBench/testbench_vhpi.vhd"    
acom "$dsn/src/testbench_cnt_bcd_conf.vhd"    
asim testbench_cnt_bcd_conf 
run -next
endsim

