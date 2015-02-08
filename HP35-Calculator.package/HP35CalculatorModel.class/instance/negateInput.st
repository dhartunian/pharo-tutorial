as yet unclassified
negateInput
	inputState = #exponent
		ifTrue: [ 
			(input includes: $e)
				ifTrue: [ self negateExponent ]]
		ifFalse: [ 
			input first = $-
				ifTrue: [ input := input allButFirst ] 
				ifFalse: [input := '-' , input ] ].
	self updateX 