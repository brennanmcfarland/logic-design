buildc $dsn/src/VHPI/modulator_vhpi.dlm
acom $dsn/src/VHPI/generator_vhpi.vhd
acom "$dsn/src/Multiplier.vhd"
acom "$dsn/src/Modulator.bde"
acom "$dsn/src/TestBench/modulator_TB.vhd" 
asim -callbacks modulator_tb

wave -analog -analogmin -1 -analogmax 1 -height 100 -color 255,0,255 /modulator_tb/UUT/OUTPUT
wave -analog -analogmin -1 -analogmax 1 -height 30 -color 0,0,255 /modulator_tb/UUT/SIN1
wave -analog -analogmin -1 -analogmax 1 -height 30 -color 049,100,255 /modulator_tb/UUT/COS1
wave -analog -analogmin -1 -analogmax 1 -height 30 -color 0,200,255 /modulator_tb/UUT/SAW1
wave -color 0,0,255 /modulator_tb/UUT/SINFREQ
wave -color 049,100,255 /modulator_tb/UUT/COSFREQ
wave -color 0,200,255 /modulator_tb/UUT/SAWFREQ	  
wave -color 0,0,255 /modulator_tb/UUT/SINENABLE
wave -color 049,100,255 /modulator_tb/UUT/COSENABLE
wave -color 0,200,255 /modulator_tb/UUT/SAWENABLE
wave -color 128,064,128 /modulator_tb/UUT/CLK	

run -all
endsim
