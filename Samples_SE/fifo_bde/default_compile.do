edfcomp "$dsn/src/fd16d.bde"
edfcomp "$dsn/src/c4u.bde"
edfcomp "$dsn/src/c4ud.bde"
edfcomp "$dsn/src/fifod.bde"
edfcomp "$dsn/src/rm16x32.bde"
edfcomp "$dsn/src/rm16x16.bde"
edfcomp "$dsn/src/fifo.bde"
alog -dbg "$dsn/src/tb_verilog/fifo_tb.v"
acom -dbg "$dsn/src/tb_vhd/fifo_tb.vhd"
