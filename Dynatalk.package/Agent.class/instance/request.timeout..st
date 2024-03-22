sending
request: aMessage timeout: aNumber 
	| messageID p |
	messageID := self send: aMessage.
	p := Promise new.
	promises at: messageID put: p.
	"Use fork to support timeout"
	[(Delay forSeconds: aNumber) wait.
	(p isResolved or: p isRejected) not
		ifTrue: [p rejectWith: 'timeout(' , aNumber , ')']] fork.
	^ p