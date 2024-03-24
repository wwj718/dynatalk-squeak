initialize-release
initialize
	"Make sure there is only one mqtt client"
	|mqttEnv|
	MQTTClient allInstances do: [:client | client disconnect ].
	
	
	mqttEnv := DynatalkEnv MQTTEnv parseAsJson.
	mqttClient := MQTTClient new.
	mqttClient username: mqttEnv username password: mqttEnv password.
	mqttClient connectTo: mqttEnv host port: mqttEnv port.
	mqttClient onTopic: '+' do: [:t :m|
	self debugLog: 'got topic: ', t, ' message: ', m.
	supervisor ifNotNil: [supervisor onTopic: t payload: m].
	].