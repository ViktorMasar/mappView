
ACTION NodeReleaseList: 
	(* UA_NodeReleaseHandleList - release the handles for the nodes *)
	
	UA_NodeReleaseHandleList_0(Execute := ExecuteNodeReleaseHandleList_0,
		ConnectionHdl := ConnectionHdl,
		NodeHdlCount := nbVarToRead,
		NodeHdls := NodeHdls,
		Timeout := T#10s);
	IF (UA_NodeReleaseHandleList_0.Busy = 0) THEN
		ExecuteNodeReleaseHandleList_0 := 0;
		IF (UA_NodeReleaseHandleList_0.Done = 1) THEN
			ErrorID:= 0;
			FOR i:= 0 TO VM_MAX_NODEIDS_INDEXES DO
				NodeHdls[i]	:= 0;
			END_FOR;
			//			NodeHdls[0] := 0;
			//			NodeHdls[1] := 0;
			//			NodeHdls[2] := 0;
		END_IF
		IF (UA_NodeReleaseHandleList_0.Error = 1) THEN
			ErrorID:= UA_NodeReleaseHandleList_0.ErrorID;
		END_IF
	END_IF
END_ACTION
