
ACTION NodeGetHandleList: 
	(* UA_NodeGetHandleList - get handles for required nodes *)

	UA_NodeGetHandleList_0(Execute := ExecuteNodeGetHandleList_0,
		ConnectionHdl := ConnectionHdl,
		NodeIDCount := nbVarToRead,
		NodeIDs := NodeIDs_0,
	Timeout := T#10s); //NodeIDCount := VM_MAX_NODEIDS_INDEXES
	IF (UA_NodeGetHandleList_0.Busy = 0) THEN
		ExecuteNodeGetHandleList_0 := 0;
		IF (UA_NodeGetHandleList_0.Done = 1) THEN
			ErrorID:= 0;
			NodeHdls := UA_NodeGetHandleList_0.NodeHdls;
		END_IF
		IF (UA_NodeGetHandleList_0.Error = 1) THEN
			ErrorID:= UA_NodeGetHandleList_0.ErrorID;
			NodeHdls[0] := 0;
		END_IF
	END_IF			

END_ACTION
