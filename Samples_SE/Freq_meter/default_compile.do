acom -dbg "$dsn/src/hex2led.vhd"
acom -dbg "$dsn/src/control.asf"
acom -dbg "$dsn/src/and2.vhd"
acom -dbg "$dsn/src/cnt_4b.vhd"
acom -dbg "$dsn/src/cnt_bcd.bde"
acom -netlist -skip e -dbg "$dsn/src/cnt_bcd2.bde"
acom -dbg "$dsn/src/freq_top.bde"
acom -dbg "$dsn/src/testbench_cnt_bcd_conf.vhd"
acom -dbg "$dsn/src/testbench/testbenchpack.vhd"
acom -dbg "$dsn/src/testbench/testbench.vhd"
