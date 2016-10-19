#
# rebuild the whole project
#

acom "$dsn\src\SineGenerator.vhd"
acom "$dsn\src\CosineGenerator.vhd"
acom "$dsn\src\SawGenerator.vhd"
acom "$dsn\src\Multiplier.vhd"
acom "$dsn\src\Modulator.bde"
#
# set top-level and initialize the simulator  
#
asim +access +r -advdataflow Modulator
#
# invoke Waveform Viewer window, add signals to Waveform
#
wave
wave -rec /Modulator/* 
#
# stimulators 
# 
force /Modulator/CLK 0 0, 1 500 ps -r 1000 ps	   
force /Modulator/sinfreq 65
force /Modulator/cosfreq 16
force /Modulator/sawfreq 89
force /Modulator/sinenable 1
force /Modulator/cosenable 0
force /Modulator/sawenable 1
#
# running simulation with signal value veryfication.
#

run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
run 10 ns
@echo output=[ex output]
endsim

