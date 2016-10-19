workspace open ./../simulink_mixed_example.aws
design activate biquad_iir
do compile_rtl.do
do compile_post_synth.do
design activate fft
do compile_all.do
remote_on