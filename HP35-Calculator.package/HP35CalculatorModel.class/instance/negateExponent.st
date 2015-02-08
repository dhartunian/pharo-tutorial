as yet unclassified
negateExponent
	| exponent parts mantisse |
	parts := $e split: input.
	mantisse := parts first.
	exponent := parts second.
	exponent first = $-
		ifTrue: [ exponent := exponent allButFirst ]
		ifFalse: [ exponent := '-' , exponent ].
	input := mantisse, 'e', exponent