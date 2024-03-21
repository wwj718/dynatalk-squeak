testing
isValid: aMessage
	^ (aMessage to isNil not) and: (aMessage from isNil not) and: (aMessage action isNil not)
	