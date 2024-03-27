public api
helpRespondWith: value
	"Add help flag in meta"
	
	|aMessage aJsonObject|
	aJsonObject := JsonObject new at: 'value' put: value.
	aMessage := self generateMessage: currentMessage meta id to: currentMessage from actionName: responseActionName actionArgs: aJsonObject.
	aMessage meta at: 'help' put: true. 
	"aMessage meta at: 'timeStamp' put: DateAndTime now. "
	self send: aMessage.
	
	^ aMessage 