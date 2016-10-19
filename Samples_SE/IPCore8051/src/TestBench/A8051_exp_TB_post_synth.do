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
acom "$dsn/src/Fpga_post_synth.vhd" 
acom "$dsn/src/A8051_exp.bde" 
acom "$dsn/src/TestBench/A8051_exp_TB.vhd" 
acom "$dsn/src/TestBench/A8051_exp_TB_post_synth_cfg.vhd"
asim -advdataflow -noglitch POST_SYNTH_FOR_A8051_exp 
#  waveforms 	
setenv top a8051_exp_tb
do ./TestBench/controller.do
do ./TestBench/display.do
do ./TestBench/keyboard.do



run 170 us
#Message printed on display:  *** HELLO ***
#                             IP Core 8051
pause 1 s
run 120 us
#Message printed on display:  PRESS ANY KEY 
#                             IP Core 8051
#The first byte was received by serial port. 
#Key 0 was pressed.
pause 1 s 
run 95 us
#Message printed on display:  PRESS ANY KEY
#                             KEY NUMBER 0
pause 1 s
run 15 us
#The second byte was received by serial port. 
#Key 6 was pressed.
pause 1 s
run 100 us
#Message printed on display: PRESS ANY KEY
#                            KEY NUMBER 6

#endsim