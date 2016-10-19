setactivelib -work
vlcomp  "$dsn/src/CD4029.v"
vlcomp  "$dsn/src/ASCIIDEC.v"
vlcomp  "$dsn/src/INTELHEX.v"
vlcomp  "$dsn/src/DAT_CNT.v"
vlcomp  "$dsn/src/COMP.v" 
vlcomp  "$dsn/src/REG4.v"	  
vlcomp  "$dsn/src/SUB.v"
vlcomp  "$dsn/src/DATREG.v"
vlcomp  "$dsn/src/ADRCNT.bde"
vlcomp  "$dsn/src/LRC.bde" 
vlcomp  "$dsn/src/DAC_SC1.bde"
vlcomp  "$dsn/src/uut_std.v"
asim -t ps +access +r  UUT_STD	 
wave
wave /UUT_STD/AB
wave /UUT_STD/CLK
wave /UUT_STD/CLR
wave /UUT_STD/DB
wave /UUT_STD/DI
wave /UUT_STD/EN
wave /UUT_STD/ERR
wave /UUT_STD/f
wave /UUT_STD/f1
wave /UUT_STD/stc
wave /UUT_STD/WR
run -all
endsim