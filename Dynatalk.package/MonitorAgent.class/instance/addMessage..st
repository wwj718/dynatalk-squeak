as yet unclassified
addMessage: aMessage

|max|

max := 1000.

messages size > max 
	ifTrue: [self Transcript showln:  '(MonitorAgent) Message log space is full'] 
	ifFalse: [messages addLast: aMessage.].

