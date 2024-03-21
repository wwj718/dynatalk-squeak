initialize-release
initialize
	
	"sapce := MQTTSpace new."
	(MQTTSpace allInstances size > 1) 
		ifTrue: [self error: 'There should only be one space'].
	"Beeper beep."
	supervisor := Supervisor new.
	supervisor space: self.
	
	mqttClient := MQTTClient new.
	mqttClient username: 'dynalab' password: 'dynalab_rmq'.
	mqttClient connectTo: '127.0.0.1' port: 1883.
	mqttClient onTopic: '+' do: [:t :m|
	self debugLog: 'got topic: ', t, ' message: ', m.
	supervisor onTopic: t payload: m.
	].