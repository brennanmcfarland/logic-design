alog -dbg -pli "$dsn/src/PLI/oscil_c_pli.dll" "$dsn/src/and2.v"
alog -dbg -pli "$dsn/src/PLI/oscil_c_pli.dll" "$dsn/src/and3.v"
alog -dbg -pli "$dsn/src/PLI/oscil_c_pli.dll" "$dsn/src/and4.v"
acom -dbg "$dsn/src/c2or.vhd"
acom -dbg "$dsn/src/cb4ce.vhd"
alog -dbg -pli "$dsn/src/PLI/oscil_c_pli.dll" "$dsn/src/oscil_c_pli.v"
acom -dbg "$dsn/src/pfdiv.vhd"
edfcomp "$dsn/src/crv.bde"
acom -dbg "$dsn/src/filter.bde"
comp "$dsn/src/oscil_c_pli.dlm"
acom -dbg "$dsn/src/testbench/filter_tb.vhd"
