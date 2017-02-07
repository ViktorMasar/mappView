
ACTION Connect: 
	(* UA_Connect - establish connection to OPC-UA Server *)
	UA_Connect_0(Execute := ExecuteConnect_0,
	ServerEndpointUrl := 'opc.tcp://172.025.015.066:4840', //'opc.tcp://172.025.015.066:4840'
	SessionConnectInfo := SessionConnectInfo_0,
	Timeout := T#10s);
	IF (UA_Connect_0.Busy = 0) THEN
		ExecuteConnect_0 := 0;
		IF (UA_Connect_0.Done = 1) THEN
			ErrorID := 0;
			ConnectionHdl := UA_Connect_0.ConnectionHdl;
		END_IF
		IF (UA_Connect_0.Error = 1) THEN
			ErrorID := UA_Connect_0.ErrorID;
			ConnectionHdl := 0;
		END_IF
	END_IF	

END_ACTION
