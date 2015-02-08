as yet unclassified
inputString
	| inputString |
	inputString := input asUppercase.
	(inputState = #exponent and: [ (input includes: $e) not ])
		ifTrue: [ inputString := inputString , 'E' ].
	^ inputString