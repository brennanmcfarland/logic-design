setactivelib -work									
#Compiling UUT entity design files
acom $dsn/src/counter_tim.vhd 

#Compiling WAVES Testbench neccessary files
acom $dsn/src/WAVES/counter_TB_pins.vhd
acom $dsn/src/WAVES/waves_objects.vhd
acom $dsn/src/WAVES/counter_TB_declaration.vhd
acom $dsn/src/WAVES/monitor_utilities.vhd
acom $dsn/src/WAVES/waves_generator.vhd
acom $dsn/src/WAVES/counter_TB.vhd

#Compiling timing configuration
acom $dsn/src/WAVES/counter_TB_tim_cfg.vhd

#Run simulation
asim -advdataflow -sdftyp /counter_wb/UUT/=$dsn/src/counter_tim.sdf TIMING_FOR_counter	

wave
wave /counter_wb/STIM_clk
wave /counter_wb/STIM_reset
wave /counter_wb/STIM_enable
wave /counter_wb/STIM_load
wave /counter_wb/STIM_d
wave /counter_wb/ACTUAL_q
wave /counter_wb/EXPECT_q
wave /counter_wb/WPL
wave /counter_wb/ERR_STATUS

run 400 ns

#End simulation macro
