as yet unclassified
publishTopic: aTopic message: msgString
	" sapce publishTopic:'squeak' message:'hello world' "
	mqttClient publishTopic: aTopic message: msgString qos: 1
