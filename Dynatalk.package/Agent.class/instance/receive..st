receiving
receive: aMessage
	currentMessage := aMessage.
	"Handle errors to avoid MQTT onTopic:payload:  corruption"
	[self interpret: aMessage] on: Error do: [:e| Transcript showln: e printString].