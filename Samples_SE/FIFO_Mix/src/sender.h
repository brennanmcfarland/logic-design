//--------------------------------------------------------------------------------------------------
//
// Title       : sender
// Design      : FIFO
// Author      : Jerry Kaczynski 
// Company     : Aldec, Inc.
//
//-------------------------------------------------------------------------------------------------
//
// File        : sender.h
// Generated   : 3:53:56 PM Monday, October 11, 2004
// From        : SystemC Source Wizard
// By          : SystemC Source Wizard ver. 1.0
//
//-------------------------------------------------------------------------------------------------
//
// Description : 'sender' module that reads text from the 'text.txt' file
//               and sends it to the DATA output, chracter by character,
//               on rising edges of the CLK input (if ENABLE is active)
//
//-------------------------------------------------------------------------------------------------

#ifndef __sender_h__
#define __sender_h__

#include <systemc.h>

SC_MODULE( sender )
{
	sc_in< bool > CLK;
	sc_in< bool > ENABLE;
	sc_in< bool > CLR;
	sc_out< char > DATA;
	sc_out< bool > VALID;
	
	ifstream f;
	sc_event snd; 
	
	void prc_readsend();
	void prc_synch();

	SC_CTOR( sender ):
		CLK("CLK"),
		ENABLE("ENABLE"),
		CLR("CLR"),
		DATA("DATA"),
		VALID("VALID")
	{
		SC_THREAD(prc_readsend);
		sensitive << CLR;
		SC_METHOD(prc_synch);
		sensitive << CLK;
	}

};

SC_MODULE_EXPORT( sender )

#endif //__sender_h__

