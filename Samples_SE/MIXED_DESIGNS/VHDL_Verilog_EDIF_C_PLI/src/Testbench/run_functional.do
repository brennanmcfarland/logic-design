quiet on
@onerror
{
goto end
}


setactivelib -work
buildc $dsn/src/oscil_c_pli.dlm				  
alog $dsn/src/and4.v
alog $dsn/src/and3.v
alog $dsn/src/and2.v
alog $dsn/src/oscil_c_pli.v
acom $dsn/src/cb4ce.vhd
acom $dsn/src/c2or.vhd
edfcomp $dsn/src/crv.bde
acom $dsn/src/pfdiv.vhd	
acom $dsn/src/filter.bde
acom $dsn/src/testbench/filter_tb.vhd
asim -pli $dsn/src/PLI/oscil_c_pli.dll -advdataflow -ses +access +r filter_tb tb_architecture

wave
wave -analog -analogmin 0 -analogmax 15 -color 255,0,0 -height 30 /filter_tb/UUT/NI
wave -analog -analogmin 0 -analogmax 15 -color 0,0,255 -height 44 /filter_tb/UUT/NO
wave /filter_tb/UUT/CLK
wave /filter_tb/UUT/RESET 

run -all
endsim

label end

quiet off
