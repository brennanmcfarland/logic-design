adel -all
cd $dsn/src
buildc testwrapper.dlm	
addfile testwrapper.dll
addsc testwrapper.dll

acom -dbg "$dsn/src/vhdl/clk_gen.vhd"
acom -dbg "$dsn/src/vhdl/rcv_reg.vhd"
acom -dbg "$dsn/src/vhdl/synchronizer.vhd"
acom -dbg "$dsn/src/vhdl/latched_val.vhd"
acom -dbg "$dsn/src/vhdl/rcv.bde"
acom -dbg "$dsn/src/vhdl/test_env.bde"

asim test_env

wave /test_env/*

run 6 us

endsim