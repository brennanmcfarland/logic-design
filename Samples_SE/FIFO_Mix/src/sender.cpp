//--------------------------------------------------------------------------------------------------
// Regular implementations of processes from the 'sender' module:
//  - prc_readsend()
//  - prc_synch()
//-------------------------------------------------------------------------------------------------

#include "sender.h"
void sender::prc_readsend () {
	char buffer[128]; // line buffer for reading text
	int i;			  // pointer within the line buffer
	
	wait();	          // waiting for CLR activation
	if (CLR) {		  // CLR high after event 
		 f.exceptions ( ifstream::eofbit | ifstream::failbit | ifstream::badbit );
		 try {
			f.open("text.txt"); // open text file
			wait();             // wait for CLR deactivation
			while (!f.eof()) {	       // as long as file end not reached yet
				f.getline(buffer,128); // read one line to the buffer 
				i = 0;
				while (buffer[i]!=0) { // as long as end of buffer not reached yet 
					wait(snd);		   // wait for permission to send one character
					DATA = buffer[i];  // send current character from the buffer
					VALID = true;	   // mark output valid 
					i++;			   // move pointer to the next character
				}
			}
		}
		catch (ifstream::failure e) {
			cout << "Problem with opening or reading of the 'text.txt' file";
		}
		f.close();	        // close text file 
	}
}

void sender::prc_synch () {
	if (CLK && ENABLE) {	       // CLK rising edge and ENABLE high 
		snd.notify(SC_ZERO_TIME);  // tell the other process to send character 
	}
}
