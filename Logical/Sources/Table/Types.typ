
TYPE
	TableStruct : 	STRUCT 
		TimeStamp : ARRAY[0..19]OF STRING[80] := ['22:04:43',19('')];
		Message : ARRAY[0..19]OF STRING[256] := ['Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,',19('')];
		State : ARRAY[0..19]OF BOOL;
	END_STRUCT;
END_TYPE
