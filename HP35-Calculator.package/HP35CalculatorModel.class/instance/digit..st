as yet unclassified
digit: digit
	inputState = #new
		ifTrue: [ 
			self autoEnter.
			input := digit asCharacterDigit asString.
			inputState := #integer.
			^ self updateXEnableAutoEnter  ].
	(inputState = #integer) | (inputState = #fraction)
		ifTrue: [ 
			input := input, digit asCharacterDigit asString ].
	inputState = #exponent
		ifTrue: [ 
			(input includes: $e)
				ifFalse: [ input := input , 'e' ].
			input := input , digit asCharacterDigit asString ].
	self updateX