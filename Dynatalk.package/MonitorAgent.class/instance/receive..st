as yet unclassified
receive: aMessage
	currentMessage := aMessage.
	
	self recording ifTrue: [self addMessage: aMessage.]
	