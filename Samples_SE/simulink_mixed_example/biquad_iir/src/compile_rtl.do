setactivelib -work
adel -all
alog -dbg "$dsn/src/multa.v"
alog -dbg "$dsn/src/multb.v"
alog -dbg "$dsn/src/biquad.v"
simulinkgenmod -f -o "$wsp/Simulink/biquad.m" biquad
