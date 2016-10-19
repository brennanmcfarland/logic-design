#
# rebuild the whole project
#
		  
setactivelib -work
quiet on
vlcomp "$dsn/src/Hex2Led.v"
vlcomp "$dsn/src/CNT_10b.bde"
vlcomp "$dsn/src/Bin2bcd.v"
vlcomp "$dsn/src/control.asf"
vlcomp "$dsn/src/freq_m.bde"
vlcomp "$dsn/src/frequency_meter_tb.v"


#
# set top-level and initialize the simulator  
#
asim -advdataflow +access +rw frequency_meter_tb
#
# invoke Waveform Viewer window, add signals to Waveform
#
wave
wave /frequency_meter_tb/LED_D
wave /frequency_meter_tb/LED_C
wave /frequency_meter_tb/LED_B
wave /frequency_meter_tb/LED_A
wave /frequency_meter_tb/RESET
wave /frequency_meter_tb/F_INPUT
wave /frequency_meter_tb/F_PATTERN
wave /frequency_meter_tb/F_CONV
wave /frequency_meter_tb/FULL
wave /frequency_meter_tb/START	
wave /frequency_meter_tb/UUT/*
#
#
#
run -all
endsim
quiet off
