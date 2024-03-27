evaluating
interpret: aMessage 
	"The object interprets the message it understands. 
	Only support keyword message"
	|aPromise|
	
	self debugLog: 'received message:', aMessage asJsonString .
	
	aMessage action name = responseActionName 
		ifTrue: [
			"Handle incoming response. Only useful when agent is used as callee"
			"process help response"
			(aMessage action args value class = JsonObject and: [aMessage action args value help class = JsonObject])
				ifTrue: [availableActions at: aMessage from put: aMessage action args value help].
			
			"process _promises"
			aPromise := (promises at: (aMessage meta at: 'parent_id') ifAbsent: []).
			aPromise ifNotNil: [aPromise resolveWith: (aMessage action args at: 'value')].
			]
		ifFalse: [
			aMessage action name = errorActionName 
				ifTrue: [
					"Handle incoming error.Only useful when agent is used as callee"
					aPromise := (promises at: (aMessage meta at: 'parent_id')  ifAbsent: []).
					aPromise ifNotNil: [aPromise rejectWith:  (aMessage action args at: 'error')].
					] 
				ifFalse: [
					"the caller requests the agent to execute the command"
					self commit: aMessage.].
		].
	
	
	
	
	