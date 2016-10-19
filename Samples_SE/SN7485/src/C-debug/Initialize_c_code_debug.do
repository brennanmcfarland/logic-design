#compile all hdl files
vcom "$dsn/src/Gates.vhd" 
vcom "$dsn/src/Fub5.bde" 
vcom "$dsn/src/Fub4.bde" 
vcom "$dsn/src/Fub3.bde" 
vcom "$dsn/src/Fub2.bde" 
vcom "$dsn/src/Fub1.bde" 
vcom "$dsn/src/Fub0.bde" 
vcom "$dsn/src/SN7485_TOP.bde" 
vcom "$dsn/src/SN7485_TOP_TB.vhd" 
#build dlm file
buildc "$dsn/src/external/Foreign1.dlm"
#set top level 
configuration testbench_for_sn7485_top
#initialize c-code debug session
cdebug -abp