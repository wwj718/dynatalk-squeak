as yet unclassified
xtestSend

"x : ignore it"

|aMessage aJsonObject|

self halt.

aMessage:='
{
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

self send: aJsonObject.