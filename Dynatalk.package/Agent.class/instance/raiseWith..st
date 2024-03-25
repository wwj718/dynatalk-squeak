public api
raiseWith: error

	|aMessage aJsonObject|
	aJsonObject := JsonObject new at: 'error' put: error asString.
	aMessage := self generateMessage: currentMessage meta id to: currentMessage from actionName: errorActionName actionArgs: aJsonObject.
	self send: aMessage.
	
	^ aMessage 