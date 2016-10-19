acom -dbg "$dsn/src/fpga.bde"
acom -dbg "$dsn/src/a8051_exp.bde"
acom -dbg "$dsn/src/fpga_post_synth.vhd"
acom -dbg "$dsn/src/fpga_post_p&r.vhd"
edfcomp "$dsn/src/fpga.edf"
acom -dbg "$dsn/src/8051/registers.vhd"
acom -dbg "$dsn/src/8051/internalprogrammemory.vhd"
acom -dbg "$dsn/src/8051/timers.vhd"
acom -dbg "$dsn/src/8051/console.vhd"
acom -dbg "$dsn/src/8051/al8051.vhd"
acom -dbg "$dsn/src/devices/types.vhd"
acom -dbg "$dsn/src/devices/display.vhd"
acom -dbg "$dsn/src/devices/keyboard.vhd"
acom -dbg "$dsn/src/devices/pr_sr_register.vhd"
acom -dbg "$dsn/src/devices/ram.vhd"
acom -dbg "$dsn/src/devices/latch.vhd"
acom -dbg "$dsn/src/devices/testbench/display_tb.vhd"
acom -dbg "$dsn/src/devices/testbench/keyboard_tb.vhd"
acom -dbg "$dsn/src/devices/testbench/pr_sr_register_tb.vhd"
acom -dbg "$dsn/src/devices/testbench/ram_tb.vhd"
acom -dbg "$dsn/src/devices/testbench/latch_tb.vhd"
acom -dbg "$dsn/src/testbench/a8051_exp_tb.vhd"
acom -dbg "$dsn/src/testbench/a8051_exp_tb_post_synth_cfg.vhd"
acom -dbg "$dsn/src/testbench/a8051_exp_tb_timing_cfg.vhd"