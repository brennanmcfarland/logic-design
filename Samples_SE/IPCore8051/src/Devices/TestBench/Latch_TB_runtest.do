acom "$dsn/src/Devices/Latch.vhd" 
acom "$dsn/src/Devices/TestBench/Latch_TB.vhd" 
asim -advdataflow TESTBENCH_FOR_Latch 
wave  
wave /latch_tb/INP
wave /latch_tb/OUTP
wave /latch_tb/CLK
run 2.5 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# acom "$dsn/src/TestBenchAA/Latch_TB_tim_cfg.vhd" 
# asim TIMING_FOR_Latch 
