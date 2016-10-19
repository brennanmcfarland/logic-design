# clear project library contents
adel -all

# compile project's source files
alog -dbg ffd.v counter.v
alog -dbg +define+_VERBOSE traffic_control.v tb.v \
  -psl traffic_control_ver_vunit.psl

# initialize simulation
asim +access +r {$root}

# enable logging of messages reported by the assertions engine to a file
transcript -assert to assert_psl.log

# configure assertions engine - whenever an assertion fails, pause simulation
assertion fail -action break

if not [ batch_mode ]
    # open Assertion Viewer
    #view assert - Assertion Viewer not implemented yet
endif

# add signals to Waveform Viewer
wave /tb/UUT/*

# advance simulation
run -all

if not [ batch_mode ]
    # open HDL Editor window with the assertion reports
	flushlogs
    opendocument -hde assert_psl.log
endif

# uncomment following line to terminate simulation automatically from script
#endsim
