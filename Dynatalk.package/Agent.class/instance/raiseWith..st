sending
raiseWith: error

	|template aMessage|
	template  := '{
					    "meta": {"parent_id": ""},
					    "to": "",
					    "action": {
					        "name": "",
					        "args": {
					            "error": ""
					        }
					    }
					}'.
	aMessage := Json readFrom: template readStream.
	aMessage meta at: 'parent_id' put: currentMessage meta id.
	aMessage at: 'to' put: currentMessage from.
	aMessage action at: 'name' put: errorActionName.
	aMessage action args at: 'error' put: error asString.
	self send: aMessage.
	
	^ aMessage 