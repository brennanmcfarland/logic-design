acom "$dsn/src/Devices/types.vhd" 
acom "$dsn/src/Devices/display.vhd" 
acom "$dsn/src/Devices/TestBench/display_TB.vhd" 
asim -advdataflow  TESTBENCH_FOR_display 
wave  
wave /display_tb/nCS
wave /display_tb/CTR
wave /display_tb/nWR
wave /display_tb/nRD
wave /display_tb/ADDRESS
wave /display_tb/DATA
wave /display_tb/SCREEN
run 30. us
