			4-bit loadable synchronous counter
			==================================

DESCRIPTION:
Loadable_counter sample design is a simple project of a synchronous loadable counter.
There is an Advanced Test bench Tutorial available for this design.

PORTS:
Input:
CLK   
RESET 
ENABLE
LOAD  
D[3:0]     
Output:
Q[3:0]

FILES:
counter.vhd - VHDL source code 
counter_tim.vhd - structural post P&R VHDL code
counter_tim.sdf - timing delays file in SDF format
Functional.asdb and Functional.awc - waveform files for functional simulation of the design
Timing.asdb and Timing.awc - waveform files for timing simulation of the design
WAVES - folder containing all WAVES-based test bench necessary files

Functional simulation:
Execute the \\WAVES\counter_TB_runtest.do test bench macro.
Timing simulation:
Execute the \\WAVES\counter_TB_tim_runtest.do test bench macro.
The 'Console' window shows differences on the signals between Functional and Timing simulation.