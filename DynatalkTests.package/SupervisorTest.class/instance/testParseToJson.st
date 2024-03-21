tests
testParseToJson
	"self assert:  1=2."
	|aJsonString aJsonString2 aJsonObject|
	
	aJsonString := '
{
  "meta": {
    "id": "817411a0-cdd3-4372-a8d5-361e17440301"
  },
  "from": "User",
  "to": "SqueakDemoAgent",
  "action": {
    "name": "echo",
    "args": {
      "content": "hi"
    }
  }
}
'.
	
aJsonString2:= '
{
  "meta": {
    "id": "817411a0-cdd3-4372-a8d5-361e17440301"
  },
  "to": "SqueakDemoAgent",
  "action": {
    "name": "echo",
    "args": {
      "content": "hi"
    }
  }
}
'.


	aJsonObject := supervisor parseToJson: aJsonString.
	self assert: (aJsonObject action name = 'echo').
	
	"without from"
	aJsonObject := supervisor parseToJson: aJsonString2.
	self assert: (aJsonObject  = nil).
	
	aJsonObject := supervisor parseToJson: 'hello'.
	self assert: aJsonObject = nil.
