#compiling design sources
alog -dbg -quiet  $dsn/src/machine.asf $dsn/src/machine_TB.v
#initializing simulation 
asim -cc -cc_hierarchy machine_TB
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
