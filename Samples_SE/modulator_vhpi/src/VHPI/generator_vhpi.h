/*
//--------------------------------------------------------------------------------------------------
//
// Title       : generator
// Design      : modulator_vhpi
// Author      : Aldec
// Company     : Aldec
//
//----------------------------------------------------------------------------
// VHPI Language Interface - (C) Copyright 2004 by Aldec, Inc.
//
// File        : generator_vhpi.h
// Generated   : 3:23:32 PM Monday, August 08, 2005
// By          : VHPI Wizard ver. 2.0
//
//----------------------------------------------------------------------------
//
// Description : Execf/elabf VHPI functions header
//
//----------------------------------------------------------------------------
*/


#ifndef __generator_vhpi_H__
#define __generator_vhpi_H__

#include <vhpi_user.h>
#include "utilities.h"

#ifdef __cplusplus
extern "C" {
#endif
		 
// main user function 
// reasons: 
// 0 - simulation initialization
// 1 - delay event callback	(handle to clock passed)
// 2 - value change callback (handle to changed signal passed)
void generator_user( vhpiHandleT _hHdl, int _reason, TValObjPtrs* _hPortHdls );	  

		 
PLI_VOID generator_exec(const struct vhpiCbDataS *cb_data_p);
PLI_VOID generator_elab(const struct vhpiCbDataS *cb_data_p);


#ifdef __cplusplus
}
#endif

#endif

