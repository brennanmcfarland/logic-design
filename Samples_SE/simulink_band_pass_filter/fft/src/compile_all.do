setactivelib -work
adel -all
do "$dsn/src/compile_cfft.do"
acom -dbg "$dsn/src/ram/ram.vhd"
acom -dbg "$dsn/src/control/control.asf"
acom -dbg "$dsn/src/top_fft.bde"
simulinkgenmod -f -o "$wsp/Simulink/top_fft.m" top_fft top_fft
