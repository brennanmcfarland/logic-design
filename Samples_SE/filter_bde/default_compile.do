edfcomp "$dsn/src/filter.bde"
edfcomp "$dsn/src/pfdiv.bde"
edfcomp "$dsn/src/c2or.bde"
edfcomp "$dsn/src/oscil.bde"
edfcomp "$dsn/src/crv.bde"
alog -dbg "$dsn/src/tb_verilog/filter_tb.v"
acom -dbg "$dsn/src/tb_vhd/filter_tb.vhd"
