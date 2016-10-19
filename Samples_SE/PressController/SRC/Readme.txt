PressController - Pneumatic press machine

A. Description.
	1. Control module.
	1.1. Outputs:
		- STR ("START" - /press_top_tb/UUT/U101), starts machine,
		- STP ("STOP" - /press_top_tb/UUT/U101), stops machine,
		- RST ("RESET" - /press_top_tb/UUT/U101), manual initialization of a machine,
		- DET ("DETECT" - /press_top_tb/UUT/U101), signal from the sensor detecting pressed elements,
		- clr ("clear" - /press_top_tb/UUT/U101), asynchronous machine reset, default state initialized,
		- CLK (/press_top_tb/UUT/U101), machine clock,
		- CLK_T (/press_top_tb/UUT/U101), timer clock,
	1.2. Machine outputs:
		- OUTPUT (/press_top_tb/UUT/U101), power output,
		- Y (/press_top_tb/UUT/U101), auxiliary output,
		- TIMER (/press_top_tb/UUT/U101), protection mode output signal (timer's output),
		- LIMIT (/press_top_tb/UUT/U101)), limit mode output signal,
	1.3. Machine states:
		- S0: standby state after initialization,
		- S1: single cycle standby state,
		- S2: single cycle working state,
		- S3: continuous working state,
		- S4: alarm state (active when "DETECT" signal is not regenerated - probably printed element is still in a form or a sensor is damaged),
		- S5: standby state for limit mode (if the amount of cycles reaches the limit, the machine stops),
		- S6: limit mode working state,
		- S7: signalization state.

B. Destination and description of the press machine.
	Press machine is designed to control a production of the metal elements.
	It has two modes: manual under surveillance (1 cycle) and automatic with user-defined amount of cycles.
	START, STOP, RESET are the control keys. You can also use a combination of available keys.
	The sensor detects all made elements which come out of the machine and generate DET impulse when the process
	passes without any problems. When the DET signal is not present (the sensor is damaged or the pressed element got
	stuck inside the press machine), the controller stops the machine 	and switches it to the state requiring user action.

C. Design files.
	1. Functional description (\$dsn\src):
		1. Press_top.bde - "top level" diagram
		2. Press.bde - block diagram
		3. Counters.vhd - timer
		4. Automachine.asf - state diagram of the machine
	2. Description after the Place&Route process, destination for Altera EP1S20F484C6 Package FBGA484 ($dsn\src\Altera Post-P&R)
		1. Presscontroller.vhd
		2. Presscontroller.sdf
		3. Presscontroller_TB_AL.vhd - TestBench after Place&Route process
		4. Presscontroller_TB_AL_runtest.do - timing simulation macro
	3. Description after the Place&Route process, destination for Xilinx SPARTAN3E 3s100evq100-5  ($dsn\src\Xilinx Post-P&R)
		1. Presscontroller.vhd
		2. Presscontroller.sdf
		3. Press_TB_XI.vhd - TestBench after Place&Route
		4. Press_TB_XI_runtest.do - timing simulation macro
	4. Simulation
		1. Press_top_TB.vhd - TestBench
		2. Press_top_TB_runtest.do - functional simulation macro
D. Notes
	1. Pressing any key activates special circuit triggering single-impulse signal lasting t<1/CLK [s].
	2. The time of the DET signal is variable and its range is 1/CLK<t<2/CLK [s].
	3. For demo purposes some signals were scaled in time:
	    1/CLK=10Hz (in real)	-> 1/CLK=10kHz (in design),
		TIMER=999 999 (in real) -> TIMER=999 (in design)
