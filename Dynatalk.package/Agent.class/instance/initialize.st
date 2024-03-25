initialize-release
initialize
	responseActionName := '[response]'.
	errorActionName := '[error]'.
	
	id := self class asString .
	promises := Dictionary new.
	