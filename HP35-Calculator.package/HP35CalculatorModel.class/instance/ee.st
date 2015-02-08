as yet unclassified
ee
	inputState = #new
		ifTrue: [ 
			self autoEnter.
			input := '1'.
			inputState := #exponent.
			^ self updateXEnableAutoEnter ].
	inputState = #integer
		ifTrue: [ 
			self autoEnter.
			inputState := #exponent.
			^ self updateX ].
	inputState = #fraction
		ifTrue: [ 
			(input endsWith: '.')
				ifTrue: [ input := input , '0' ].
			inputState := #exponent.
			^ self updateX ]