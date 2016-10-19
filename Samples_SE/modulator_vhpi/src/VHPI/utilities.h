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
// File        : utilities.h
// Generated   : 3:23:32 PM Monday, August 08, 2005
// By          : VHPI Wizard ver. 2.0
//
//----------------------------------------------------------------------------
//
// Description : Utility functions header file
//
//----------------------------------------------------------------------------
*/


#ifndef __UTILITIES_H__ 
#define __UTILITIES_H__

#include <vhpi_user.h>


// STRUCTURE FOR USER VARIABLES TO BE PASSED THROUGH CALLBACKS //

// use it to store variables' values for whole simulation run
typedef struct SUserVars {
	//<type> <varName>;
	double rDelta;
	double rValueX;
} TUserVars;


// STRUCTURE FOR OBJECT (PORT, PARAMETER) INFORMATION STORAGE //

// Var pointers are dedicated to be used by user to set object values
// Those pointers are automatically updated by varUpdate() functions and
// used by default in objUpdate() functions
typedef struct SValObjPtrs 
{
	vhpiHandleT hHdl; // handle
	vhpiValueT* vValue; // pointer to value
	int nIndex; // index
	char* szName; // object name
	int nType; // object type (to distinguish enum types: bit and std_logic)
	int enumZeros[10];
	int enumOnes[10];
	int enumMin;
	int enumMax;
	int* pIntVar; // pointer to integer variable (for std_logic, std_logic_vector, bit, bit_vector port types)
	bool* pBoolVar;// pointer to boolean variable (for std_logic, bit port types)
	double* pRealVar; // pointer to double variable (for real port types)
	bool* pBoolVecVar; // pointer to boolean[n] variable (for std_logic_vector, bit_vector port types)
	int* pIntVecVar; // pointer to integer[n] variable (for std_logic_vector, bit_vector, array of integer port types)
	double* pRealVecVar; // pointer to double[n] variable (for array of real port types)
	TUserVars* pUserVars; 
} TValObjPtrs;


// TYPE FLAGS FOR DATA TRANSFER FUNCTIONS //

#define typeDefaultVar 0
#define typeBoolVar    1
#define typeBoolVecVar 2
#define typeIntVar     3
#define typeIntVecVar  4
#define typeRealVar    5
#define typeRealVecVar 6
#define INT  pIntVar
#define REAL pRealVar
#define BOOL pBoolVar


// DATA TRANSFER FUNCTIONS //

// this function gets index of object in objects table
// arguments: object port/parameter name, pointer to information table
int getId( char* _szName, TValObjPtrs* _pValObjs );
// arguments: object port/parameter handle, pointer to information table
int getId( vhpiHandleT _hHdl, TValObjPtrs* _pValObjs );

// this function gets index of user variables structure pointer in objects table
// arguments: pointer to information table
int getUserId( TValObjPtrs* _pValObjs );

// this function updates user's variable value
// arguments: object port/parameter handle, pointer to information table,
// pointer to user variable (optional), type flag (optional)
bool varUpdate( vhpiHandleT _hHdl, TValObjPtrs* _pValObjs = 0, void* _pVar = 0, int _bVarType = 0 );
// arguments: object port/parameter name, pointer to information table,
// pointer to user variable (optional), type flag (optional)
bool varUpdate( char* _szParName, TValObjPtrs* _pValObjs = 0, void* _pVar = 0, int _bVarType = 0 );

// this function updates port value
// arguments: object port/parameter handle, pointer to information table,
// pointer to user variable (optional), type flag (optional)
bool objUpdate( vhpiHandleT _hPortHdl, TValObjPtrs* _pValObjs = 0, void* _pVar = 0, int _bVarType = 0 );
// arguments: object port/parameter name, pointer to information table,
// pointer to user variable (optional), type flag (optional)
bool objUpdate( char* _szPortName, TValObjPtrs* _pValObjs = 0, void* _pVar = 0, int _bVarType = 0 );

// this function updates value returned by function
// arguments: pointer to value structure, pointer to user variable (optional), VHDL type flag (optional)
bool retUpdate( vhpiValueT* _vValue, unsigned* _pVar, int _vhdlType = 0 );
bool retUpdate( vhpiValueT* _vValue, double* _pVar, int _vhdlType = 0 );


// INFORMATION STRUCTURE FUNCTIONS //

// this function adds new object to table information structures
// arguments: object port/parameter handle, pointer to information table, information table size
TValObjPtrs* addValObj( vhpiHandleT _hNewHandle, TValObjPtrs* _pActualPointer, int _nActualSize );
// arguments: pointer to user variables structure, pointer to information table, information table size
TValObjPtrs* addValObj( TUserVars* _pUserVars, TValObjPtrs* _pActualPointer, int _nActualSize );

// this function removes table information structures from memory
// arguments: pointer to information table,
void cleanValObj( TValObjPtrs* _pValObjs );


// CALLBACK REGISTRATION FUNCTIONS //

// this function registers callback for vhpiCbValueChange reason
// arguments: callback routine name, object handle, pointer to user data
bool isRegisteredCbValueChange( PLI_VOID (*cb_rtn_name) (const struct vhpiCbDataS *), vhpiHandleT _hSigHdl, PLI_VOID* _hUserData );

// this function registers callback for vhpiCbEndOfSimulation reason
// arguments: callback routine name
bool isRegisteredCbEndOfSimulation( PLI_VOID (*cb_rtn_name) (const struct vhpiCbDataS *), PLI_VOID* _hUserData );

// this function registers callback for vhpiCbAfterDelay reason
// arguments: callback routine name, vhpiTimeT structure with delay in simulation resolution units, pointer to user data
vhpiHandleT registerCbAfterDelay( PLI_VOID (*cb_rtn_name) (const struct vhpiCbDataS *), vhpiTimeT _tTime, PLI_VOID* _hUserData );


// ADDITIONAL FUNCTIONS //

// this function adjusts clock delays and checks if they are valid
// arguments: time unit (ns: -9, us: -6, etc.), period, duty cycle, high state duration, low state duration
void adjustClock( signed int _nUnit, unsigned int _nPeriod, double _rDuty, vhpiTimeT* _tHighDelay, vhpiTimeT* _tLowDelay );

// this function converts C integer to VHDL std_logic_vector
// arguments: integer variable, pointer to value structure
PLI_VOID int2stdlv( signed _nVal, vhpiValueT* _vValueP );

// this function converts C integer to VHDL bit_vector
// arguments: integer variable, pointer to value structure
PLI_VOID int2bitv( signed _nVal, vhpiValueT* _vValueP );

// this function converts VHDL std_logic_vector to C integer
// arguments: pointer to value structure
vhpiIntT stdlv2int( vhpiValueT* _vValueP );

// this function converts VHDL bit_vector to C integer
// arguments: pointer to value structure
vhpiIntT bv2int( vhpiValueT* _vValueP );

// this function creates and allocates proper object for value of passed signal
// arguments: signal handle
vhpiValueT* getFieldValue( vhpiHandleT _hSigHdl );

//this function gets handle to signal of specified hierarchical name
// arguments: signal name (e.g. :U1:U2:Sig1)
vhpiHandleT getHandle( char* _szSigName );


#endif
