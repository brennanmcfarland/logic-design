set sc_signal_write_check DISABLE

cd $dsn/src
#building and importing SystemC modules	into working library  
buildc $dsn/src/systemc/hex_ram.dlm	   
# VHDL testbench compilation
vcom testbench.vhd
#initialization of simulation
vsim -ieee_nowarn hex_ram_tb ahex_ram_tb

wave -noreg /hex_ram_tb/sc_u/CLK
wave -noreg /hex_ram_tb/sc_u/CLR
wave -noreg /hex_ram_tb/sc_u/EN
wave -noreg /hex_ram_tb/sc_u/C0
wave -noreg /hex_ram_tb/sc_u/DUMP_RAM
wave -noreg /hex_ram_tb/sc_u/CHR
wave -noreg /hex_ram_tb/sc_u/WR
wave -noreg /hex_ram_tb/sc_u/ERR
wave -noreg /hex_ram_tb/sc_u/ADDR
wave -noreg /hex_ram_tb/sc_u/DATA

run -all
endsim
