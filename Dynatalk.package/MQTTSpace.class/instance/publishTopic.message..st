as yet unclassified
publishTopic: aTopic message: msgString
	" sapce publishTopic:'squeak' message:'hello world' "
	self debugLog: 'publish: topic: ', aTopic,  ' message: ', msgString.
	mqttClient publishTopic: aTopic message: msgString qos: 1
