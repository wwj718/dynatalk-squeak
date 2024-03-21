as yet unclassified
onTopic: topicString payload: aPayload 
	"Note that the message payload is not in any way guaranteed to be a String"
	| message agent |
	"self assert: aPayload isString."
	message := self parseToJson: aPayload asString  .
	"nil if message is invalid"
	message
		ifNotNil: [Transcript showln: '(Supervisor) valid message: ' , message.
			agent := agents
						at: message to
						ifAbsent: [].
			agent
				ifNotNil: [agent receive: message].
		]