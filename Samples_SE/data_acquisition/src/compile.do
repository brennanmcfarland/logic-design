#adel -all
cd $dsn/src
buildc $dsn/src/testbench/tester.dlm 
addfile $dsn/src/testbench/tester.dll
addsc $dsn/src/testbench/tester.dll

acom $dsn/src/clk_gen.vhd
acom $dsn/src/clk_div.vhd
acom $dsn/src/clocks.bde
acom $dsn/src/fifo.vhd
acom $dsn/src/test_environment.bde


