
TYPE
	caseOpcUaClient : 
		(
		WAIT,
		UA_CONNECT,
		UA_GET_NAME_SPACE_INDEX,
		UA_NODE_GET_HANDLE_LIST,
		UA_READ_LIST_ON,
		UA_READ_LIST_OFF,
		UA_NODE_RELEASE_HANDLE_LIST,
		UA_DISCONNECT,
		ERROR
		);
	rexrothRaportType : {REDUND_UNREPLICABLE} 	STRUCT 
		TJ_iRaport : {REDUND_UNREPLICABLE} INT;
		iKorekceRaportu : {REDUND_UNREPLICABLE} INT;
		TJ_rTiskKorekceDisplayDReg : {REDUND_UNREPLICABLE} REAL;
		TJ_rTiskKorekceDisplaySReg : {REDUND_UNREPLICABLE} REAL;
		TJ_rTiskKorekceDisplayLF : {REDUND_UNREPLICABLE} REAL;
		TJ_rTiskKorekceDisplayPF : {REDUND_UNREPLICABLE} REAL;
		TJ_rTiskKorekceDisplayLR : {REDUND_UNREPLICABLE} REAL;
		TJ_rTiskKorekceDisplayPR : {REDUND_UNREPLICABLE} REAL;
	END_STRUCT;
END_TYPE
