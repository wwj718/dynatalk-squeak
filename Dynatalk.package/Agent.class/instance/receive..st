receiving
receive: aMessage
	currentMessage := aMessage.
	Transcript  showln: (self interpret: aMessage).