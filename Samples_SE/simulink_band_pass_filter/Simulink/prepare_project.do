workspace open ./../simulink_band_pass_filter.aws
design activate biquad_iir
do compile_rtl.do
design activate fft
do compile_all.do
remote_on