initialize-release
initialize
	responseActionName := '[response]'.
	errorActionName := '[error]'.
	broadcastFlag := '[broadcast]'.
	
	id := self class asString .
	promises := Dictionary new.
	availableActions := Dictionary new.
	