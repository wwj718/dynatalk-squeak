sending
send: aMessage
	|routing_key|
	routing_key := aMessage to.
	space ifNotNil: [space publishTopic: routing_key message: aMessage asJsonString ].