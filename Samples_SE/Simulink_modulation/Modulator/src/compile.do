setactivelib -work
adel -all
acom -dbg $dsn/src/mult.vhd
simulinkgenmod -f -o "$wsp/Simulink/mult.m" mult beh
