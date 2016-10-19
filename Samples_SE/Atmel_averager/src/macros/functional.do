setactivelib -work
quiet on
acom $dsn/src/functional/averager.vhd
acom $dsn/src/functional/aver_tb.vhd
asim -advdataflow cfg_aver_tb
wave 
wave /aver_tb/SYSCLK
wave /aver_tb/RST
wave /aver_tb/DATAIN
wave /aver_tb/DATAOUT
run 8030 ns
endsim
quiet off
