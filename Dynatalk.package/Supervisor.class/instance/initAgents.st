initialize-release
initAgents
	|agent|
	"as services"
	
	agent := SqueakDemoAgent new id: 'SqueakDemoAgent'.
	self addAgent: agent
	
	"agent debugging ifTrue: [agent inspect.]."
	