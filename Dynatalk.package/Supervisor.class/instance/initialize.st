initialize-release
initialize
	
	agents := Dictionary new.
	self initAgents.
	
	space :=MQTTSpace new.
	space supervisor: self.
	
