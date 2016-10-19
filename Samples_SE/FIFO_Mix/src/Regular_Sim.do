alog -dbg ram.v 
alog -dbg counter.v 
acom -dbg control.asf 
acom -dbg fifo.vhd 
acom -dbg top.bde 
acom -dbg top_TB.vhd 
asim top_tb

wave 
wave /top_tb/UUT/WE
wave /top_tb/UUT/EMPTY
wave /top_tb/UUT/FULL
wave /top_tb/UUT/FIFO_READ
wave /top_tb/UUT/WDATA
wave /top_tb/UUT/ADDR_INCR
wave /top_tb/UUT/ADDR
wave /top_tb/UUT/MEM_WR
wave /top_tb/UUT/RDATA
wave /top_tb/UUT/CNTR_FULL
wave CLK1
wave CLK2
wave CLR
wave DONE
wave Q

#Display MEMORY VIEWER windows for FIFO and RAM 
mem -valueradix ascii -cols 16 /top_tb/UUT/U2/fifo_array
view mem
mem -valueradix ascii -cols 16 /top_tb/UUT/U5/ram_MEM

#Display ASSERTION/COVERAGE VIEWER window
view assert

#Run simulation for a brief time
run 70 ns 

@echo "*****************************************************"
@echo "*** USE 'Run For...' TOOLBAR BUTTON TO PROCEED... ***"
@echo "*****************************************************"
