setactivelib -work
vlcomp "$dsn/src/asciidec.v"
vlcomp "$dsn/src/reg.v"
vlcomp "$dsn/src/lrc.v"
vlcomp "$dsn/src/dat_cnt.v"
vlcomp "$dsn/src/adrcnt.v"
vlcomp "$dsn/src/ihx_fsm.v"
vlcomp "$dsn/src/h2b.v"
vlcomp "$dsn/src/uut.v"
asim  +access +r+m+UUT  UUT   
wave
wave /UUT/AB
wave /UUT/CLK
wave /UUT/CLR
wave /UUT/DB
wave /UUT/DI
wave /UUT/EN
wave /UUT/ERR
wave /UUT/f
wave /UUT/s
wave /UUT/stc
wave /UUT/WR
run -all
endsim