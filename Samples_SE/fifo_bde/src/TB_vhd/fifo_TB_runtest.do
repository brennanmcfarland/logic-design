setactivelib -work
comp "$dsn/src/rm16x16.bde" 
comp "$dsn/src/rm16x32.bde" 
comp "$dsn/src/c4ud.bde" 
comp "$dsn/src/c4u.bde" 
comp "$dsn/src/fifod.bde" 
comp "$dsn/src/fd16d.bde" 
comp "$dsn/src/fifo.bde" 
acom "$dsn/src/TB_vhd/fifo_TB.vhd" 
asim -advdataflow TESTBENCH_FOR_fifo 
wave 
wave -noreg /fifo_tb/DIP
wave -noreg /fifo_tb/DOP
wave -noreg /fifo_tb/CLKP
wave -noreg /fifo_tb/EMPTYP
wave -noreg /fifo_tb/FULLP
wave -noreg /fifo_tb/LASTP
wave -noreg /fifo_tb/POPP
wave -noreg /fifo_tb/PUSHP
run 1820.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp "$dsn/src/TB_vhd/fifo_TB_tim_cfg.vhd" 
# asim TIMING_FOR_fifo 
