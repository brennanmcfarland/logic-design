quiet on
setactivelib -work
#Compiling UUT entity design files
comp "$dsn/src/C2OR.bde"
comp "$dsn/src/OSCIL.bde"
comp "$dsn/src/PFDIV.bde"
comp "$dsn/src/CRV.bde"
comp "$dsn/src/FILTER.bde"
acom "$dsn/src/TB_vhd/FILTER_TB.vhd"

#Run simulation
asim -t ps -advdataflow  TESTBENCH_FOR_FILTER_FUNCTIONAL
#asim TIMING_FOR_FILTER

wave
wave -analog -analogmin 0 -analogmax 15 -color 255,0,0 -height 30 /filter_functional_tb/NI
wave -analog -analogmin 0 -analogmax 15 -color 0,0,255 -height 60 /filter_functional_tb/NO
wave /filter_functional_tb/CLK
wave /filter_functional_tb/RESET

run -all
endsim
quiet off
#End simulation macro
