setactivelib -work
#Compiling UUT module design files
comp "$dsn/src/rm16x16.bde" 
comp "$dsn/src/rm16x32.bde" 
comp "$dsn/src/c4ud.bde" 
comp "$dsn/src/c4u.bde" 
comp "$dsn/src/fifod.bde" 
comp "$dsn/src/fd16d.bde" 
comp "$dsn/src/fifo.bde" 
alog "$dsn/src/TB_verilog/fifo_TB.v" 

asim -advdataflow fifo_tb

wave
wave -noreg /fifo_tb/DIP
wave -noreg /fifo_tb/CLKP
wave -noreg /fifo_tb/PUSHP
wave -noreg /fifo_tb/POPP
wave -noreg /fifo_tb/DOP
wave -noreg /fifo_tb/EMPTYP
wave -noreg /fifo_tb/FULLP
wave -noreg /fifo_tb/LASTP

run 1820.00 ns

#End simulation macro
