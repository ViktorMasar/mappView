
ACTION ReadList: 
	(* UA_ReadList - read required nodes from OPC-UA Server and write it in local plc variables *)

//	IF ((vmWasDone = 1) AND (UA_ReadList_0.Done = 0)) THEN
//		ExecuteReadList_0	:= TRUE;
//		vmWasDone			:= FALSE;
//		vmReadList_0Counter	:= vmReadList_0Counter + 1;
//	END_IF;

	UA_ReadList_0(Execute := ExecuteReadList_0,
		ConnectionHdl := ConnectionHdl,
		NodeHdlCount := nbVarToRead,
		NodeHdls := NodeHdls,
		NodeAddInfo := NodeAddInfo_0,
		Timeout := T#10s,
	Variables := Variables_Rd0); //NodeHdlCount := VM_MAX_NODEIDS_INDEXES
	IF (UA_ReadList_0.Busy = 0) THEN
		ExecuteReadList_0 := 0;
		IF (UA_ReadList_0.Done = 1) THEN
			ErrorID		:= 0;
//			vmWasDone	:= TRUE;
		END_IF
		IF (UA_ReadList_0.Error = 1) THEN
			ErrorID:= UA_ReadList_0.ErrorID;
		END_IF
	END_IF
END_ACTION
