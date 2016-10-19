acom $dsn/src/REG.vhd
acom $dsn/src/MUX.vhd
acom $dsn/src/COMPARATOR.vhd
acom $dsn/src/ADDSUB.vhd
acom $dsn/src/COMP.bde
acom $dsn/src/REGS.bde
acom $dsn/src/ALU.bde
acom $dsn/src/CONTROL_FSM.asf
acom $dsn/src/COUNTER.vhd
acom $dsn/src/DATAPATH.bde
acom $dsn/src/CONTROL.bde
acom $dsn/src/top.bde
acom $dsn/src/testbench.vhd
asim -advdataflow top_testbench
#
wave  
wave /top_testbench/CLK
wave /top_testbench/RESET
wave /top_testbench/START
wave /top_testbench/CODE
wave /top_testbench/DATA_IN
wave /top_testbench/OVL
wave /top_testbench/Q_OUT
run 11 us

