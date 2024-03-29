initialize-release
initialize
	
	broadcastFlag := '[broadcast]'.
	
	monitor := MonitorAgent new.
	monitor supervisor: self.
	
	agents := Dictionary new.
	"self initAgents."
	
	space :=MQTTSpace new supervisor: self.
	
