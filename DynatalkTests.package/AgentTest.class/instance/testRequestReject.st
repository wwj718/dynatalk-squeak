as yet unclassified
testRequestReject

|aJsonString aJsonObject aPromise errorString|


aJsonString :='
{
  "meta": {
        "id": "testError"
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
aPromise  then: [:v|  agent debugLog: 'then:', v] ifRejected: [:e | agent debugLog: 'reject: ', e].

"reject promise"
errorString := '
{
    "meta": {
        "parent_id": "testError",
        "id": "d5c7b5f5-f06b-42bd-8775-f833c82ce869"
    },
    "to": "Agent",
    "action": {
        "name": "[error]",
        "args": {
            "error": "LivelyDemoAgent: raised exception"
        }
    },
    "from": "LivelyDemoAgent"
}
'.

agent receive: errorString parseAsJson.
