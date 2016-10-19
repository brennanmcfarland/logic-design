cd $dsn/src
asim +access +w -pli "$aldec/BIN/aldec_matlab_cosim.dll" -callbacks DSP_test

wave /DSP_test/CLK
wave /DSP_test/RDY
wave /DSP_test/RESET
wave -notation 2compl -analog -analogmin -32768 -analogmax 32767 -height 64 -color 0,128,0  /DSP_test/DATA
wave /DSP_test/ACK_Bessel
wave /DSP_test/ACK_simple
wave -dec -analog -analogmin 0 -analogmax 65535 -height 64 -color 0,128,128 /DSP_test/UUT/B 
wave -dec -notation 2compl -analog -analogmin -32768 -analogmax 32767 -height 96 -color 255,0,0  /DSP_test/OUT_simple
wave -dec -notation 2compl -analog -analogmin -32768 -analogmax 32767 -height 96 -color 255,0,0  /DSP_test/OUT_Bessel
wave /DSP_test/sample_no

run
