acom "$dsn/src/Devices/Types.vhd" 
acom "$dsn/src/Devices/display.vhd" 
acom "$dsn/src/Devices/pr_sr_register.vhd" 
acom "$dsn/src/Devices/ram.vhd" 
acom "$dsn/src/Devices/Latch.vhd" 
acom "$dsn/src/Devices/keyboard.vhd" 
acom "$dsn/src/8051/registers.vhd" 
acom "$dsn/src/8051/Timers.VHD" 
acom "$dsn/src/8051/Console.vhd" 
acom "$dsn/src/8051/InternalProgramMemory.vhd" 
acom "$dsn/src/8051/AL8051.vhd" 
acom "$dsn/src/Fpga.bde" 
acom "$dsn/src/A8051_exp.bde" 
acom "$dsn/src/TestBench/A8051_exp_TB.vhd" 
asim -advdataflow TESTBENCH_FOR_A8051_exp 

#  waveforms 	
setenv top a8051_exp_tb
do ./TestBench/controller.do
do ./TestBench/display.do
do ./TestBench/keyboard.do
do ./TestBench/pr_sr_register.do   

run 170 us
#Message printed on display:  *** HELLO ***
#                             IP Core 8051
pause 1 s
run 90 us
#Message printed on display:  PRESS ANY KEY 
#                             IP Core 8051
#Writing byte to parallel - serial register.
pause 1 s
run 10 us
#The byte was received by serial port. 
#Key 0 was pressed.
pause 1 s 
run 95 us
#Message printed on display:  PRESS ANY KEY
#                             KEY NUMBER 0
pause 1 s
run 5 us
#Writing next byte to parallel - serial register.
pause 1 s
run 10 us
#The byte was received. 
#Key 6 was pressed.
pause 1 s
run 100 us
#Message printed on display: PRESS ANY KEY
#                            KEY NUMBER 6
#endsim
