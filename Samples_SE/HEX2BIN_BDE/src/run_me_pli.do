setactivelib -work
cd $dsn/src
buildc $dsn/src/external/read_byte_ex.dlm
alog  "$dsn/src/CD4029.v"
alog  "$dsn/src/ASCIIDEC.v"
alog  "$dsn/src/INTELHEX.v"
alog  "$dsn/src/DAT_CNT.v"
alog  "$dsn/src/COMP.v" 
alog  "$dsn/src/REG4.v"	  
alog  "$dsn/src/SUB.v"
alog  "$dsn/src/DATREG.v"
alog  "$dsn/src/ADRCNT.bde"
alog  "$dsn/src/LRC.bde" 
alog  "$dsn/src/DAC_SC1.bde"
alog  "$dsn/src/uut_std.v"
alog -pli "$dsn/src/external/read_byte_ex.dll" "$dsn/src/uut_pli.v"
asim  -t ps -pli $dsn/src/external/read_byte_ex.dll  +access +r UUT_PLI  
wave
wave /UUT_PLI/AB
wave /UUT_PLI/CLK
wave /UUT_PLI/CLR
wave /UUT_PLI/DB
wave /UUT_PLI/DI
wave /UUT_PLI/EN
wave /UUT_PLI/ERR
wave /UUT_PLI/f
wave /UUT_PLI/f1
wave /UUT_PLI/stc
wave /UUT_PLI/WR	 
run 25 ns
endsim