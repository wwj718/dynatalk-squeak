as yet unclassified
parseToJson: aString 
	| aJsonObject |
	aJsonObject := [Json readFrom: aString readStream]
				on: JsonInvalidError
				do: [:e | 
					Transcript showln: '(Supervisor) ' , e printString.
					^ nil].
	^ aJsonObject