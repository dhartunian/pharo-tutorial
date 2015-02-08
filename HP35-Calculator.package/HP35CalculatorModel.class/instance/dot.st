as yet unclassified
dot
	inputState = #new
		ifTrue: [ 
			self autoEnter.
			input := '0.'.
			inputState := #fraction.
			^ self updateXEnableAutoEnter ].
	inputState = #integer
		ifTrue: [ 
			input := input , '.'.
			inputState := #fraction.
			^ self updateX ]