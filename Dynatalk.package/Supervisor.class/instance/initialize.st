initialize-release
initialize
	
	agents := Dictionary new.
	self initAgents.
	
	space :=MQTTSpace new supervisor: self.
	
