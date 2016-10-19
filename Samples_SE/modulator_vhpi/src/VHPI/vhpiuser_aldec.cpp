/*
//--------------------------------------------------------------------------------------------------
//
// Title       : vhpiuser_aldec
// Design      : modulator_vhpi
// Author      : Aldec
// Company     : Aldec
//
//----------------------------------------------------------------------------
// VHPI Language Interface - (C) Copyright 2004 by Aldec, Inc.
//
// File        : vhpiuser_aldec.cpp
// Generated   : 3:23:32 PM Monday, August 08, 2005
// By          : VHPI Wizard ver. 2.0
//
//----------------------------------------------------------------------------
//
// Description : VHPI function registration
//
//----------------------------------------------------------------------------
*/


//==================================================================
#include "generator_vhpi.h"
#include <vhpi_user.h>
#include <aldecpli.h>
//==================================================================

#ifdef WIN32
__declspec ( dllexport )
#endif

PLI_VOID startup_1()
{
 unsigned int i;
 static vhpiForeignDataT foreignDataArray[] = {
			{vhpiArchFK,"modulator_vhpi.dll", "generator_model", generator_elab, generator_exec},
			{(vhpiForeignT) 0}
		};
	// tasks registration
		for (i = 0; i < ( sizeof(foreignDataArray) / sizeof(foreignDataArray[0]) ) - 1 ;  i++)
			vhpi_register_foreignf(&(foreignDataArray[i]));
}
#ifdef __cplusplus
extern "C" {
#endif

#ifdef WIN32
__declspec ( dllexport )
#endif

/*//////////////////////////////////////////////////////////////////
		VHPI_tfs
//////////////////////////////////////////////////////////////////*/
// table of functions to register vhpi tasks
PLI_VOID
(*vhpi_startup_routines[])() = { startup_1, 0};


#ifdef __cplusplus
}
#endif
//==================================================================
