as yet unclassified
generateMessage: parentID to: to actionName: action actionArgs: args

|messageString msgID parentIDString|

msgID := UUID  new makeUUID asString.
parentIDString := parentID ifNil: [''] ifNotNil: ['"parent_id": "', parentID, '",' ].
messageString := '
\{
    "meta": \{
	  {2}
        "id": "{1}"
    \},
    "to": "{3}",
    "action": \{
        "name": "{4}",
        "args": {5}
    \},
    "from": "{6}"
\}
' format: {msgID . parentIDString . to . action . args . id}. 

^ Json readFrom: messageString readStream.