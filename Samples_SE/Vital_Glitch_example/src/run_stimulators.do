#Glitches handling exmaple

acom $dsn/src/vital_model.vhd
acom $dsn/src/vital_model_components.vhd
acom $dsn/src/timing_design.vhd
asim +access +r -sdftyp /simple_gate/=timing_design.sdf simple_gate simple_gate  

# adding signal to waveform

wave -vital -rec /simple_gate/*

#Stimulators from command line	 

force /simple_gate/IN1_GATE 1
force /simple_gate/IN2_GATE 1
force /simple_gate/IN3_GATE 1
run 10 ns
force /simple_gate/IN3_GATE 0
run 10 ns
force /simple_gate/IN3_GATE 1
run 40 ps
force /simple_gate/IN3_GATE 0
run 10 ns


