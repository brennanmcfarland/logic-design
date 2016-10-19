workspace open ./../simulink_modulation.aws
design activate modulator
do compile.do
design activate demodulator
do compile_all.do
remote_on