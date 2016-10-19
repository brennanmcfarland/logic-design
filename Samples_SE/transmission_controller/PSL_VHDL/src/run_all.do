#compiling design sources
acom -dbg -2002 -quiet -relax $dsn/src/machine.asf $dsn/src/machine_TB.vhd
#initializing simulation 
asim TESTBENCH_FOR_machine
#removing all breakpoints set previously 
bsd -all
bad -all -any
#running simulation 
run 360.00 ns
#ending simulation 
endsim
@echo ###################################
@echo # PLEASE ANALYSE SIMULATOR OUTPUT #
@echo # IN THE CONSOLE TO SEE ASSERTION #
@echo # AND COVER GENERATED MESSAGES... #
@echo ###################################
