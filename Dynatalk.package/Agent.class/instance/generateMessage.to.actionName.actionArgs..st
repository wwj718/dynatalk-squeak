as yet unclassified
generateMessage: parentID to: to actionName: action actionArgs: args

|messageString aMessage|

messageString := '
{
    "meta": {
        "id": ""
    },
    "from": "",
    "to": "",
    "action": {
        "name": "",
        "args": ""
    }
}
'.

aMessage := messageString parseAsJson.

parentID ifNotNil: [aMessage meta at: 'parent_id' put: parentID].
aMessage meta at: 'id' put: UUID new makeUUID asString.
aMessage meta at: 'to' put: to.
aMessage action at: 'name' put: action.
aMessage action at: 'args' put: args.

^ aMessage.