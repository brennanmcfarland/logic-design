/*
//--------------------------------------------------------------------------------------------------
//
// Title       : utilities
// Design      : modulator_vhpi
// Author      : Aldec
// Company     : Aldec
//
//----------------------------------------------------------------------------
// VHPI Language Interface - (C) Copyright 2004 by Aldec, Inc.
//
// File        : utilities.cpp
// Generated   : 3:23:32 PM Monday, August 08, 2005
// By          : VHPI Wizard ver. 2.0
//
//----------------------------------------------------------------------------
//
// Description : Utility functions definitions
//
//----------------------------------------------------------------------------
*/


#include "utilities.h"
#include <stdio.h>
#include <math.h>
#include <memory.h>
#include <stdlib.h>	
#include <string>

// this function adds new object to structure
TValObjPtrs* addValObj( vhpiHandleT _hNewHandle, TValObjPtrs* _pActualPointer, int _nActualSize )
{								

	TValObjPtrs hNewHandle;
	hNewHandle.hHdl = _hNewHandle;
	hNewHandle.vValue = getFieldValue( _hNewHandle );
	hNewHandle.nIndex = _nActualSize;
	hNewHandle.nType = 0;
	for ( int i = 0; i < 10; i++ )
	{
		hNewHandle.enumOnes[i] = -1;
		hNewHandle.enumZeros[i] = -1;
	}	
	hNewHandle.enumMin = 2147483647;
	hNewHandle.enumMax = 0;
	hNewHandle.szName = strdup( (char*)vhpi_get_str( vhpiNameP, _hNewHandle ) );
	hNewHandle.pBoolVar = new bool;
	hNewHandle.pIntVar = new int;
	hNewHandle.pRealVar = new double;	
	hNewHandle.pUserVars = NULL;	
	if ( _hNewHandle )
	{
		if ( ( hNewHandle.vValue->format >= vhpiEnumVecVal ) && ( hNewHandle.vValue->format <= vhpiRealVecVal ) )
		{																 
		// if array type ports, when numElems is defined
			hNewHandle.pBoolVecVar = new bool [hNewHandle.vValue->numElems];
			hNewHandle.pIntVecVar = new int [hNewHandle.vValue->numElems];
			hNewHandle.pRealVecVar = new double [hNewHandle.vValue->numElems];
		}
		else
		{
			hNewHandle.pBoolVecVar = new bool;
			hNewHandle.pIntVecVar = new int;
			hNewHandle.pRealVecVar = new double;
		}

		// detect binary logic enum types to enable numerical conversions
		if ( ( hNewHandle.vValue->format == vhpiEnumVal ) || ( hNewHandle.vValue->format == vhpiEnumVecVal ) )
		{			
			vhpiHandleT hLiteralIt = NULL;
			vhpiHandleT hLiteralHdl = NULL;
			vhpiHandleT hTypeHdl = NULL;
			int nTypeIndex = 0;
			int nOnesIndex = 0; 
			int nZerosIndex = 0;
													   
			// get handle to object type													   
			hTypeHdl = vhpi_handle( vhpiBaseType, _hNewHandle );
			// iterate on all literals of scalar type
			if (( hLiteralIt = vhpi_iterator( vhpiEnumLiterals, hTypeHdl ) ));
			// iterate on all literals of array's element type
			else (( hLiteralIt = vhpi_iterator( vhpiEnumLiterals, vhpi_handle( vhpiElemSubtype, hTypeHdl ) ) ));
			if ( hLiteralIt ) 
				while (( hLiteralHdl = vhpi_scan( hLiteralIt ) ))
				{								   
					// get literal string value	   
					char* szStrVal;
					szStrVal = strdup( (char*)vhpi_get_str( vhpiStrValP, hLiteralHdl ) );
					// get its position (index) in enum type
					nTypeIndex = vhpi_get( vhpiPositionP, hLiteralHdl );
					// set the limits of indexes in enum type
					if ( nTypeIndex > hNewHandle.enumMax )
						hNewHandle.enumMax = nTypeIndex;
					if ( nTypeIndex < hNewHandle.enumMin )
						hNewHandle.enumMin = nTypeIndex;
					// check if literal string value belongs to binary logic values set
					if ( ( strcmp( szStrVal, "1" ) == 0 ) || ( strcmp( szStrVal, "H" ) == 0 ) )
						// store indexes of literals treated as one in numeric calculations
						hNewHandle.enumOnes[nOnesIndex++] = nTypeIndex;
					else if ( ( strcmp( szStrVal, "0" ) == 0 ) || ( strcmp( szStrVal, "L" ) == 0 ) )
						// store indexes of literals treated as zero in numeric calculations
						hNewHandle.enumZeros[nZerosIndex++] = nTypeIndex;
					free( szStrVal );
				}			  
			else 
				vhpi_printf( "addVAlObj(): No enum literals found.\n" );		
			// if type contains one and zero literals	
			if ( ( nZerosIndex != 0 ) && ( nOnesIndex != 0 ) )
				hNewHandle.nType = 1;																			   
			
			// release handles	 			
			vhpi_release_handle( hTypeHdl );
			vhpi_release_handle( hLiteralHdl );
		}
	}				  
	
	// reallocate array appended with new structure
	TValObjPtrs* hTempHandle;
	int index;	 
	// allocate memory for copy of actual handles array
	hTempHandle = new TValObjPtrs [_nActualSize+1];
	// copy array contents
	for ( index = 0; index < _nActualSize; index++ ) 
	{
		hTempHandle[index] = _pActualPointer[index];
	}
	// append array with new object handle
	hTempHandle[index++] = hNewHandle;
	// remove actual array from memory
	delete [] _pActualPointer ;
	// allocate memory for new actual array
	_pActualPointer = new TValObjPtrs [_nActualSize+1];
	// copy array contents from temp array
	for ( index = 0; index < _nActualSize + 1; index++ )
	{
		_pActualPointer[index] = hTempHandle[index];
	}								  	  
	// remove temp array															  
	delete [] hTempHandle;
	return _pActualPointer;
}

TValObjPtrs* addValObj( TUserVars* _pUserVars, TValObjPtrs* _pActualPointer, int _nActualSize )
{								

	TValObjPtrs hNewHandle;
	hNewHandle.hHdl = NULL;
	hNewHandle.vValue = NULL;
	hNewHandle.nIndex = _nActualSize;
	hNewHandle.nType = 0;
	hNewHandle.szName = "UserVars";
	hNewHandle.pBoolVar = NULL;
	hNewHandle.pIntVar = NULL;
	hNewHandle.pRealVar = NULL;	
	hNewHandle.pBoolVecVar = NULL;	
	hNewHandle.pIntVecVar = NULL;	
	hNewHandle.pRealVecVar = NULL;	
	hNewHandle.pUserVars = _pUserVars;	
	
	// reallocate array appended with new structure
	TValObjPtrs* hTempHandle;
	int index;	 
	// allocate memory for copy of actual handles array
	hTempHandle = new TValObjPtrs [_nActualSize+1];
	// copy array contents
	for ( index = 0; index < _nActualSize; index++ ) 
	{
		hTempHandle[index] = _pActualPointer[index];
	}
	// append array with new object handle
	hTempHandle[index++] = hNewHandle;
	// remove actual array from memory
	delete [] _pActualPointer;
	// allocate memory for new actual array
	_pActualPointer = new TValObjPtrs [_nActualSize+1];
	// copy array contents from temp array
	for ( index = 0; index < _nActualSize + 1; index++ )
	{
		_pActualPointer[index] = hTempHandle[index];
	}								  	  
	
	// remove temp array															  
	delete [] hTempHandle;
	return _pActualPointer;
}

void cleanValObj( TValObjPtrs* _pValObjs )
{	
	int j = -1;									
	// iterate on all structures in table, untill the last element with NULL object handle is reached
	while ( _pValObjs[++j].hHdl != NULL )
	{	
		// release memory allocated for handle
		vhpi_release_handle( _pValObjs[j].hHdl );
		free( _pValObjs[j].szName );
		// release memory allocated for vector objects in value structure
		switch ( _pValObjs[j].vValue->format )
		{									  		
		case vhpiEnumVecVal:
			delete [] (_pValObjs[j].vValue->value.enumvs);
			break;
		case vhpiIntVecVal:
			delete [] (_pValObjs[j].vValue->value.intgs);
			break;
		case vhpiRealVecVal:
			delete [] (_pValObjs[j].vValue->value.reals);
			break;
		}	
		// release memory allocated for value structure
		delete (_pValObjs[j].vValue);				   
		// delete pointers
		delete ( _pValObjs[j].pBoolVar );
		delete ( _pValObjs[j].pIntVar );
		delete ( _pValObjs[j].pRealVar );
		delete [] ( _pValObjs[j].pBoolVecVar );
		delete [] ( _pValObjs[j].pIntVecVar );
		delete [] ( _pValObjs[j].pRealVecVar );	  
	}					
	// delete whole array
	delete [] _pValObjs;
}

// this function adjusts clock delays and checks if they are valid
void adjustClock( signed int _nUnit, unsigned int _nPeriod, double _rDuty, vhpiTimeT* _tHighDelay, vhpiTimeT* _tLowDelay )
{
	vhpiPhysT tTimeUnit;								  
	// get simulation time unit
	tTimeUnit = vhpi_get_phys( vhpiSimTimeUnitP, NULL );
	// check if integer value corresponding to unit is correct
	if ( ( _nUnit != -15 ) && ( _nUnit != -12 ) && ( _nUnit != -9 ) && ( _nUnit != -6 ) && ( _nUnit != -3 ) && ( _nUnit != 0 ) )
	{										   
		// if not, set to ns and report problem
		vhpi_printf( "adjustClock(): Selected clock unit is illegal. Setting unit to ns.\n" );
		_nUnit = -9;
	}
									 
	// check if real value corresponding to duty cycle is correct
	if ( ( _rDuty < 0.01 ) || ( _rDuty > 0.99 ) )
	{															 
		// if not, set to 0.50 and report problem
		vhpi_printf( "Selected clock duty cycle is out of legal range. Setting duty cycle to 50%.\n" );
		_rDuty = 0.50;
	}
	
	// express clock period in simulation units
	double rPeriod = _nPeriod * pow( 10, abs( tTimeUnit.low ) + _nUnit ); // clock period in simulation units
	unsigned int nLowTime = (unsigned int)( rPeriod * ( 1 - _rDuty ) ); // clock low state duration in simulation units
	unsigned int nHighTime = (unsigned int)( rPeriod * _rDuty ); // clock high state duration in simulation units
										 
	// check if period to simulation unit ratio is greater or equal than 100
	if ( rPeriod < 100 )
	{
		vhpi_assert( (vhpiSeverityT)vhpiFailure, "Selected clock period requires greater simulation resolution.");
		vhpi_sim_control( vhpiFinish );
	}																  
	
	_tHighDelay->low = nHighTime;
	_tLowDelay->low = nLowTime;
}

// this function converts C integer to VHDL std_logic_vector 
PLI_VOID int2stdlv( signed _nVal, vhpiValueT* _vValueP ) 
{			
	for ( int i = _vValueP->numElems; i > 0; i-- )
	{
		_vValueP->value.enumvs[i-1] = ( _nVal%2 == 1 ) ? vhpi1 : vhpi0 ;
		( _nVal > 0 ) ? _nVal >>= 1 : ( _nVal-- ) >> 1;
	}
}

// this function converts C integer to VHDL bit_vector 
PLI_VOID int2bitv( signed _nVal, vhpiValueT* _vValueP ) 
{			
	for ( int i = _vValueP->numElems; i > 0; i-- )
	{
		_vValueP->value.enumvs[i-1] = ( _nVal%2 == 1 ) ? vhpibit1 : vhpibit0;
		( _nVal > 0 ) ? _nVal >>= 1 : ( _nVal-- ) >> 1;
	}
}

// this function converts C integer to VHDL logic enum vector
PLI_VOID int2logicv( TValObjPtrs _sStruct ) 
{			
	signed nVal = *(_sStruct.pIntVar);
	for ( int i = _sStruct.vValue->numElems; i > 0; i-- )
	{
		_sStruct.vValue->value.enumvs[i-1] = ( nVal%2 == 1 ) ? _sStruct.enumOnes[0] : _sStruct.enumZeros[0];
		( nVal > 0 ) ? nVal >>= 1 : ( nVal-- ) >> 1;
	}
}															

// this function converts VHDL logic enum vector to C integer
PLI_VOID logicv2int( TValObjPtrs _sStruct ) 
{			
	signed nVal = 0;
	vhpiValueT* _vValueP = _sStruct.vValue;
	int nSize = _vValueP->numElems;

	// iterate on all vector elements
	for ( int i = 0; i < nSize; i++ ) 
	{							  
		nVal <<= 1;
		int j = 0;				   
		// scan enumOnes[] and enumZeros[] tables to determine logic value of enum object
		while ( j < 10 )
		{
			if ( (signed int)_vValueP->value.enumvs[i] == _sStruct.enumOnes[j] )
			{
				// if enum value found in enumZeros[] table
				nVal++;
				break;
			}
			if ( (signed int)_vValueP->value.enumvs[i] == _sStruct.enumZeros[j] )
				// if enum value found in enumOnes[] table
				break;
			j++;	
		}			  
		if ( j == 10 )
			vhpi_printf( "logicv2int(): Logic metavalue detected, treated as zero in all conversions to integer type\n" );
	}															
	// update pointer to integer in structure
	*(_sStruct.pIntVar) = nVal;
}

bool logic2bool( TValObjPtrs _sStruct, vhpiEnumT _enumv) 
{				   
	int j = 0;	
	bool bVar;
	// scan enumZeros[] and enumOnes[] tables to determine logic value of enum object
	while ( j < 10 )
	{
		if ( (signed int)_enumv == _sStruct.enumZeros[j] )
		{
			// if enum value found in enumZeros[] table
			bVar = false;
			break;
		}
		else if ( (signed int)_enumv == _sStruct.enumOnes[j] )
		{
			// if enum value found in enumOnes[] table
			bVar = true;
			break;
		}			
		j++;
	}
	if ( j == 10 )
	{										 
		// if enum value is neither one nor zero
		bVar = false;
		vhpi_printf( "varUpdate(): Logic metavalue detected, treated as zero in all conversions to bool type.\n" );
	}								   
	return bVar;
}

// this function converts VHDL std_logic_vector to C integer
vhpiIntT stdlv2int( vhpiValueT* _vValueP ) 
{			
	signed nVal = 0;
	int nSize;				
	
 	nSize = _vValueP->numElems;
	for ( int i = 0; i < nSize; i++ ) 
	{							  
		nVal <<= 1;
		if ( ( _vValueP->value.enumvs[i] == vhpi1 ) || ( _vValueP->value.enumvs[i] == vhpiH ) )
			nVal++;
		else if ( ( _vValueP->value.enumvs[i] == vhpiU ) || ( _vValueP->value.enumvs[i] == vhpiX ) || ( _vValueP->value.enumvs[i] == vhpiW ) || ( _vValueP->value.enumvs[i] == vhpiZ ) || ( _vValueP->value.enumvs[i] == vhpiDontCare ) )
			vhpi_printf( "stdlv2int(): STD_LOGIC metavalue (UXWZ-) detected, treated as zero in all conversions to integer type\n" );
	}
	return nVal;
}
 
// this function converts VHDL std_logic_vector to C integer
vhpiIntT bv2int( vhpiValueT* _vValueP ) 
{			
	signed nVal = 0;
	int nSize;				
	
 	nSize = _vValueP->numElems;
	for ( int i = 0; i < nSize; i++ ) 
	{							  
		nVal <<= 1;
		if ( ( _vValueP->value.enumvs[i] == vhpibit1 ) )
			nVal++;
	}
	return nVal;
}


// this function updates object's value of index in in information table
bool objUpdateMain( int i , TValObjPtrs* _pValObjs, void* _pVar, int _bVarType)
{
	if ( ( (_pValObjs[i].vValue)->format == vhpiEnumVal ) && ( ( _bVarType == typeIntVar ) || ( ( _pValObjs[i].nType == 0 ) && ( _bVarType == typeDefaultVar ) ) ) )
	{			  
	// if scalar enum object and int variable (default for scalar objects of non-logic enum type)
		if (( _pVar )) 
			// if user variable specified, copies it to port structure
			*(_pValObjs[i].pIntVar) = *(int*)_pVar;			
		// updates value structure with variable value
		(_pValObjs[i].vValue)->value.enumv = *(_pValObjs[i].pIntVar);	
		if ( ( *(_pValObjs[i].pIntVar) > _pValObjs[i].enumMax ) || ( *(_pValObjs[i].pIntVar) < _pValObjs[i].enumMin ) )
			vhpi_printf( "objUpdate(): Variable value %d exceeds %s type's range.\n", *(_pValObjs[i].pIntVar), _pValObjs[i].szName );
	}
	else if ( ( (_pValObjs[i].vValue)->format == vhpiEnumVal ) && ( ( _bVarType == typeBoolVar ) || ( ( _pValObjs[i].nType == 1 ) && ( _bVarType == typeDefaultVar ) ) ) )
	{
	// if scalar enum object and bool variable (default for scalar objects of logic enum type)
		if (( _pVar )) // if user variable specified, copies it to port structure
			*(_pValObjs[i].pBoolVar) = *(bool*)_pVar;
		// updates value structure with variable value
		if ( _pValObjs[i].nType == 0 ) 
			// if non-logic enum type
			(_pValObjs[i].vValue)->value.enumv = *(_pValObjs[i].pBoolVar) ? 1 : 0;
		if ( _pValObjs[i].nType == 1 )
			// if logic enum type
			(_pValObjs[i].vValue)->value.enumv = *(_pValObjs[i].pBoolVar) ? _pValObjs[i].enumOnes[0] : _pValObjs[i].enumZeros[0];
	}
	else if ( ( (_pValObjs[i].vValue)->format == vhpiEnumVecVal ) && ( ( _bVarType == typeIntVecVar ) || ( ( _pValObjs[i].nType == 0 ) && ( _bVarType == typeDefaultVar ) ) ) )
	{
	// if vector of enum object and int[n] variable (default for vector objects of non-logic enum type)
		if (( _pVar )) 
			// if user variable specified, copies it to port structure
			memcpy( _pValObjs[i].pIntVecVar, _pVar, _pValObjs[i].vValue->bufSize );
		// updates value structure with variable value
		for ( int j = 0; j < _pValObjs[i].vValue->numElems; j++ )
		{																	
			// check if integer value fits the object type range
			if ( ( _pValObjs[i].pIntVecVar[j] <= _pValObjs[i].enumMax ) && ( _pValObjs[i].pIntVecVar[j] >= _pValObjs[i].enumMin ) )
				(_pValObjs[i].vValue)->value.enumvs[j] = _pValObjs[i].pIntVecVar[j];
			else																	
			{													
				// if integer value exceeds the object type range
				vhpi_printf( "objUpdate(): Variable value %d exceeds %s type range. Object value set to the leftmost value in type\n", _pValObjs[i].pIntVecVar[j], _pValObjs[i].szName );
				(_pValObjs[i].vValue)->value.enumvs[j] = _pValObjs[i].enumMin;
			}
		}
	}
	else if ( ( (_pValObjs[i].vValue)->format == vhpiEnumVecVal ) &&  ( _bVarType == typeBoolVecVar ) )
	{
	// if vector of enum object and bool[n] variable 
		if (( _pVar )) 
		// if user variable specified, copies it to port structure
			memcpy( _pValObjs[i].pBoolVecVar, _pVar, _pValObjs[i].vValue->bufSize );
		// updates value structure with variable value
		if ( _pValObjs[i].nType == 0 )		
		// if non-logic type
			for ( int j = 0; j < _pValObjs[i].vValue->numElems; j++ )
				(_pValObjs[i].vValue)->value.enumvs[j] = _pValObjs[i].pBoolVecVar[j] ? _pValObjs[i].enumMin + 1 : _pValObjs[i].enumMin;
		if ( _pValObjs[i].nType == 1 )		
		// if logic type
			for ( int j = 0; j < _pValObjs[i].vValue->numElems; j++ )
				(_pValObjs[i].vValue)->value.enumvs[j] = _pValObjs[i].pBoolVecVar[j] ? _pValObjs[i].enumOnes[0] : _pValObjs[i].enumZeros[0];
	}
	else if ( ( (_pValObjs[i].vValue)->format == vhpiEnumVecVal ) &&  ( _pValObjs[i].nType == 1 ) && ( ( _bVarType == typeIntVar ) || ( _bVarType == typeDefaultVar ) ) )
	{
	// if vector of enum object and int variable (default for vector objects of logic enum type)
		if (( _pVar )) 
		// if user variable specified, copies it to port structure
			memcpy( _pValObjs[i].pIntVar, _pVar, _pValObjs[i].vValue->bufSize );
		// updates value structure with variable value
		int2logicv( _pValObjs[i] );	
	}
	else if ( ( (_pValObjs[i].vValue)->format == vhpiIntVal ) && ( ( _bVarType == typeIntVar ) || ( _bVarType == typeDefaultVar ) ) ) 
	{
	// if integer port and int variable (default for integer ports)
		if (( _pVar )) 
		// if user variable specified, copies it to port structure
			*(_pValObjs[i].pIntVar) = *(int*)_pVar;
		// updates value structure with variable value
		(_pValObjs[i].vValue)->value.intg = *(_pValObjs[i].pIntVar);
	}										
	else if ( ( (_pValObjs[i].vValue)->format == vhpiIntVecVal ) && ( ( _bVarType == typeIntVecVar ) || ( _bVarType == typeDefaultVar ) ) ) 
	{
	// if array of integer port and int[n] variable (default for array of integer port)
		if (( _pVar )) 
		// if user variable specified, copies it to port structure
			memcpy( _pValObjs[i].pIntVecVar, _pVar, _pValObjs[i].vValue->bufSize );
		// updates value structure with variable value
		for ( int j = 0; j < _pValObjs[i].vValue->numElems; j++ )
			(_pValObjs[i].vValue)->value.intgs[j] = _pValObjs[i].pIntVecVar[j];
	}										
	else if ( ( (_pValObjs[i].vValue)->format == vhpiRealVal ) && ( ( _bVarType == typeRealVar ) || ( _bVarType == typeDefaultVar ) ) ) 
	{
	// if real port and double variable (default for real port)
		if (( _pVar )) 
		// if user variable specified, copies it to port structure
			*(_pValObjs[i].pRealVar) = *(double*)_pVar;
		// updates value structure with variable value
		(_pValObjs[i].vValue)->value.real = *(_pValObjs[i].pRealVar);
	}
	else if ( ( (_pValObjs[i].vValue)->format == vhpiRealVecVal ) && ( ( _bVarType == typeRealVecVar ) || ( _bVarType == typeDefaultVar ) ) ) 
	{
	// if array of real port and double[n] variable (default for array of real port)
		if (( _pVar )) 
		// if user variable specified, copies it to port structure
			memcpy( _pValObjs[i].pRealVecVar, _pVar, _pValObjs[i].vValue->bufSize );
		// updates value structure with variable value
		for ( int j = 0; j < _pValObjs[i].vValue->numElems; j++ )
			(_pValObjs[i].vValue)->value.reals[j] = _pValObjs[i].pRealVecVar[j];
	}
	else
	{
		vhpi_printf( "objUpdate(): Object %s type is not supported\n", _pValObjs[i].szName  );
		return false;	
	}						
	
	vhpiErrorInfoT errInf;	
	if ( ( vhpi_put_value( _pValObjs[i].hHdl, _pValObjs[i].vValue, vhpiDepositPropagate ) ) == 0 )
	{
		// vhpi_printf("Signal value update succeeded\n");
		return true;
	}	
	else
	{
		vhpi_printf( "objUpdate(): Object %s value update failed\n", _pValObjs[i].szName );
		// check error info from vhpi_put_value()
		if ( vhpi_check_error( &errInf ) )
			vhpi_printf( "objUpdate(): vhpi_check_error() message: \n", errInf.message );
		else
			vhpi_printf( "objUpdate(): No vhpi_check_error() message...\n" ); 
		return false;	
	}
}

// this function updates object's value
bool objUpdate( vhpiHandleT _hPortHdl, TValObjPtrs* _pValObjs, void* _pVar, int _bVarType )
{
	int i = getId( _hPortHdl, _pValObjs );
	if ( i == -1 )
	{
		vhpi_printf( "objUpdate(): getId() has returned -1. No object found\n" );
		return false;
	}
	return objUpdateMain( i , _pValObjs, _pVar, _bVarType );
}

// this function updates object's value
bool objUpdate( char* _szPortName, TValObjPtrs* _pValObjs, void* _pVar, int _bVarType )
{
	int i = getId( _szPortName, _pValObjs );
	if ( i == -1 )
	{
		vhpi_printf( "objUpdate(): getId() has returned -1. No object found\n" );
		return false;
	}
	return objUpdateMain( i , _pValObjs, _pVar, _bVarType );		
}

// this function updates user's variable value											 
bool varUpdateMain( int i, TValObjPtrs* _pValObjs, void* _pVar, int _bVarType )
{
	if ( vhpi_get_value( _pValObjs[i].hHdl, _pValObjs[i].vValue ) == 0 )
		// check port type 
		switch ( _pValObjs[i].vValue->format ) 
		{
		case vhpiEnumVal: // scalar enum object
			// copies port value to boolean variable in port map
			if ( _pValObjs[i].nType == 1 )												 
			{
			// if logic object (i.e. representing numerical value in binary logic) 
				*(_pValObjs[i].pBoolVar) = logic2bool( _pValObjs[i], _pValObjs[i].vValue->value.enumv );
			}	
			else if ( _pValObjs[i].nType == 0 )
			// if non-logic object 
				if ( ( (_pValObjs[i].vValue)->value.enumv != 0 ) )
					*(_pValObjs[i].pBoolVar) = true;
				else 
					*(_pValObjs[i].pBoolVar) = false;
			else
			{
				vhpi_printf( "varUpdate(): Object type is not supported\n" );			
				return false;
			}
			// copies port value to integer variable in port structure
			*(_pValObjs[i].pIntVar) = (_pValObjs[i].vValue)->value.enumv ;
			if ( _pVar ) 
			// if user variable specified, copies value from port structure
				if ( ( _bVarType == typeBoolVar ) || ( ( _bVarType == typeDefaultVar ) && ( _pValObjs[i].nType == 1 ) ) ) // boolean variable
					*(bool*)_pVar = *(_pValObjs[i].pBoolVar);
				else if ( ( _bVarType == typeIntVar ) || ( ( _bVarType == typeDefaultVar ) && ( _pValObjs[i].nType == 0 ) ) )  // integer variable
					*(int*)_pVar = *(_pValObjs[i].pIntVar);
				else 
					vhpi_printf( "varUpdate(): Variable type not supported\n" );
			return true;
			break;
		case vhpiEnumVecVal: // vector port 	 
			// copies port value to integer variable in port map	
			if ( _pValObjs[i].nType == 1 )
				logicv2int( _pValObjs[i] );
			// copies port value to integer[n] variable in port map
			for ( int j = 0; j < (_pValObjs[i].vValue)->numElems; j++ )
			   	_pValObjs[i].pIntVecVar[j] = (_pValObjs[i].vValue)->value.enumvs[j];
			// copies port value to boolean[n] variable in port map
			for ( int j = 0; j < (_pValObjs[i].vValue)->numElems; j++ ) 
			{
				if ( _pValObjs[i].nType == 1 )
				// if logic object (i.e. representing numerical value in binary logic)		
					_pValObjs[i].pBoolVecVar[j] = logic2bool( _pValObjs[i], (_pValObjs[i].vValue)->value.enumvs[j] );
				if ( _pValObjs[i].nType == 0 )
				// if non-logic object
				   	_pValObjs[i].pBoolVecVar[j] = ( (_pValObjs[i].vValue)->value.enumvs[j] == 0 ) ? false : true ;
			}
			if ( _pVar )
			// if user variable specified, copies value from port structure
				if ( ( _pValObjs[i].nType == 1 ) && ( ( _bVarType == typeIntVar ) || ( _bVarType == typeDefaultVar ) ) ) // integer variable
					*(int*)_pVar = *(_pValObjs[i].pIntVar);
				else if ( _bVarType == typeBoolVecVar )  // boolean[n] variable
					memcpy( _pVar, _pValObjs[i].pBoolVecVar, _pValObjs[i].vValue->bufSize );
				else if ( ( _bVarType == typeIntVecVar ) || ( ( _bVarType == typeDefaultVar ) && ( _pValObjs[i].nType == 0 ) ) ) // integer[n] variable
					memcpy( _pVar, _pValObjs[i].pIntVecVar, _pValObjs[i].vValue->bufSize );
				else
					vhpi_printf( "varUpdate(): Variable type not supported\n" );
			return true;
			break;
		case vhpiRealVal: // real port
			// copies port value to real variable in port map	
			*(_pValObjs[i].pRealVar) = (_pValObjs[i].vValue)->value.real;
			if ( _pVar ) 
			// if user variable specified, copies value from port structure
				*(double*)_pVar = *(_pValObjs[i].pRealVar);
			return true;
			break;
		case vhpiRealVecVal: // real port
			// copies port value to real[n] variable in port map	
			for ( int j = 0; j < (_pValObjs[i].vValue)->numElems; j++ )
				_pValObjs[i].pRealVecVar[j] = (_pValObjs[i].vValue)->value.reals[j];
			if ( _pVar ) 
			// if user variable specified, copies value from port structure
				memcpy( _pVar, _pValObjs[i].pRealVecVar, _pValObjs[i].vValue->bufSize );
			return true;
			break;
		case vhpiIntVal: // integer port
			// copies port value to integer variable in port map	
			*(_pValObjs[i].pIntVar) = (_pValObjs[i].vValue)->value.intg;
			if ( _pVar ) 
			// if user variable specified, copies value from port structure
				*(int*)_pVar = *(_pValObjs[i].pIntVar);
			return true;
			break;
		case vhpiIntVecVal: // integer[n] port
			// copies port value to integer[n] variable in port map	
			for ( int j = 0; j < (_pValObjs[i].vValue)->numElems; j++ )
				_pValObjs[i].pIntVecVar[j] = (_pValObjs[i].vValue)->value.intgs[j];
			if ( _pVar ) 
			// if user variable specified, copies value from port structure
				memcpy( _pVar, _pValObjs[i].pIntVecVar, _pValObjs[i].vValue->bufSize );
			return true;
			break;
		default:
			vhpi_printf( "varUpdate(): Object type is not supported yet\n" );
			return false;
			break;
		}			   
	else
	{				
		vhpiErrorInfoT errInf;	
		vhpi_printf( "varUpdate(): Call to vhpi_get_value() failed\n" );
		// check error info from vhpi_get_value()
		if ( vhpi_check_error( &errInf ) )
			vhpi_printf( "varUpdate(): vhpi_check_error() message: \n", errInf.message );
		else
			vhpi_printf( "varUpdate(): No vhpi_check_error() message...\n" ); 
		return false;
	}		
}

// this function updates user's variable value											 
bool varUpdate( char* _szName, TValObjPtrs* _pValObjs, void* _pVar, int _bVarType )
{
	// get index of searched object
	int i = getId( _szName, _pValObjs );	
	if ( i == -1 )
	{
		vhpi_printf( "varUpdate(): getId() has returned -1. No object found\n" );
		return false;
	}
	return varUpdateMain( i, _pValObjs, _pVar, _bVarType );
}

// this function updates user's variable value											 
bool varUpdate( vhpiHandleT _hHdl, TValObjPtrs* _pValObjs, void* _pVar, int _bVarType )
{
	// get index of searched object
	int i = getId( _hHdl, _pValObjs );
	if ( i == -1 )
	{
		vhpi_printf( "varUpdate(): getId() has returned -1. No object found\n" );
		return false;
	}	
	return varUpdateMain( i, _pValObjs, _pVar, _bVarType );
}	

// this function updates value returned by function/procedure
bool retUpdate( vhpiValueT* _vValue, unsigned* _pVar, int _vhdlType )
{													
	switch ( _vValue->format )
	{
	case vhpiEnumVal:
		if ( ( _vhdlType == 0 ) && ( *_pVar >= vhpiU ) && ( *_pVar <= vhpiDontCare ) )
			_vValue->value.enumv = *_pVar;
		else if ( ( _vhdlType == 1 ) && ( *_pVar >= vhpibit0 ) && ( *_pVar <= vhpibit1 ) )
			_vValue->value.enumv = *_pVar;
		else
		{
			vhpi_printf( "retUpdate(): Int value exceeds logic type range\n" );
			_vValue->value.enumv = 0;
			return false;
		}
		break;
	case vhpiIntVal:
		_vValue->value.intg = *_pVar;
		break;
	case vhpiIntVecVal:
		// _vValue->value.intgs = (vhpiIntT*) malloc( _vValue->bufSize );
		_vValue->value.intgs = new vhpiIntT [_vValue->bufSize];
		for ( int j = 0; j < _vValue->numElems; j++ )
			_vValue->value.intgs[j] = _pVar[j];
		break;
	case vhpiEnumVecVal:
		// _vValue->value.enumvs = (vhpiEnumT*) malloc( _vValue->bufSize );
		_vValue->value.enumvs = new vhpiEnumT [_vValue->bufSize];
		if ( _vhdlType == 0 )
			int2stdlv( *_pVar, _vValue );
		else if ( _vhdlType == 1 )
			int2bitv( *_pVar, _vValue );
		else
		{
			vhpi_printf( "retUpdate(): Type mismatch\n" );
			*_pVar = 0;
			return false;
		}
		break;
	default:
		vhpi_printf( "retUpdate(): Type mismatch\n" );
		*_pVar = 0;
		return false;
	}
	return true;
}

bool retUpdate( vhpiValueT* _vValue, double* _pVar, int _vhdlType )
{													
	switch ( _vValue->format )
	{
	case vhpiRealVal:
		_vValue->value.real = *_pVar;
		break;
	case vhpiRealVecVal:
		// _vValue->value.reals = (vhpiRealT*) malloc( _vValue->bufSize );
		_vValue->value.reals = new vhpiRealT [_vValue->bufSize];
		for ( int j = 0; j < _vValue->numElems; j++ )
			_vValue->value.reals[j] = _pVar[j];			
		break;
	default:
		vhpi_printf( "retUpdate(): Type mismatch\n" );
		*_pVar = 0;
		return false;
	}
	return true;
}

// this function gets index of object in objects table for given object name
int getId( char* _szName, TValObjPtrs* _pValObjs )
{
	int i = -1;
	// search structures table for object name				
	while ( _pValObjs[++i].szName )			   
	{
		if ( stricmp( _szName, _pValObjs[i].szName ) == 0 )
		{
			return i;
			break;
		}
	}
	vhpi_printf( "getId(): i = %d, Object Name: %s \n", i, _szName );
	vhpi_assert( (vhpiSeverityT)vhpiFailure, "getId(): Object not found");
	return -1;
}

// this function gets index of object in objects table for given object handle
int getId( vhpiHandleT _hHdl, TValObjPtrs* _pValObjs )
{
	int i = -1;				   
	while ( _pValObjs[++i].hHdl )
		if ( vhpi_compare_handles( _pValObjs[i].hHdl, _hHdl ) == 1 )
		{
			return i;
			break;
		}
	vhpi_printf( "getId(): i = %d, Object Handle: %d \n", i, _hHdl );
	vhpi_assert( (vhpiSeverityT)vhpiFailure, "getId(): Object not found");
	return -1;
}

// this function gets index of user variables structure pointer in objects table
int getUserId( TValObjPtrs* _pValObjs )
{
	int i = -1;
	while ( _pValObjs[++i].hHdl != NULL );
	if ( _pValObjs[i].pUserVars != NULL )
		return i;
	else 
	{
		return -1;																	
		vhpi_assert( (vhpiSeverityT)vhpiFailure, "getUserId(): Pointer to user variables structure not found");
	}
}

// this function creates and allocates proper object for value of passed signal
vhpiValueT* getFieldValue( vhpiHandleT _hSigHdl )
{
	vhpiValueT* vValue = NULL;
	if ( _hSigHdl )
	{														
		// allocates memory for vhpiValueT structure
		// vValue = (vhpiValueT*) malloc( sizeof( vhpiValueT ) );	
		vValue = new vhpiValueT;	
		memset( vValue, '\x0', sizeof(vhpiValueT) ); 
		// reads format from object (e.g. enum or int etc.)
		vValue->format = vhpiObjTypeVal;
		// if object size is greater than allocated value structure
		// i.e. object has more than one element e.g. is a vector
		// then allocate additional memory according to number of elements
		if ( vhpi_get_value( _hSigHdl, vValue ) > 0)
		{													
			switch ( vValue->format )
			{
			case vhpiEnumVecVal:
				// read number of elements read by vhpi_get_value
				vValue->bufSize = vValue->numElems * sizeof( vhpiEnumT );
				// allocate memory
				vValue->value.enumvs = new vhpiEnumT [vValue->bufSize];
				break;
			case vhpiIntVecVal:
				vValue->bufSize = vValue->numElems * sizeof( vhpiIntT );
				vValue->value.intgs = new vhpiIntT [vValue->bufSize];
				break;
			case vhpiRealVecVal:
				vValue->bufSize = vValue->numElems * sizeof( vhpiRealT );
				vValue->value.reals = new vhpiRealT [vValue->bufSize];
				break;
			}	
		}					 
	}
	return vValue;
}

// this function converts integer vhpiModeP property values to strings
// its only purpose is to display the mode on console during getting handles
char* conv_mode( int mode )
{
	switch ( mode )
	{
	case 1001: 
		return "vhpiInMode"; 
		break;
	case 1002: 
		return "vhpiOutMode"; 
		break;
	case 1003: 
		return "vhpiInoutMode"; 
		break;
	case 1004: 
		return "vhpiBufferMode"; 
		break;
	case 1005: 
		return "vhpiLinkageMode"; 
		break;
	default: 
		return "Illegal Mode Value"; 
		break;
	}
}
   
// this function gets handle to signal of specified hierarchical name
vhpiHandleT getHandle( char* _szSigName )
{
	vhpiHandleT	 hSigHdl,hHdl,hSubItr,hSubHdl;		  
	// get handle to root instance
	if ( ( hHdl = vhpi_handle( vhpiRootInst, NULL ) ) )
	{							 
	// get handle to signal - try root instance first 
		if ( !( hSigHdl = vhpi_handle_by_name( _szSigName, hHdl ) ) )
		{
		// if failed, iterate internal regions
			if (( hSubItr = vhpi_iterator( vhpiInternalRegions, hHdl ) )) 
			{
				while (( hSubHdl = vhpi_scan( hSubItr ) )) 
					if ( !( hSigHdl = vhpi_handle_by_name( _szSigName, hSubHdl ) ) ) 
					{						 
					// if failed, print info
						vhpi_printf( "getHandle(): No signals found searching root and internal regions or ambiguous signal name\n" );
						return NULL;
					}
			}
			else									  
			{					
				vhpi_printf( "getHandle(): No internal regions found\n" );
				return NULL;
			}
		}		

		// if getting handle succeeded, print information on console... 
		if ( strcmp( vhpi_get_str( vhpiKindStrP, hSigHdl ), "vhpiPortDeclK" ) == 0 )				
		// ...with mode in case of port
			vhpi_printf( "getHandle(): Port %s found: kind %s, mode %s\n",vhpi_get_str( vhpiFullNameP, hSigHdl ), vhpi_get_str( vhpiKindStrP, hSigHdl ), conv_mode( vhpi_get( vhpiModeP, hSigHdl ) ) );
		else						   
		// ...without mode in case of other object
			vhpi_printf( "getHandle(): Object %s found: kind %s\n", vhpi_get_str( vhpiFullNameP, hSigHdl ), vhpi_get_str( vhpiKindStrP, hSigHdl ) );
		return hSigHdl;
	}
	else	
	{
		vhpi_printf( "getHandle(): No root instance found\n" );
		return NULL;						  
	}
}

// this function registers callback for vhpiCbValueChange reason  
// arguments: handles to signal and to user data 
bool isRegisteredCbValueChange( PLI_VOID( *cb_rtn_name ) (const struct vhpiCbDataS *), vhpiHandleT _hSigHdl, PLI_VOID*  _hUserData )
{
	vhpiCbDataT	cbData;
	vhpiHandleT	cbData_Hdl;
	vhpiErrorInfoT errInf;
	
	cbData.cb_rtn = cb_rtn_name;
	cbData.reason = vhpiCbValueChange;
	cbData.obj = _hSigHdl;
	cbData.value = getFieldValue( cbData.obj );
	cbData.time = NULL;				
	cbData.user_data = _hUserData;	 // pass user data handle to callback 
 	
	vhpi_register_cb( &cbData, vhpiReturnCb );
	if ( ( cbData_Hdl = vhpi_register_cb( &cbData, vhpiReturnCb ) ) )
		return true;
	else 
	{
	// check error message and print failure info
		vhpi_printf( "isRegisteredCbValueChange(): Callback on vhpiCbValueChange reason for signal: %s NOT registered \n", vhpi_get_str( vhpiFullNameP, _hSigHdl ) );
		if ( vhpi_check_error( &errInf ) )
			vhpi_printf( errInf.message );
		else
			vhpi_printf( "isRegisteredCbValueChange(): No vhpi_check_error() message...\n" ); 
		return false;
	}
}	

// this function registers callback for vhpiCbEndOfSimulation reason  
// arguments: callback routine name 
bool isRegisteredCbEndOfSimulation( PLI_VOID(*cb_rtn_name) (const struct vhpiCbDataS *), PLI_VOID* _hUserData )
{	
	vhpiCbDataT	cbData;
	vhpiHandleT	cbData_Hdl;
	vhpiErrorInfoT errInf;

	cbData.reason = vhpiCbEndOfSimulation ;
	cbData.cb_rtn = cb_rtn_name;
	cbData.obj = NULL;
	cbData.time = NULL;
	cbData.value = NULL;
	cbData.user_data = _hUserData;
	
	if ( ( cbData_Hdl = vhpi_register_cb( &cbData, vhpiReturnCb ) ) )
		return true;
	else
	{	
	// check error message and print failure info
		vhpi_printf( "isRegisteredCbEndOfSimulation(): Callback on vhpiCbEndOfSimulation reason NOT registered \n" );	
		if ( vhpi_check_error( &errInf ) )
			vhpi_printf( errInf.message );
		else
			vhpi_printf( "isRegisteredCbEndOfSimulation(): No vhpi_check_error() message...\n" ); 
		return false;	
	}	  
}

// this function registers callback for vhpiCbAfterDelay reason  
// arguments: callback routine name, delay in simulation resolution units
vhpiHandleT registerCbAfterDelay( PLI_VOID(*cb_rtn_name) (const struct vhpiCbDataS *), vhpiTimeT _tTime, PLI_VOID* _hUserData )
{
	vhpiCbDataT	cbData;
	vhpiHandleT cbData_Hdl;
	vhpiErrorInfoT errInf;	
	
	cbData.reason = vhpiCbAfterDelay;
	cbData.cb_rtn = cb_rtn_name;
	cbData.obj = NULL;
	cbData.time = &_tTime;
	cbData.value = NULL;
	cbData.user_data = _hUserData;
	
	if ( ( cbData_Hdl = vhpi_register_cb( &cbData, vhpiReturnCb ) ) )
		return cbData_Hdl;
	else
	{
	// check error message and print failure info
		vhpi_printf( "isRegisteredCbAfterDelay(): Callback on vhpiCbAfterDelay reason NOT registered \n" );	
		if ( vhpi_check_error( &errInf ) )
			vhpi_printf( errInf.message );
		else
			vhpi_printf( "isRegisteredCbAfterDelay(): No vhpi_check_error() message...\n" ); 
		return NULL;
	}	  
}

