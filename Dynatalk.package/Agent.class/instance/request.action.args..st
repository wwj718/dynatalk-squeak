public api
request: anAgentName action: actionName args: args
|parentID aMessage|

parentID := nil.
aMessage := self generateMessage: parentID to: anAgentName actionName: actionName actionArgs: args.

^ self request: aMessage timeout: 3.