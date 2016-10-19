#
# rebuild whole project

quiet on
setactivelib -work
acom "$dsn/src/functional/fib.vhd"
acom "$dsn/src/functional/top.vhd"
acom "$dsn/src/testbench.vhd"
acom "$dsn/src/functional/functional_cfg.vhd"

#
#

asim -advdataflow functional_cfg
# initialize simulation
wave
wave /test_bench/CLK
wave /test_bench/RESET
wave /test_bench/ENABLE
wave /test_bench/FIBO
wave /test_bench/DISPA
wave /test_bench/DISPB
run 10000 ns
endsim 
quiet off
#

