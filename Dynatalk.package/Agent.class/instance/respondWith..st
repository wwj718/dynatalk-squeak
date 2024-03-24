public api
respondWith: value

	|aMessage aJsonString|
	aJsonString := JsonObject new at: 'value' put: value; asJsonString.
	aMessage := self generateMessage: currentMessage meta id to: currentMessage from actionName: responseActionName actionArgs: aJsonString.
	self send: aMessage.
	
	^ aMessage 