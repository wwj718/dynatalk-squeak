tests
testParseToJson
	"self assert:  1=2."
	|aJsonObject|
	aJsonObject := supervisor parseToJson: '{"a":1}'.
	self assert: (aJsonObject a = 1 ).
	self assert: (aJsonObject b = nil).
	
	aJsonObject := supervisor parseToJson: 'hello'.
	self assert: aJsonObject = nil.
