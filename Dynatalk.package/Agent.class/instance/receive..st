as yet unclassified
receive: aMessage
	currentMessage := aMessage.
	Transcript  showln: (self interpret: aMessage).