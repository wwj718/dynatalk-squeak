public api
raiseWith: error

	|aMessage aJsonString|
	aJsonString := JsonObject new at: 'error' put: error asString ; asJsonString.
	aMessage := self generateMessage: currentMessage meta id to: currentMessage from actionName: responseActionName actionArgs: aJsonString.
	self send: aMessage.
	
	^ aMessage 