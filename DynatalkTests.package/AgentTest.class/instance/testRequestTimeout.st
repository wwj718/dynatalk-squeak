as yet unclassified
testRequestTimeout

|aMessage aJsonObject aPromise|


aMessage:='
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

aJsonObject := Json readFrom: aMessage readStream.

aPromise := agent request: aJsonObject timeout: 3.
aPromise  then: [:v|  agent debugLog: 'then:', v] ifRejected: [:e | agent debugLog: 'reject: ', e].
