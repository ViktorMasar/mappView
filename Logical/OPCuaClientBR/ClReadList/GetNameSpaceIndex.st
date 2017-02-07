
ACTION GetNameSpaceIndex: 
	(* UA_GetNamespaceIndex - read index of required namespace for PVs *)
	(* puvodne... NamespaceUri := 'urn:B&R/pv/' *)
	
	UA_GetNamespaceIndex_0(Execute := ExecuteGetnamespaceindex_0,
		ConnectionHdl := ConnectionHdl,
		NamespaceUri := 'http://www.boschrexroth.com/IndraLogic',
	Timeout := T#5s); //'urn:B&R/pv/' 
	IF (UA_GetNamespaceIndex_0.Busy = 0) THEN
		ExecuteGetnamespaceindex_0 := 0;
		IF (UA_GetNamespaceIndex_0.Done = 1) THEN
			ErrorID:= 0;
			NamespaceIndex := UA_GetNamespaceIndex_0.NamespaceIndex;
		END_IF
		IF (UA_GetNamespaceIndex_0.Error = 1) THEN
			ErrorID:= UA_GetNamespaceIndex_0.ErrorID;
			NamespaceIndex := 0;
		END_IF
	END_IF	

END_ACTION
