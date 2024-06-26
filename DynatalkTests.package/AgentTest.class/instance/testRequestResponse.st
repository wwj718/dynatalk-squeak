as yet unclassified
testRequestResponse

|aJsonString aJsonObject aPromise response|

aJsonString :='
{
  "meta": {
        "id": "testResponse"
  },
  "to": "LivelyDemoAgent",
  "action": {
    "name": "echo",
    "args": {
      "content": "hello world"
    }
  }
}
'.

aJsonObject := aJsonString parseAsJson.

aPromise := agent request: aJsonObject.
aPromise  then: [:v|  agent debugLog: 'then:', v] ifRejected: [:e | self error: 'reject:', e].

"resolve promise"

response := '
{
    "meta": {
        "parent_id": "testResponse",
        "id": "d5c7b5f5-f06b-42bd-8775-f833c82ce869"
    },
    "to": "Agent",
    "action": {
        "name": "[response]",
        "args": {
            "value": "hello world"
        }
    },
    "from": "LivelyDemoAgent"
}
'.

agent receive: response parseAsJson .

