accessing
getAgent: agentID

	^ agents at: agentID ifAbsent: [].