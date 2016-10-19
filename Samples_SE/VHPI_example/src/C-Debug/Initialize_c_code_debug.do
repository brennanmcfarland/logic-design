#compile all hdl files
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
#build dlm file
buildc "$dsn/src/vhpi_for_ahdl/vhpi_for_ahdl.dlm"
#set top level 
configuration testbench_cnt_bcd_conf
#initialize c-code debug session
cdebug -abp