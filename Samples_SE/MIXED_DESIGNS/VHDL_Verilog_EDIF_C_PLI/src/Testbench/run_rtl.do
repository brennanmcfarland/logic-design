quiet on
@onerror
{
goto end
}

setactivelib -work
				  
alog $dsn/src/and4.v
alog $dsn/src/and3.v
alog $dsn/src/and2.v
alog $dsn/src/oscil_c_pli.v
acom $dsn/src/cb4ce.vhd
acom $dsn/src/c2or.vhd
edfcomp $dsn/src/crv.bde
acom $dsn/src/pfdiv.vhd	
acom $dsn/src/filter.bde
acom $dsn/src/testbench/filter1_functional_tb.vhd
asim -pli $dsn/src/PLI/oscil_c_pli.dll -advdataflow -ses +access +r filter_functional_tb tb_architecture

wave
wave -ports /filter_functional_tb/UUT/* 
run -all 

label end

quiet off
