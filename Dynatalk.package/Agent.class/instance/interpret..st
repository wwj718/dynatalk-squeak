evaluating
interpret: aMessage 
	"The object interprets the message it understands. 
	Only support keyword message"
	|aPromise|
	
	self debugLog: 'received message:', aMessage asJsonString .
	
	aMessage action name = responseActionName 
		ifTrue: [
			"Handle incoming response. Only useful when agent is used as callee"
			"process _promises"
			aPromise := (promises at: (aMessage meta at: 'parent_id')).
			aPromise ifNotNil: [aPromise resolveWith: (aMessage action args at: 'value')].
			]
		ifFalse: [
			aMessage action name = errorActionName 
				ifTrue: [
					"Handle incoming error.Only useful when agent is used as callee"
					aPromise := (promises at: (aMessage meta at: 'parent_id')).
					aPromise ifNotNil: [aPromise rejectWith:  (aMessage action args at: 'error')].
					] 
				ifFalse: [
					"the caller requests the agent to execute the command"
					self commit: aMessage.].
		].
	
	
	
	
	