as yet unclassified
testRespond_with 

|aMessage aString returnValue returnMessage|

aString  := '
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

returnValue := 'return value'.

aMessage := aString parseAsJson.

agent currentMessage: aMessage.

returnMessage := agent respond_with:  returnValue.

self assert: (returnMessage meta at: 'parent_id') = aMessage meta id.
self assert: (returnMessage to) = aMessage from.
self assert: (returnMessage action args value) = returnValue.

"send: modify the message"
self assert: (returnMessage from) = agent id.