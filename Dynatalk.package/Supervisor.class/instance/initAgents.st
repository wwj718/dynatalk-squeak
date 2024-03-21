initialize-release
initAgents
	|agentId agent|
	agentId := #SqueakDemoAgent.
	agent := SqueakDemoAgent new.
	agent id: agentId supervisor: self .
	agents at: agentId put: agent.