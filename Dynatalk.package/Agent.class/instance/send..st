sending
send: aMessage

	
	aMessage at: 'from' put: id.
	aMessage meta at: 'id' put: UUID  new makeUUID asString.
	
	supervisor ifNotNil: [supervisor send: aMessage].
	
	^ aMessage meta id.