as yet unclassified
negate
	inputState = #new
		ifTrue: [ core negate ]
		ifFalse: [ self negateInput ]