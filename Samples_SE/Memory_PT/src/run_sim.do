acom -2002 "$dsn/src/sparse.vhd"
acom -2002 "$dsn/src/memory.vhd"
acom -2002 "$dsn/src/memory_tb.vhd"
asim memory_tb tb_architecture

wave /memory_tb/CLK
wave /memory_tb/ADDR
wave /memory_tb/WE
wave /memory_tb/DI
wave /memory_tb/RE
wave /memory_tb/DO
wave -noreg /memory_tb/UUT/mem.SIZE
run -all
