#compiling design sources
alog -dbg -sv2k5 $dsn/src/machine.asf $dsn/src/machine_TB.v
#initializing simulation
asim machine_TB
env /machine_TB
#setting assertion and signal breakpoints
ba UUT/req_ack_a -failed
bs UUT/M1 event
#creating waveform window
wave -noreg UUT/M1
wave -noreg RESET
wave -noreg ENA
wave -noreg CLK
wave -noreg DRDY
wave -noreg DATA
wave -noreg REQ
wave -noreg ACK
wave -noreg EXC
wave -noreg IDL
wave -noreg Y
#opening special windows
view assert
view cover
@echo "###################################################"
@echo "### WATCH FOR BREAKPOINTS ON STATE REGISTER !!! ###"
@echo "### DIVIDE DOCUMENT WINDOW VERTICALLY AND KEEP  ###"
@echo "### FSM DIAGRAM AND WAVEFORM IN SEPARATE PANES. ###"
@echo "### OBSERVE ASSERTS/COVERS IN STRUCTURE TAB     ###"
@echo "### (USE 'EXPAND ALL' IN RIGHT-CLICK MENU).     ###"
@echo "###################################################"
run 360.00 ns
