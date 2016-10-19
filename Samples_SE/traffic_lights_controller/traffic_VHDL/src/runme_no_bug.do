# clear project library contents
adel -all

# compile project's source files
acom -O2 ffd.vhd counter.vhd
acom -O2 -psl traffic_control_vhd_vunit.psl traffic_control_entity.vhd \
  traffic_control_no_bug.vhd
acom -O2 testbench_entity.vhd testbench_no_bug.vhd

# initialize simulation
asim -ieee_nowarn +access +r tb_correct

# log or add signals to Waveform Viewer
wave /tb/UUT/*

# advance simulation
run 16780 ns

# uncomment following line to terminate simulation automatically from script
#endsim
