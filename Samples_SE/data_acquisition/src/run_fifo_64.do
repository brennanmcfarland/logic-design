asim -Gfifo_depth=64 test_environment

wave /test_environment/reset
wave /test_environment/rd_clk
wave /test_environment/wr_clk
wave /test_environment/wr_data
wave /test_environment/full
wave /test_environment/empty

run -all
endsim
