as yet unclassified
interpret: aMessage 
	"The object interprets the message it understands. 
	Only support keyword message"
	
	self debugLog: 'received message:', aMessage asJsonString .
	({responseActionName . errorActionName} includes: aMessage action name) 
		ifTrue: [
			"Handle incoming responses. Only useful when agent is used as callee"
			
			] 
		ifFalse: [
			"the caller requests the agent to execute the command"
			self commit: aMessage.
			]
	
	
	
	
	