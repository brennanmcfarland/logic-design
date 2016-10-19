#Compile with '-exc' option preparing for EXPRESSION COVERAGE 
alog -dbg -exc ram.v 
alog -dbg -exc counter.v 
acom -dbg -exc control.asf 
acom -dbg -exc fifo.vhd 
acom -dbg top.bde 
acom -dbg -exc top_TB.vhd

#Initialize simulation with '-cc*' options controlling CODE COVERAGE
# and '-exc' option controlling EXPRESSION COVERAGE data collection
asim  -cc -cc_hierarchy -exc control top_tb
env /

#Request TOGGLE COVERAGE data collection in ACTIVITY mode
toggle -xml -o $dsn/toggle/tgl_report.xml -toggle_type activity -rec *

#Request XTRACE signal monitoring 
xtrace -html -o $dsn/xtrace/xtrace_rep.html -stop_condition * -rec /top_tb/UUT/* 

#Run simulation
run 6450 ns

#Write EXPRESSION COVERAGE data into HTML report
excoverage write -html excovrep.html

#End simulation (=close all coverage sessions)
endsim

#Open HTML reports
opendocument -html "$dsn/xtrace/xtrace_rep.html"
opendocument -html "$dsn/src/excovrep.html"

#Open dedicated viewers 
runexe $aldec/bin/tcviewer.exe $dsn/toggle/tgl_report.xml
runexe $aldec/bin/ccviewer.exe $dsn/coverage/results.ccl
