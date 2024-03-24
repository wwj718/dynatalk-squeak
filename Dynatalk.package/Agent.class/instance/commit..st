evaluating
commit: aMessage 
	"Invokes the action method"
	| selector args |
	selector := aMessage action name asSymbol.
	args := aMessage action args. "array"
	[(Message new setSelector: selector arguments: args)
		sentTo: self]
		on: Error
		do: [:e | 
			| error |
			error := e asString.
			self debugLog: error.
			self raiseWith: error]