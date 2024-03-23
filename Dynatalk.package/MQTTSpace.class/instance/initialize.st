initialize-release
initialize
	"Make sure there is only one mqtt client"
	MQTTClient allInstances do: [:client | client disconnect ].
	
	mqttClient := MQTTClient new.
	mqttClient username: 'dynalab' password: 'dynalab_rmq'.
	mqttClient connectTo: '127.0.0.1' port: 1883.
	mqttClient onTopic: '+' do: [:t :m|
	self debugLog: 'got topic: ', t, ' message: ', m.
	supervisor ifNotNil: [supervisor onTopic: t payload: m].
	].