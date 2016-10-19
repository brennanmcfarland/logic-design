acom "$dsn/src/Devices/ram.vhd" 
acom "$dsn/src/Devices/TestBench/ram_TB.vhd" 
asim -advdataflow TESTBENCH_FOR_ram 
wave  
wave /ram_tb/nRD
wave /ram_tb/nWR
wave /ram_tb/nCS
wave /ram_tb/DATA
wave /ram_tb/ADDRESS
run 5.1 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# acom "$dsn/src/TestBench/ram_TB_tim_cfg.vhd" 
# asim TIMING_FOR_ram 
