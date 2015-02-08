as yet unclassified
displayString
	^ self hasError
			ifTrue: [ error class name asUppercase ]
			ifFalse: [ 
				inputState = #new
					ifTrue: [ 
						core x abs >= 1e10
							ifTrue: [ core x: core x asFloat ].
						core x printString asUppercase ] 
					ifFalse: [self inputString] ]