alog $dsn/src/filter_simple.v
alog $dsn/src/filter_bessel.v
alog $dsn/src/abs.v
comp $dsn/src/DSP.bde
alog -incdir "$vlib/aldec/src" -pli "$aldec/BIN/aldec_matlab_cosim.dll"  $dsn/src/dsp_test.bde