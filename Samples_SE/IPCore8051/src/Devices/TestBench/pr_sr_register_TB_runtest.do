acom "$dsn/src/Devices/pr_sr_register.vhd" 
acom "$dsn/src/Devices/TestBench/pr_sr_register_TB.vhd" 
asim -advdataflow TESTBENCH_FOR_pr_sr_register 
wave  
wave /pr_sr_register_tb/nWRS
wave /pr_sr_register_tb/TXC
wave /pr_sr_register_tb/RESET
wave /pr_sr_register_tb/DATAS
wave /pr_sr_register_tb/INT
wave /pr_sr_register_tb/BUSY
wave /pr_sr_register_tb/TXD
run 2.7 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# acom "$dsn/src/TestBench/pr_sr_register_TB_tim_cfg.vhd" 
# asim TIMING_FOR_pr_sr_register 
