(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: Client01b
 * File: Client01bCyclic.st
 * Author: mayrk
 * Created: July 03, 2014
 ********************************************************************
 * Implementation of program Sample01
 ********************************************************************)

PROGRAM _INIT
	VarA := 0;
	VarB[0] := 0;
	VarB[1] := 0;
	VarB[2] := 0;
	VarB[3] := 0;
	VarC := 0; 
	NamespaceIndex := 2; // 2 jenom pro Rexroth,  BR ma 6
	nbVarToRead := VM_MAX_NODEIDS_INDEXES;
	
	FOR i:= 0 TO VM_MAX_NODEIDS_INDEXES DO
		NodeAddInfo_0[i].AttributeId := UAAI_Value;// UAAI_DataType;
		NodeAddInfo_0[i].IndexRangeCount := 0;
	END_FOR;
	
	k:= 0;	
//	FOR i:=0 TO VM_MAX_ARRAY_INDEXES DO 
//		//::ClReadList:readList
//		brsitoa(USINT_TO_DINT(i), ADR(indexString));
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_iRaport'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_iKorekceRaportu'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_rTiskKorekceDisplayDReg'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_rTiskKorekceDisplaySReg'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_rTiskKorekceDisplayLF'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_rTiskKorekceDisplayPF'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_rTiskKorekceDisplayLR'));
//		k:=k+1;
//		nxtAdr := brsstrcpy(ADR(Variables_Rd0[k]),ADR('::ClReadList:readList[') );
//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString));
//		nxtAdr := brsstrcat(nxtAdr, ADR('].TJ_rTiskKorekceDisplayPR'));
//		k:=k+1;
	//	END_FOR;
	
	//List of OPC UA SERVER variables - hand writing

	
	Variables_Rd0[0] := '::ClReadList:readList[0].TJ_iRaport';
	Variables_Rd0[1] := '::ClReadList:readList[0].iKorekceRaportu';
	Variables_Rd0[2] := '::ClReadList:readList[0].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[3] := '::ClReadList:readList[0].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[4] := '::ClReadList:readList[0].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[5] := '::ClReadList:readList[0].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[6] := '::ClReadList:readList[0].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[7] := '::ClReadList:readList[0].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[8] := '::ClReadList:readList[1].TJ_iRaport';
	Variables_Rd0[9] := '::ClReadList:readList[1].iKorekceRaportu';
	Variables_Rd0[10] := '::ClReadList:readList[1].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[11] := '::ClReadList:readList[1].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[12] := '::ClReadList:readList[1].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[13] := '::ClReadList:readList[1].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[14] := '::ClReadList:readList[1].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[15] := '::ClReadList:readList[1].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[16] := '::ClReadList:readList[2].TJ_iRaport';
	Variables_Rd0[17] := '::ClReadList:readList[2].iKorekceRaportu';
	Variables_Rd0[18] := '::ClReadList:readList[2].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[19] := '::ClReadList:readList[2].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[20] := '::ClReadList:readList[2].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[21] := '::ClReadList:readList[2].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[22] := '::ClReadList:readList[2].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[23] := '::ClReadList:readList[2].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[24] := '::ClReadList:readList[3].TJ_iRaport';
	Variables_Rd0[25] := '::ClReadList:readList[3].iKorekceRaportu';
	Variables_Rd0[26] := '::ClReadList:readList[3].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[27] := '::ClReadList:readList[3].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[28] := '::ClReadList:readList[3].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[29] := '::ClReadList:readList[3].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[30] := '::ClReadList:readList[3].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[31] := '::ClReadList:readList[3].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[32] := '::ClReadList:readList[4].TJ_iRaport';
	Variables_Rd0[33] := '::ClReadList:readList[4].iKorekceRaportu';
	Variables_Rd0[34] := '::ClReadList:readList[4].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[35] := '::ClReadList:readList[4].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[36] := '::ClReadList:readList[4].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[37] := '::ClReadList:readList[4].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[38] := '::ClReadList:readList[4].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[39] := '::ClReadList:readList[4].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[40] := '::ClReadList:readList[5].TJ_iRaport';
	Variables_Rd0[41] := '::ClReadList:readList[5].iKorekceRaportu';
	Variables_Rd0[42] := '::ClReadList:readList[5].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[43] := '::ClReadList:readList[5].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[44] := '::ClReadList:readList[5].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[45] := '::ClReadList:readList[5].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[46] := '::ClReadList:readList[5].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[47] := '::ClReadList:readList[5].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[48] := '::ClReadList:readList[6].TJ_iRaport';
	Variables_Rd0[49] := '::ClReadList:readList[6].iKorekceRaportu';
	Variables_Rd0[50] := '::ClReadList:readList[6].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[51] := '::ClReadList:readList[6].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[52] := '::ClReadList:readList[6].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[53] := '::ClReadList:readList[6].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[54] := '::ClReadList:readList[6].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[55] := '::ClReadList:readList[6].TJ_rTiskKorekceDisplayPR';

	Variables_Rd0[56] := '::ClReadList:readList[7].TJ_iRaport';
	Variables_Rd0[57] := '::ClReadList:readList[7].iKorekceRaportu';
	Variables_Rd0[58] := '::ClReadList:readList[7].TJ_rTiskKorekceDisplayDReg';
	Variables_Rd0[59] := '::ClReadList:readList[7].TJ_rTiskKorekceDisplaySReg';
	Variables_Rd0[60] := '::ClReadList:readList[7].TJ_rTiskKorekceDisplayLF';
	Variables_Rd0[61] := '::ClReadList:readList[7].TJ_rTiskKorekceDisplayPF';
	Variables_Rd0[62] := '::ClReadList:readList[7].TJ_rTiskKorekceDisplayLR';
	Variables_Rd0[63] := '::ClReadList:readList[7].TJ_rTiskKorekceDisplayPR';

	readList[0].TJ_iRaport;
	readList[0].iKorekceRaportu;
	readList[0].TJ_rTiskKorekceDisplayDReg;
	readList[0].TJ_rTiskKorekceDisplaySReg;
	readList[0].TJ_rTiskKorekceDisplayLF;
	readList[0].TJ_rTiskKorekceDisplayPF;
	readList[0].TJ_rTiskKorekceDisplayLR;
	readList[0].TJ_rTiskKorekceDisplayPR;

	readList[1].TJ_iRaport;
	readList[1].iKorekceRaportu;
	readList[1].TJ_rTiskKorekceDisplayDReg;
	readList[1].TJ_rTiskKorekceDisplaySReg;
	readList[1].TJ_rTiskKorekceDisplayLF;
	readList[1].TJ_rTiskKorekceDisplayPF;
	readList[1].TJ_rTiskKorekceDisplayLR;
	readList[1].TJ_rTiskKorekceDisplayPR;

	readList[2].TJ_iRaport;
	readList[2].iKorekceRaportu;
	readList[2].TJ_rTiskKorekceDisplayDReg;
	readList[2].TJ_rTiskKorekceDisplaySReg;
	readList[2].TJ_rTiskKorekceDisplayLF;
	readList[2].TJ_rTiskKorekceDisplayPF;
	readList[2].TJ_rTiskKorekceDisplayLR;
	readList[2].TJ_rTiskKorekceDisplayPR;

	readList[3].TJ_iRaport;
	readList[3].iKorekceRaportu;
	readList[3].TJ_rTiskKorekceDisplayDReg;
	readList[3].TJ_rTiskKorekceDisplaySReg;
	readList[3].TJ_rTiskKorekceDisplayLF;
	readList[3].TJ_rTiskKorekceDisplayPF;
	readList[3].TJ_rTiskKorekceDisplayLR;
	readList[3].TJ_rTiskKorekceDisplayPR;

	readList[4].TJ_iRaport;
	readList[4].iKorekceRaportu;
	readList[4].TJ_rTiskKorekceDisplayDReg;
	readList[4].TJ_rTiskKorekceDisplaySReg;
	readList[4].TJ_rTiskKorekceDisplayLF;
	readList[4].TJ_rTiskKorekceDisplayPF;
	readList[4].TJ_rTiskKorekceDisplayLR;
	readList[4].TJ_rTiskKorekceDisplayPR;

	readList[5].TJ_iRaport;
	readList[5].iKorekceRaportu;
	readList[5].TJ_rTiskKorekceDisplayDReg;
	readList[5].TJ_rTiskKorekceDisplaySReg;
	readList[5].TJ_rTiskKorekceDisplayLF;
	readList[5].TJ_rTiskKorekceDisplayPF;
	readList[5].TJ_rTiskKorekceDisplayLR;
	readList[5].TJ_rTiskKorekceDisplayPR;

	readList[6].TJ_iRaport;
	readList[6].iKorekceRaportu;
	readList[6].TJ_rTiskKorekceDisplayDReg;
	readList[6].TJ_rTiskKorekceDisplaySReg;
	readList[6].TJ_rTiskKorekceDisplayLF;
	readList[6].TJ_rTiskKorekceDisplayPF;
	readList[6].TJ_rTiskKorekceDisplayLR;
	readList[6].TJ_rTiskKorekceDisplayPR;

	readList[7].TJ_iRaport;
	readList[7].iKorekceRaportu;
	readList[7].TJ_rTiskKorekceDisplayDReg;
	readList[7].TJ_rTiskKorekceDisplaySReg;
	readList[7].TJ_rTiskKorekceDisplayLF;
	readList[7].TJ_rTiskKorekceDisplayPF;
	readList[7].TJ_rTiskKorekceDisplayLR;
	readList[7].TJ_rTiskKorekceDisplayPR;


	FOR i:=0 TO VM_MAX_NODEIDS_INDEXES DO
		// NodeIDs_0[i]
		NodeIDs_0[i].NamespaceIndex := NamespaceIndex;
		NodeIDs_0[i].IdentifierType := UAIdentifierType_String;		 
	END_FOR;
	
	readList := readList;
	
	k:= 0;
	//	FOR i:=0 TO VM_MAX_ARRAY_INDEXES DO			
	//		// .TJ_iRaport
	//		brsitoa(USINT_TO_DINT(i+1), ADR(indexString));
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_iRaport'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 
	//		k:= k+1;
	//		// .TJ_iKorekceRaportu
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_iKorekceRaportu'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;
	//		// .TJ_iTiskKorekceDisplayDReg
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_rTiskKorekceDisplayDReg'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;	
	//		// .TJ_iTiskKorekceDisplaySReg
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_rTiskKorekceDisplaySReg'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;	
	//		// .TJ_iTiskKorekceDisplayLF
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_rTiskKorekceDisplayLF'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;
	//		// .TJ_iTiskKorekceDisplayPF
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_rTiskKorekceDisplayPF'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;	
	//		// .TJ_iTiskKorekceDisplayLR
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_rTiskKorekceDisplayLR'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;
	//		// .TJ_iTiskKorekceDisplayPR
	//		nxtAdr := brsstrcpy(ADR(NodeIDs_0[k].Identifier), ADR('.TJ_rTiskKorekceDisplayPR'));
	//		nxtAdr := brsstrcat(nxtAdr, ADR(indexString)); 	 		
	//		k:= k+1;
	//	END_FOR;
	
	NodeIDs_0[0].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[0].Identifier := '.TJ_iRaport1';
	NodeIDs_0[0].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[1].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[1].Identifier := '.TJ_iKorekceRaportu1';
	NodeIDs_0[1].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[2].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[2].Identifier := '.TJ_rTiskKorekceDisplayDReg1';
	NodeIDs_0[2].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[3].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[3].Identifier := '.TJ_rTiskKorekceDisplaySReg1';
	NodeIDs_0[3].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[4].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[4].Identifier := '.TJ_rTiskKorekceDisplayLF1';
	NodeIDs_0[4].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[5].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[5].Identifier := '.TJ_rTiskKorekceDisplayPF1';
	NodeIDs_0[5].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[6].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[6].Identifier := '.TJ_rTiskKorekceDisplayLR1';
	NodeIDs_0[6].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[7].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[7].Identifier := '.TJ_rTiskKorekceDisplayPR1';
	NodeIDs_0[7].IdentifierType := UAIdentifierType_String;
(**********************************************************************)	
	NodeIDs_0[8].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[8].Identifier := '.TJ_iRaport2';
	NodeIDs_0[8].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[9].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[9].Identifier := '.TJ_iKorekceRaportu2';
	NodeIDs_0[9].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[10].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[10].Identifier := '.TJ_rTiskKorekceDisplayDReg2';
	NodeIDs_0[10].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[11].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[11].Identifier := '.TJ_rTiskKorekceDisplaySReg2';
	NodeIDs_0[11].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[12].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[12].Identifier := '.TJ_rTiskKorekceDisplayLF2';
	NodeIDs_0[12].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[13].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[13].Identifier := '.TJ_rTiskKorekceDisplayPF2';
	NodeIDs_0[13].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[14].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[14].Identifier := '.TJ_rTiskKorekceDisplayLR2';
	NodeIDs_0[14].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[15].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[15].Identifier := '.TJ_rTiskKorekceDisplayPR2';
	NodeIDs_0[15].IdentifierType := UAIdentifierType_String;
	(**********************************************************************)	
	
	NodeIDs_0[16].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[16].Identifier := '.TJ_iRaport3';
	NodeIDs_0[16].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[17].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[17].Identifier := '.TJ_iKorekceRaportu3';
	NodeIDs_0[17].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[18].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[18].Identifier := '.TJ_rTiskKorekceDisplayDReg3';
	NodeIDs_0[18].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[19].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[19].Identifier := '.TJ_rTiskKorekceDisplaySReg3';
	NodeIDs_0[19].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[20].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[20].Identifier := '.TJ_rTiskKorekceDisplayLF3';
	NodeIDs_0[20].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[21].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[21].Identifier := '.TJ_rTiskKorekceDisplayPF3';
	NodeIDs_0[21].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[22].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[22].Identifier := '.TJ_rTiskKorekceDisplayLR3';
	NodeIDs_0[22].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[23].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[23].Identifier := '.TJ_rTiskKorekceDisplayPR3';
	NodeIDs_0[23].IdentifierType := UAIdentifierType_String;
	(**********************************************************************)	
	
	NodeIDs_0[24].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[24].Identifier := '.TJ_iRaport4';
	NodeIDs_0[24].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[25].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[25].Identifier := '.TJ_iKorekceRaportu4';
	NodeIDs_0[25].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[26].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[26].Identifier := '.TJ_rTiskKorekceDisplayDReg4';
	NodeIDs_0[26].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[27].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[27].Identifier := '.TJ_rTiskKorekceDisplaySReg4';
	NodeIDs_0[27].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[28].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[28].Identifier := '.TJ_rTiskKorekceDisplayLF4';
	NodeIDs_0[28].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[29].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[29].Identifier := '.TJ_rTiskKorekceDisplayPF4';
	NodeIDs_0[29].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[30].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[30].Identifier := '.TJ_rTiskKorekceDisplayLR4';
	NodeIDs_0[30].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[31].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[31].Identifier := '.TJ_rTiskKorekceDisplayPR4';
	NodeIDs_0[31].IdentifierType := UAIdentifierType_String;
	(**********************************************************************)	
	
	NodeIDs_0[32].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[32].Identifier := '.TJ_iRaport5';
	NodeIDs_0[32].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[33].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[33].Identifier := '.TJ_iKorekceRaportu5';
	NodeIDs_0[33].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[34].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[34].Identifier := '.TJ_rTiskKorekceDisplayDReg5';
	NodeIDs_0[34].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[35].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[35].Identifier := '.TJ_rTiskKorekceDisplaySReg5';
	NodeIDs_0[35].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[36].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[36].Identifier := '.TJ_rTiskKorekceDisplayLF5';
	NodeIDs_0[36].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[37].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[37].Identifier := '.TJ_rTiskKorekceDisplayPF5';
	NodeIDs_0[37].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[38].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[38].Identifier := '.TJ_rTiskKorekceDisplayLR5';
	NodeIDs_0[38].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[39].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[39].Identifier := '.TJ_rTiskKorekceDisplayPR5';
	NodeIDs_0[39].IdentifierType := UAIdentifierType_String;
	(**********************************************************************)	
	
	NodeIDs_0[40].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[40].Identifier := '.TJ_iRaport6';
	NodeIDs_0[40].IdentifierType := UAIdentifierType_String;

	NodeIDs_0[41].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[41].Identifier := '.TJ_iKorekceRaportu6';
	NodeIDs_0[41].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[42].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[42].Identifier := '.TJ_rTiskKorekceDisplayDReg6';
	NodeIDs_0[42].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[43].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[43].Identifier := '.TJ_rTiskKorekceDisplaySReg6';
	NodeIDs_0[43].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[44].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[44].Identifier := '.TJ_rTiskKorekceDisplayLF6';
	NodeIDs_0[44].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[45].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[45].Identifier := '.TJ_rTiskKorekceDisplayPF6';
	NodeIDs_0[45].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[46].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[46].Identifier := '.TJ_rTiskKorekceDisplayLR6';
	NodeIDs_0[46].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[47].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[47].Identifier := '.TJ_rTiskKorekceDisplayPR6';
	NodeIDs_0[47].IdentifierType := UAIdentifierType_String;
	(**********************************************************************)	
	
	NodeIDs_0[48].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[48].Identifier := '.TJ_iRaport7';
	NodeIDs_0[48].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[49].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[49].Identifier := '.TJ_iKorekceRaportu7';
	NodeIDs_0[49].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[50].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[50].Identifier := '.TJ_rTiskKorekceDisplayDReg7';
	NodeIDs_0[50].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[51].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[51].Identifier := '.TJ_rTiskKorekceDisplaySReg7';
	NodeIDs_0[51].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[52].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[52].Identifier := '.TJ_rTiskKorekceDisplayLF7';
	NodeIDs_0[52].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[53].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[53].Identifier := '.TJ_rTiskKorekceDisplayPF7';
	NodeIDs_0[53].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[54].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[54].Identifier := '.TJ_rTiskKorekceDisplayLR7';
	NodeIDs_0[54].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[55].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[55].Identifier := '.TJ_rTiskKorekceDisplayPR7';
	NodeIDs_0[55].IdentifierType := UAIdentifierType_String;
	(**********************************************************************)	
	
	NodeIDs_0[56].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[56].Identifier := '.TJ_iRaport8';
	NodeIDs_0[56].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[57].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[57].Identifier := '.TJ_iKorekceRaportu8';
	NodeIDs_0[57].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[58].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[58].Identifier := '.TJ_rTiskKorekceDisplayDReg8';
	NodeIDs_0[58].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[59].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[59].Identifier := '.TJ_rTiskKorekceDisplaySReg8';
	NodeIDs_0[59].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[60].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[60].Identifier := '.TJ_rTiskKorekceDisplayLF8';
	NodeIDs_0[60].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[61].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[61].Identifier := '.TJ_rTiskKorekceDisplayPF8';
	NodeIDs_0[61].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[62].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[62].Identifier := '.TJ_rTiskKorekceDisplayLR8';
	NodeIDs_0[62].IdentifierType := UAIdentifierType_String;
	
	NodeIDs_0[63].NamespaceIndex := NamespaceIndex;
	NodeIDs_0[63].Identifier := '.TJ_rTiskKorekceDisplayPR8';
	NodeIDs_0[63].IdentifierType := UAIdentifierType_String;
	

	Var := Var;
	
	
	Var0 := 0;
	Var1 := 0;	
	Var2 := 0;	
	Var3 := 0;	
	Var4 := 0;	
	Var5 := 0;	
	Var6 := 0;	
	Var7 := 0;	
	
	SessionConnectInfo_0.SecurityMsgMode := UASecurityMsgMode_None; //UASecurityMsgMode_BestAvailable; 
	SessionConnectInfo_0.SecurityPolicy := UASecurityPolicy_None; //UASecurityPolicy_BestAvailable; 
	SessionConnectInfo_0.TransportProfile := UATP_UATcp;
	SessionConnectInfo_0.UserIdentityToken.UserIdentityTokenType := UAUITT_Anonymous; //  UAUITT_Username;
	SessionConnectInfo_0.UserIdentityToken.TokenParam1 := 'admin';
	SessionConnectInfo_0.UserIdentityToken.TokenParam2 := 'password';
	SessionConnectInfo_0.SessionTimeout := T#1m;
	SessionConnectInfo_0.MonitorConnection := T#10s;
	
END_PROGRAM
      
PROGRAM _CYCLIC

	
(* State machine for OPC UA Client *)
			(* In case of ERROR *)
	IF ErrorID <> 0 THEN
		lastCase			:= caseClientReadList;
		caseClientReadList	:= ERROR;
	END_IF;
	
	CASE caseClientReadList OF

		WAIT:
			IF btnStart THEN
				btnStart							:= FALSE;
				caseClientReadList					:= UA_CONNECT;
			END_IF;
		
		UA_CONNECT:
			ExecuteConnect_0						:= TRUE;
			Connect;
			IF UA_Connect_0.Done THEN
				caseClientReadList					:= UA_GET_NAME_SPACE_INDEX;
				ExecuteConnect_0					:= FALSE;
			END_IF;
		
		UA_GET_NAME_SPACE_INDEX:
			ExecuteGetnamespaceindex_0				:= TRUE;
			GetNameSpaceIndex;
			IF UA_GetNamespaceIndex_0.Done THEN
				ExecuteGetnamespaceindex_0			:= FALSE;
				caseClientReadList					:= UA_NODE_GET_HANDLE_LIST;
			END_IF;
		
		UA_NODE_GET_HANDLE_LIST:
			ExecuteNodeGetHandleList_0				:= TRUE;
			NodeGetHandleList;
			IF UA_NodeGetHandleList_0.Done THEN
				ExecuteNodeGetHandleList_0			:= FALSE;
				caseClientReadList					:= UA_READ_LIST_ON;
			END_IF;
		
		UA_READ_LIST_ON:
			ExecuteReadList_0						:= TRUE;
			ReadList;
			IF UA_ReadList_0.Done THEN
				ExecuteReadList_0					:= FALSE;
				caseClientReadList					:= UA_READ_LIST_OFF;
			END_IF;
		
		UA_READ_LIST_OFF:
			ExecuteReadList_0						:= FALSE;
			ReadList;
			IF (NOT UA_ReadList_0.Busy) AND (NOT UA_ReadList_0.Done) THEN
				caseClientReadList					:= UA_READ_LIST_ON;
				IF btnStop THEN
					btnStop							:= FALSE;
					caseClientReadList				:= UA_NODE_RELEASE_HANDLE_LIST;
				END_IF;
			END_IF;

		
		UA_NODE_RELEASE_HANDLE_LIST:
			ExecuteNodeReleaseHandleList_0			:= TRUE;
			NodeReleaseList;
			IF UA_NodeReleaseHandleList_0.Done THEN
				ExecuteNodeReleaseHandleList_0		:= FALSE;
				caseClientReadList					:= UA_DISCONNECT;
			END_IF;
		
		UA_DISCONNECT:
			ExecuteDisconnect_0						:= TRUE;
			Disconnect;
			IF UA_Disconnect_0.Done THEN
				ExecuteDisconnect_0					:= FALSE;
				caseClientReadList					:= WAIT;
			END_IF;
		
		
		ERROR:
			ExecuteConnect_0						:= FALSE;
			ExecuteGetnamespaceindex_0				:= FALSE;
			ExecuteNodeGetHandleList_0				:= FALSE;
			ExecuteReadList_0						:= FALSE;
			ExecuteNodeReleaseHandleList_0			:= FALSE;
			ExecuteDisconnect_0						:= FALSE;
		
			Connect;
			GetNameSpaceIndex;
			NodeGetHandleList;
			ReadList;
			NodeReleaseList;
			Disconnect;
			IF btnStart THEN
				ErrorID								:= 0;
				caseClientReadList					:= WAIT;				
			END_IF;
		
		
		
	END_CASE;

	
END_PROGRAM
