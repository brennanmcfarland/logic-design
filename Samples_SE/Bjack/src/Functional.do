
#
# rebuild the whole project
#

quiet on
setactivelib -work
acom -dbg "$dsn/src/gates.vhd"
acom -dbg "$dsn/src/bjack_c.asf"
acom -dbg "$dsn/src/disp_units.vhd"
acom -dbg "$dsn/src/bjack.vhd"
acom -dbg "$dsn/src/testbench.vhd"

#
# set top-level and initialize the simulator, set parameters for code coverage data generation  
#
asim -advdataflow -cc -cc_dest $dsn/coverage -cc_hierarchy -cc_all testbench testbench_arch
#
# invoke Waveform Viewer window, add signals to Waveform
#
wave
wave /testbench/GEN_RES
wave /testbench/SYS_CLK
wave /testbench/GEN_CLK
wave /testbench/START
wave /testbench/NEW_CARD
wave /testbench/D_L
wave /testbench/D_H
wave /testbench/L_L
wave /testbench/L_H
wave /testbench/BUST
wave /testbench/HOLD
wave /testbench/LEDS
#
#
#
run 8720 ns
endsim
quiet off
