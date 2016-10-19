alog -v2k "$dsn/src/counter.v"
acom "$dsn/src/pulse_gen.bde"
acom "$dsn/src/tb.vhd"
asim +access +w -advdataflow testbench beh 
wave /testbench/clk
wave /testbench/reset
wave /testbench/gate
wave /testbench/enable
wave /testbench/full1
wave /testbench/full2
wave /testbench/full3
wave /testbench/pulse
run -all
endsim