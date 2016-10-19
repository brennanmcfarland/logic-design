#
# rebuild the whole project
#
		  
setactivelib -work
quiet on
vlcomp -dbg "$dsn/src/Gates.v"
vlcomp -dbg "$dsn/src/Bin2bcd.v"
vlcomp -dbg "$dsn/src/Bcd2led.v"
vlcomp -dbg "$dsn/src/Bjack_c.v"
vlcomp -dbg "$dsn/src/Gen.v"
vlcomp -dbg "$dsn/src/Johnson8.v"
vlcomp -dbg "$dsn/src/Mux.v"
vlcomp -dbg "$dsn/src/V_bjack.v"
vlcomp -dbg "$dsn/src/Tb.v"
# 
#
# set top-level and initialize the simulator  
#
asim -advdataflow -t ps -cc -cc_dest $dsn/coverage -cc_hierarchy -cc_all V_BJACK_tb
#
# invoke Waveform Viewer window, add signals to Waveform
#
wave
wave /V_BJACK_tb/GEN_RES
wave /V_BJACK_tb/SYS_CLK
wave /V_BJACK_tb/GEN_CLK
wave /V_BJACK_tb/START
wave /V_BJACK_tb/NEW_CARD
wave /V_BJACK_tb/D_L
wave /V_BJACK_tb/D_H
wave /V_BJACK_tb/L_L
wave /V_BJACK_tb/L_H
wave /V_BJACK_tb/BUST
wave /V_BJACK_tb/HOLD
wave /V_BJACK_tb/LEDS
#
#
#
run 15.41 ns
endsim
quiet off
