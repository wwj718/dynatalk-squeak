public api
respondWith: value

	|aMessage aJsonObject|
	aJsonObject := JsonObject new at: 'value' put: value.
	aMessage := self generateMessage: currentMessage meta id to: currentMessage from actionName: responseActionName actionArgs: aJsonObject.
	self send: aMessage.
	
	^ aMessage 