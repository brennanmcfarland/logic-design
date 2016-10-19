#
# 
#

 quiet on
 acom "$dsn/src/functional/voicepkg.vhd"
 acom "$dsn/src/functional/voice.vhd"
 acom "$dsn/src/functional/voice_tb.vhd"
#
# 
 asim -advdataflow testbench TESTBENCH_FUNCTIONAL
 wave 
 wave /testbench/CLK
 wave /testbench/RST
 wave /testbench/KEY_ENTERED
 wave /testbench/PLAY
 wave /testbench/SAVE
 wave /testbench/ADDR
 wave /testbench/ERASE
 wave /testbench/REC
 run 780000 ps 
 endsim
 quiet off
#

