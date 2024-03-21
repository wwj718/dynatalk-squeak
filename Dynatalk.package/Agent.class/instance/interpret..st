as yet unclassified
interpret: aMessage 
	aMessage action name = 'echo'
		ifTrue: [^ self respondWith:  aMessage action args content.]
		ifFalse: [^ self raiseWith: 'Message Not Understood: ', aMessage to, '>>', aMessage action name.]