# clear project library contents
adel -all

# compile project's source files
alog ffd.v counter.v
alog +define+_NO_BUG traffic_control.v tb.v \
  -psl traffic_control_ver_vunit.psl

# initialize simulation
asim +access +r {$root}

# add signals to Waveform Viewer
wave /tb/UUT/*

# advance simulation
run -all

# uncomment following line to terminate simulation automatically from script
#endsim
