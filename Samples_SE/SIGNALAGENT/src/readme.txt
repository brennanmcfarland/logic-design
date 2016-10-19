
The SignalAgent design is simple example  of using Signal Agent capability inside VHDL and Verilog designs 
Inside the TB.vhd file there are declarations which help understand how to connect 
two signal between hierarchies without interface modification.
Please see lines with declarations:
	signal_agent ( "/uut/full1", "full1", 1 );
	signal_agent ( "/uut/u2/full", "full2", 1 );
	signal_agent ( "/uut/full3", "full3", 1 );
	signal_agent ( "gate", "/uut/gate", 1 );

Inside the counter.v file there are declarations which help understand how to connect 
two signal from verilog side.
Please see lines with declarations:
	$signal_agent( "uut.full1", "full1", 1 );
	$signal_agent( "uut.u2.FULL", "full2", 1 );
	$signal_agent( "uut.u3.FULL", "full3", 1 );
