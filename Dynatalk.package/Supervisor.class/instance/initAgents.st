initialize-release
initAgents
	|agent|
	"for service"
	
	agent := SqueakDemoAgent new id: 'SqueakDemoAgent'.
	agents at: agent id put: agent.
	agent supervisor: self.
	
	"agent debugging ifTrue: [agent inspect.]."
	