

PROGRAM _INIT
	#ifdef CONFIG_SIMULATION
	brsstrcpy(ADR(sIPaddr), ADR('localhost'));
	#else
	CfgGetIPAddr_0(enable := TRUE, pDevice := ADR('IF3'), pIPAddr := ADR(sIPaddr) , Len :=16 );
	#endif
END_PROGRAM