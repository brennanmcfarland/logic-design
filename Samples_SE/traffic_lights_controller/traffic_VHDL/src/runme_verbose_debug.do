# clear project library contents
adel -all

# compile project's source files
acom -dbg ffd.vhd counter.vhd
acom -dbg -psl traffic_control_vhd_vunit.psl traffic_control_entity.vhd \
  traffic_control.vhd
acom -dbg testbench_entity.vhd testbench_verbose.vhd

# initialize simulation
asim -ieee_nowarn +access +r tb_verbose

transcript -assert to assert_psl.log

# configure assertions engine - whenever an assertion fails, pause simulation
assertion fail -action break

if not [ batch_mode ] 
    # open Assertion Viewer
	#view assert - Assertion Viewer not implemented yet
endif

# log or add signals to Waveform Viewer
wave /tb/UUT/*

# advance simulation
run 16780 ns

if not [ batch_mode ]
    # open HDL Editor window with the assertion reports
	flushlogs
    opendocument -hde assert_psl.log
endif

# configure assertions engine - whenever an assertion fails, continue simulation
assertion fail -action continue

# uncomment following line to terminate simulation automatically from script
#endsim
