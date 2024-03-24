public api
request: anAgentName action: actionName args: args
|parentID aMessage|

parentID := nil.
aMessage := self generateMessage: parentID to: anAgentName actionName: actionName actionArgs: args asJsonString.

^ self request: aMessage timeout: 3.