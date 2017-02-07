
ACTION Disconnect: 
	(* UA_Disconnect - disconnect from OPC-UA Server *)
	
	UA_Disconnect_0(Execute := ExecuteDisconnect_0,
		ConnectionHdl := ConnectionHdl,
		Timeout := T#10s);
	IF (UA_Disconnect_0.Busy = 0) THEN
		ExecuteDisconnect_0 := 0;
		IF (UA_Disconnect_0.Done = 1) THEN
			ErrorID:= 0;
			ConnectionHdl := 0;
		END_IF
		IF (UA_Disconnect_0.Error = 1) THEN 
			ErrorID:= UA_Disconnect_0.ErrorID;
		END_IF
	END_IF
END_ACTION
