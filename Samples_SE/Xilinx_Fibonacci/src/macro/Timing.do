#
# rebuild whole project

quiet on
setactivelib -timing
acom "$dsn/src/timing/top_routed.vhd"
acom "$dsn/src/testbench.vhd"
acom "$dsn/src/timing/timing_cfg.vhd"
#
# Load SDF file 
#
asim -advdataflow -sdftyp /test_bench/UUT=$dsn/src/timing/top_routed.sdf timing_cfg
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
