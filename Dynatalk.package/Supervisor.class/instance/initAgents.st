initialize-release
initAgents
	|agentId agent|
	"for service"
	agentId := #SqueakDemoAgent.
	agent := SqueakDemoAgent new.
	agent id: agentId supervisor: self .
	agents at: agentId put: agent.
	
	agent debugging ifTrue: [agent inspect.].
	