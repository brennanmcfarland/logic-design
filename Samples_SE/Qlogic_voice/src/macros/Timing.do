#
# 
#

 quiet on
 acom "$dsn/src/timing/voicepkg.vhd"
 acom "$dsn/src/timing/voice_t.vhq"
 acom "$dsn/src/timing/voice_t_tb.vhd"
#
#
 asim -advdataflow -sdftyp /testbench_t/UUT=$dsn/src/timing/voice.sdf testbench_t TESTBENCH_TIMING
 wave 
 wave /testbench_t/CLK
 wave /testbench_t/RST
 wave /testbench_t/KEY_ENTERED
 wave /testbench_t/PLAY
 wave /testbench_t/SAVE
 wave /testbench_t/ADDR
 wave /testbench_t/ERASE
 wave /testbench_t/REC
 run 780000 ps 
 endsim
 quiet off
#

