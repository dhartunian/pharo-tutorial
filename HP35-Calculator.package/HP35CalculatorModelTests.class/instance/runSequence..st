as yet unclassified
runSequence: script
	script pairsDo: [ :key :result |
		calculator perform: key.
		self
			assert: calculator displayString equals: result asString asUppercase ]