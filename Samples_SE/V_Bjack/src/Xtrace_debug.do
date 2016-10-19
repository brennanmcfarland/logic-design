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
asim +access +r -t ps V_BJACK_tb 
#
# enable xtracing with the xtrace command
#
xtrace -source -stop_condition * -rec /V_BJACK_tb/UUT/*
#
# trace signals
#
log -rec /V_BJACK_tb/* 
#
#wave
#wave /V_BJACK_tb/UUT/OFF     
#wave /V_BJACK_tb/UUT/I11/OFF        
#wave /V_BJACK_tb/UUT/I1/O        
#wave /V_BJACK_tb/UUT/L_H(1)        
#wave /V_BJACK_tb/UUT/I11/LED_H(1)        
#wave /V_BJACK_tb/UUT/OFF        
#wave /V_BJACK_tb/UUT/I11/OFF        
#wave /V_BJACK_tb/UUT/I1/O        
#wave /V_BJACK_tb/UUT/L_H(1)        
#wave /V_BJACK_tb/UUT/I11/LED_H(1)        
#wave /V_BJACK_tb/UUT/OFF        
#wave /V_BJACK_tb/UUT/I11/OFF        
#wave /V_BJACK_tb/UUT/I1/O        
#wave /V_BJACK_tb/UUT/L_H(1)        
#wave /V_BJACK_tb/UUT/I11/LED_H(1)        
#wave /V_BJACK_tb/UUT/OFF        
#wave /V_BJACK_tb/UUT/I11/OFF        
#wave /V_BJACK_tb/UUT/I1/O        
#wave /V_BJACK_tb/UUT/L_H(1)        
#wave /V_BJACK_tb/UUT/I11/LED_H(1)  
run 1200 ps
      

#endsim
quiet off
