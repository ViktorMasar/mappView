
PROGRAM _CYCLIC
	(* Insert code here *)
	graphValue[2] := 60*SIN(value)+	70;
	
	
	IF i < 628 THEN
	
		i := i + 1;
			value := i * 0.1;
	ELSE
		i := 0;
	END_IF
	
END_PROGRAM
