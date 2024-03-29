as yet unclassified
receive: aPayload
	"String?"
	
	self recording ifTrue: [self addMessage: aPayload asString .]
	