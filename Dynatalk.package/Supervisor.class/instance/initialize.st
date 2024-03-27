initialize-release
initialize
	
	broadcastFlag := '[broadcast]'.
	
	agents := Dictionary new.
	"self initAgents."
	
	space :=MQTTSpace new supervisor: self.
	
