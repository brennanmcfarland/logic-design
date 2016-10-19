setactivelib -work
#Compiling UUT module design files
comp "$dsn/src/C2OR.bde"
comp "$dsn/src/OSCIL.bde"
comp "$dsn/src/PFDIV.bde"
comp "$dsn/src/CRV.bde"
comp "$dsn/src/FILTER.bde"
alog "$dsn/src/TB_verilog/FILTER_TB.v"
asim -advdataflow filter_tb

wave
wave -analog -analogmin 0 -analogmax 15 -color 255,0,0 -height 30 /filter_tb/NI
wave -analog -analogmin 0 -analogmax 15 -color 0,0,255 -height 60 /filter_tb/NO
wave /filter_tb/CLK
wave /filter_tb/RESET

run -all
endsim
quiet off
#End simulation macro
