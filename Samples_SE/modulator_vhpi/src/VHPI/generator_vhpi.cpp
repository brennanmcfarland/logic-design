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
// File        : generator_vhpi.cpp
// Generated   : 3:23:32 PM Monday, August 08, 2005
// By          : VHPI Wizard ver. 2.0
//
//----------------------------------------------------------------------------
//
// Description : VHPI function definition
//
//----------------------------------------------------------------------------
*/


#include "generator_vhpi.h"
#include <stdlib.h>
#include <math.h>
#include "utilities.h"
	



// vhpiCbEndOfSimulation callback
PLI_VOID cleanUp(const struct vhpiCbDataS *cb_data_p)
{
	vhpi_printf( "End of Simulation: vhpiCbEndOfSimulation callback executed.\n" );
	generator_user( NULL, 3, (TValObjPtrs*)cb_data_p->user_data );
	// clean allocated objects 
	cleanValObj( (TValObjPtrs*)cb_data_p->user_data );
}							
						


// vhpiCbValueChange callback 														   
PLI_VOID readValues(const struct vhpiCbDataS *cb_data_p)
{
	vhpiErrorInfoT 	errInf;

	if ((cb_data_p->user_data))
	{										   
		// read value of source object
		int i = getId( cb_data_p->obj, (TValObjPtrs*)cb_data_p->user_data );
		if ( i == -1 )
			vhpi_printf( "readValues(): getId() has returned -1. No object found\n" );
		vhpi_get_value( cb_data_p->obj, ((TValObjPtrs*)cb_data_p->user_data)[i].vValue );	 
	}	   
	else if ( vhpi_check_error(&errInf) ) //check error info
		vhpi_printf( "\n%s", errInf.message );	  
	
	// call user code		
	generator_user( cb_data_p->obj, 2, (TValObjPtrs*)cb_data_p->user_data );
}					   


// execution function
PLI_VOID generator_exec(const struct vhpiCbDataS *cb_data_p)
{																				   

	// create table of information structures for all ports of foreign architecture
	vhpiHandleT hPortIt, hPortHdl;
	TValObjPtrs* pPortHdls = new TValObjPtrs;

	int m = 0; // index for ports, also index of table of SValObjPtrs information structures

	// iterate on all ports of foreign architecture	
	if (( hPortIt = vhpi_iterator( vhpiPortDecls, cb_data_p->obj ) ))
	{
		int i = 0; // index for outputs
		int j = 0; // index for inputs
		int k = 0; // index for inouts
		while (( hPortHdl = vhpi_scan( hPortIt ) ))		
		{						   			
			if ( vhpi_get( vhpiModeP, hPortHdl ) == vhpiOutMode )
			{													 
				// add information structure for each port to table
				pPortHdls = addValObj( hPortHdl, pPortHdls, m++ );	
				varUpdate( hPortHdl, pPortHdls );
				i++;
				vhpi_printf( "generator_exec(): Handle created for output port:  %s : %s\n", vhpi_get_str( vhpiFullNameP, hPortHdl ), vhpi_get_str( vhpiNameP, vhpi_handle( vhpiBaseType, hPortHdl ) ) );
			}
			else if( vhpi_get( vhpiModeP, hPortHdl ) == vhpiInMode )
			{
				// add information structure for each port to table
				pPortHdls = addValObj( hPortHdl, pPortHdls, m++ );
				varUpdate( hPortHdl, pPortHdls );
				j++;
				vhpi_printf( "generator_exec(): Handle created for input port:  %s : %s\n", vhpi_get_str( vhpiFullNameP, hPortHdl ), vhpi_get_str( vhpiNameP, vhpi_handle( vhpiBaseType, hPortHdl ) ) );
			}									
			else if( vhpi_get( vhpiModeP, hPortHdl ) == vhpiInoutMode )
			{
				// add information structure for each port to table
				pPortHdls = addValObj( hPortHdl, pPortHdls, m++ );
				varUpdate( hPortHdl, pPortHdls );
				k++;
				vhpi_printf( "generator_exec(): Handle created for inout port:  %s : %s\n", vhpi_get_str( vhpiFullNameP, hPortHdl ), vhpi_get_str( vhpiNameP, vhpi_handle( vhpiBaseType, hPortHdl ) ) ); 
			}					
			else 
			{	 
				vhpi_printf( "generator_exec(): Port %s is not added to global handles structure because its mode is not supported. Modes: in, out, inout are supported\n", vhpi_get_str( vhpiFullNameP, hPortHdl ) );
			}
		}		
		vhpi_printf( "generator_exec(): %d output(s), %d input(s), %d inout(s) found in %s instance.\n", i, j, k, vhpi_get_str( vhpiFullNameP, cb_data_p->obj ) );	
	}  
	else
		vhpi_printf( "generator_exec(): Port iterator is false.\n" );	
	

	// add the last table element - structure with NULL pointers to object, 
	// but with pointer to user variables structure
	TUserVars* pUserVars = new TUserVars;
	pPortHdls = addValObj( pUserVars, pPortHdls, m );
	
	// register vhpiCbValueChange callbacks for all entity ports
	m = -1;
	while ( pPortHdls[++m].hHdl )
		isRegisteredCbValueChange( readValues, pPortHdls[m].hHdl, (vhpiHandleT) pPortHdls );		

	// register vhpiCbEndOfSimulation callback to clean allocated objects
    isRegisteredCbEndOfSimulation( cleanUp, (vhpiHandleT) pPortHdls ); 
	


	// call user function
	generator_user( NULL, 0, (TValObjPtrs*) pPortHdls );	
}

// elaboration function
PLI_VOID generator_elab(const struct vhpiCbDataS *cb_data_p)
{
 	// handle to foreign architecture
	vhpiHandleT hArchIt, hArchHdl, hArchFHdl;
	
	if (( hArchIt = vhpi_iterator( vhpiForeignfs, NULL ) ))
	while (( hArchHdl = vhpi_scan( hArchIt ) ))
	{
		if ( vhpi_get( vhpiForeignKindP, hArchHdl ) == vhpiArchFK )
		{
			hArchFHdl = hArchHdl;
			vhpi_printf( "generator_elab(): Foreign architecture found\n" );
			break;
		}
	}

	// create process
	vhpiHandleT hProcHdl;
	vhpiErrorInfoT errInf;
	
	if ( !(( hProcHdl = vhpi_create( vhpiProcessStmtK, hArchFHdl, NULL ) )) )
		if( vhpi_check_error( &errInf ) )
			vhpi_printf( errInf.message);
		else
			vhpi_printf("generator_elab(): No vhpi_check_error() message...\n"); 
	else 
		vhpi_printf("generator_elab(): Process created\n");

	// create drivers for outputs - this is necessary if user wants to scheldule transactions on signals
	vhpiHandleT hPortIt, hPortHdl;
	vhpiHandleT hDriverHdl;

	// iterate on all ports of foreign architecture
	if (( hPortIt = vhpi_iterator( vhpiPortDecls, cb_data_p->obj ) ))
		while (( hPortHdl = vhpi_scan( hPortIt ) ))		
			if ( vhpi_get( vhpiModeP, hPortHdl ) == vhpiOutMode ) // if output port
				if ( !( hDriverHdl = vhpi_create( vhpiDriverK, hPortHdl, hProcHdl ) ) )
					if ( vhpi_check_error( &errInf ) )
						vhpi_printf( errInf.message );
					else
						vhpi_printf( "generator_elab(): No vhpi_check_error() message...\n" ); 
				else 
					vhpi_printf( "generator_elab(): Driver created for output port:  %s : %s\n", vhpi_get_str( vhpiFullNameP, hPortHdl ), vhpi_get_str( vhpiNameP, vhpi_handle( vhpiBaseType, hPortHdl ) ) );


	// put your code here

}
