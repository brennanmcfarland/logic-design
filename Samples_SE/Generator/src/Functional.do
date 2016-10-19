#
# rebuild whole project
#

quiet on		  
setactivelib -work
acom "$dsn/src/generator.asf"
acom "$dsn/src/testbench.vhd"

asim -advdataflow  conf_testbench_arch
# initialize simulation
wave 
wave /testbench/RESET
wave /testbench/Y
wave /testbench/A
wave /testbench/B
wave /testbench/S
wave /testbench/CLOCK
run 10 us
endsim 
quiet off
#

