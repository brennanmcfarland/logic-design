acom "$dsn/src/Devices/keyboard.vhd" 
acom "$dsn/src/Devices/TestBench/keyboard_TB.vhd" 
asim -advdataflow TESTBENCH_FOR_keyboard 
wave  
wave /keyboard_tb/Key_0
wave /keyboard_tb/Key_1
wave /keyboard_tb/Key_2
wave /keyboard_tb/Key_3
wave /keyboard_tb/Key_4
wave /keyboard_tb/Key_5
wave /keyboard_tb/Key_6
wave /keyboard_tb/Key_7
wave /keyboard_tb/Key_8
wave /keyboard_tb/Key_9
wave /keyboard_tb/RESET
wave /keyboard_tb/ACKA
wave /keyboard_tb/INTA
wave /keyboard_tb/CODE
run 4.3 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# acom "$dsn/src/TestBench/keyboard_TB_tim_cfg.vhd" 
# asim TIMING_FOR_keyboard 
