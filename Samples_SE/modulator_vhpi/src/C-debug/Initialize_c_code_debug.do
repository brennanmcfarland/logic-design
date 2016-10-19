#build dlm file
buildc "$dsn/src/VHPI/modulator_vhpi.dlm"
#compile all hdl files
acom $dsn/src/VHPI/generator_vhpi.vhd
acom "$dsn/src/multiplier.vhd" 
acom "$dsn/src/modulator.bde" 
acom "$dsn/src/TestBench/modulator_TB.vhd" 
#set top level 
configuration testbench_for_modulator
#initialize c-code debug session
cdebug -abp