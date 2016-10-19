#compile all hdl files
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
vlcomp  "$dsn/src/uut_pli.v" 
#build dlm file
buildc "$dsn/src/external/read_byte_ex.dlm"
#set top level 
module UUT_PLI
#initialize c-code debug session
cdebug -abp

