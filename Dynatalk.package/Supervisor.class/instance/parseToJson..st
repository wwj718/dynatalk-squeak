converting
parseToJson: aString 
	| aJsonObject |
	aJsonObject := [aString parseAsJson]
				on: JsonInvalidError
				do: [:e | 
					"Transcript showln: '(Supervisor) ' , e printString."
					^ nil].
	"todo:  raise DynatalkMessageError"
	(self isValid: aJsonObject) ifTrue: [^ aJsonObject] ifFalse: [^ nil].
	