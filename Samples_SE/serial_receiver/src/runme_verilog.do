adel -all
cd $dsn/src
buildc testwrapper.dlm	
addfile testwrapper.dll
addsc testwrapper.dll

alog -v2k -dbg "$dsn/src/verilog/clk_gen.v"
alog -v2k -dbg "$dsn/src/verilog/rcv_reg.v"
alog -v2k -dbg "$dsn/src/verilog/synchronizer.v"
alog -v2k -dbg "$dsn/src/verilog/latched_val.v"
alog -v2k -dbg "$dsn/src/verilog/rcv.bde"
alog -v2k -dbg "$dsn/src/verilog/test_env.bde"

asim  +access +r test_env

wave /test_env/*

run 6 us

endsim