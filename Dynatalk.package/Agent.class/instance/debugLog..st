debugging
debugLog: aString
	"Show which object(here is space) output the message"
	self debugging  ifTrue: [Transcript showln: '(', id, ') ' , aString].