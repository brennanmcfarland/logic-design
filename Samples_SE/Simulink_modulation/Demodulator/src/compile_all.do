setactivelib -work
adel -all
acom -dbg "$dsn/src/packages/twos_complement_types_pkg.vhd"
acom -dbg "$dsn/src/packages/maths_class_pkg.vhd"
acom -dbg "$dsn/src/packages/bus_class_pkg.vhd"
acom -dbg "$dsn/src/packages/matrix_class_pkg.vhd"
acom -dbg "$dsn/src/packages/generic_functions_pkg.vhd"
acom -dbg "$dsn/src/packages/generic_conversions_pkg.vhd"
acom -dbg "$dsn/src/packages/fir_32_coeff_table.vhd"
acom -dbg "$dsn/src/packages/std_operators_pkg.vhd"
acom -dbg "$dsn/src/packages/mixed_operators_pkg.vhd"
acom -dbg "$dsn/src/abs.vhd"
acom -dbg "$dsn/src/sign.vhd"
acom -dbg "$dsn/src/fir_32.vhd"
acom -dbg "$dsn/src/top_demodulator.bde"
simulinkgenmod -f -o "$wsp/Simulink/top_demodulator.m" top_demodulator top_demodulator
