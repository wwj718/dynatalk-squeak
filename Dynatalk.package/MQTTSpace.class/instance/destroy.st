initialize-release
destroy
	mqttClient ifNotNil: [mqttClient disconnect].
	mqttClient := nil.
	supervisor := nil.
	