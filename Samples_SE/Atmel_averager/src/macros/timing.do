setactivelib -timing
quiet on
acom $dsn/src/timing/averager.vhd
acom $dsn/src/timing/post_tb.vhd
asim -advdataflow -sdftyp /aver_tb/aver_test= $dsn/src/timing/averager.sdf cfg_aver_tb
wave 
wave /aver_tb/SYSCLK
wave /aver_tb/RST
wave /aver_tb/DATAIN
wave /aver_tb/DATAOUT
run 8030 ns
endsim
quiet off
