sending
send: aMessage

	aMessage at: 'from' put: id.
	aMessage at: 'meta' ifAbsent: [aMessage at: 'meta' put: JsonObject new]. 
	"Friendly for unit testing. todo: only for debugging ?"
	aMessage meta at: 'id' ifAbsent: [aMessage meta at: 'id' put: UUID  new makeUUID asString].
	supervisor ifNotNil: [supervisor send: aMessage].
	^ aMessage meta id.