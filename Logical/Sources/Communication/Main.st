
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	Temperature := Temperature + 1;
	Speed		:= Speed + 10;
	
	IF( Temperature > 100)THEN
		Temperature := 0;
	END_IF
	
	
	IF(Speed > 5000)THEN
		Speed := -5000;
	END_IF
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

