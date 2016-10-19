setactivelib -work
adel -all
acom -dbg $dsn/src/sign.vhd
acom -dbg $dsn/src/mult.vhd
acom -dbg $dsn/src/mult1.vhd
acom -dbg $dsn/src/abs.vhd
simulinkgenmod -f -o "$wsp/Simulink/mult.m" mult beh
simulinkgenmod -f -o "$wsp/Simulink/m_abs.m" m_abs beh
simulinkgenmod -f -o "$wsp/Simulink/mult1.m" mult1 beh
simulinkgenmod -f -o "$wsp/Simulink/signum.m" signum beh
