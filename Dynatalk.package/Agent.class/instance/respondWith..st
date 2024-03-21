sending
respondWith: value

	|template aMessage|
	template  := '{
					    "meta": {"parent_id": ""},
					    "to": "",
					    "action": {
					        "name": "",
					        "args": {
					            "value": ""
					        }
					    }
					}'.
	aMessage := Json readFrom: template readStream.
	aMessage meta at: 'parent_id' put: currentMessage meta id.
	aMessage at: 'to' put: currentMessage from.
	aMessage action at: 'name' put: responseActionName.
	aMessage action args at: 'value' put: value.
	self send: aMessage.
	
	^ aMessage 