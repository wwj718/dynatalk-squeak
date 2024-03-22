sending
request: aMessage 
	"return a promise
	ref: AgentTest testRequestResponse 
		aPromise  then: [:v|  self debugLog: 'then:', v] ifRejected: [:e | self debugLog: 'reject:', e].
	"
	^ self request: aMessage timeout: 3.

