setactivelib -work
adel -all
do compile_cfft.do
acom -dbg "$dsn/src/ram/ram.vhd"
comp "$dsn/src/control/control.asf"
comp "$dsn/src/top_fft.bde"
simulinkgenmod -f -o "$wsp/Simulink/top_fft.m" top_fft top_fft
