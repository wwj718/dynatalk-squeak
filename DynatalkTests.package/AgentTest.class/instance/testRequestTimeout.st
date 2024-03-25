as yet unclassified
testRequestTimeout

|aJsonString aJsonObject aPromise|


aJsonString :='
{
  "meta": {
        "id": "testTimeout"
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

aPromise := agent request: aJsonObject timeout: 3.
aPromise  then: [:v|  agent debugLog: 'then:', v] ifRejected: [:e | agent debugLog: 'reject: ', e].
