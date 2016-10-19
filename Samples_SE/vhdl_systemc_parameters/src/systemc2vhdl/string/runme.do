
adel -all

# compile project's source files
acom $dsn/src/systemc2vhdl/string/vhdl.vhd

set TARGET systemc.dll

ccomp -sc $dsn/src/systemc2vhdl/string/systemc.cpp -o $TARGET
addsc $TARGET

# initialize simulation
asim top

run -all

# uncomment following line to terminate simulation automatically from script
#endsim
