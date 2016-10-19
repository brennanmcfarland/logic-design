#include <windows.h>
#include <stdlib.h>
#include <stdio.h>

#include "veriuser.h"
#include "acc_user.h"
#include "aldecpli.h"




int read_byte_ex_checktf()
{
	//check for two system task/function
	if (3 != tf_nump())
		tf_error("Usage: $read_byte_ex(\"<file\",<reg_variable>,<reg_variable>);");

	//check that first arg is a string
	if (TF_STRING != tf_typep(1))
		tf_error("$read_byte_ex arg 1 must be a quoted file name");

	//check that 2nd arg is reg type
	if (TF_READWRITE != tf_typep(2))
		tf_error("$read_byte_ex arg 2 must be a register data type");

	if (8 != tf_sizep(2))
		tf_warning("$read_byte_ex arg 2 size is not equal to 8 bits");

	//check that 3rd arg is reg type
	if (TF_READWRITE != tf_typep(3))
		tf_error("$read_byte_ex arg 3 must be a register data type");

	if (1 != tf_sizep(3))
		tf_warning("$read_byte_ex arg 3 size is not equal to 8 bits");

	return 0;
}


int read_byte_ex_calltf()
{
	FILE*	in_file;
	int		vec_size = tf_sizep(2);
	int		chr;
	char	val[10];

	in_file = (FILE*)tf_getworkarea();

	if (NULL != in_file)
	{
		if (EOF == (chr = fgetc(in_file)))
		{
			tf_warning("$read_byte_ex reached EOF");
			io_printf("Closing %s file...", tf_getcstringp(1));
			fclose(in_file);
			tf_setworkarea((char*)NULL);
			tf_strdelputp(3, 1, 'd', "1", 0, 0);
			return 0;
		}

		sprintf(val, "%d", chr);
		if (!tf_strdelputp(2, vec_size, 'd', val, 0, 0))
		{
			tf_error("$read_byte_ex could not write to arg 2");
		}
		tf_strdelputp(3, 1, 'd', "0", 0, 0);
	}

	return 0;
}


int read_byte_ex_misctf(int user_data, int reason)
{
	FILE*	in_file;

	switch (reason)
	{
	case REASON_ENDOFCOMPILE:
		//open vector file
		io_printf("Opening %s file...", tf_getcstringp(1));
		if (NULL == (in_file = fopen(tf_getcstringp(1), "rb")))
			tf_error("$read_byte_ex cannot open file %s", tf_getcstringp(1));
		tf_setworkarea((char*)in_file);
		break;

	case REASON_FINISH:
		in_file = (FILE*)tf_getworkarea();
		if (NULL != in_file)
		{
			io_printf("Closing %s file...", tf_getcstringp(1));
			fclose(in_file);
			tf_setworkarea((char*)NULL);
			tf_strdelputp(3, 1, 'd', "1", 0, 0);
		}
		break;
	}

	return 0;
}


s_tfcell veriusertfs[] = {
	{usertask, 
	 0, 
	 read_byte_ex_checktf,		
	 0, 
	 read_byte_ex_calltf,		
	 read_byte_ex_misctf,		
	 "$read_byte_ex"},
	{0}
};
