Class {
	#name : 'BookSanitizerTest',
	#superclass : 'TestCase',
	#category : 'Microdown-BookSanitizer-Tests',
	#package : 'Microdown-BookSanitizer-Tests'
}

{ #category : 'tests' }
BookSanitizerTest >> testOrthographySanitize [

	| aMicRootBlock aBookSanitize aBook |
	aMicRootBlock := MicRootBlock new.

	aBookSanitize := BookSanitizer orthography.

	aBook := aBookSanitize sanitize: aMicRootBlock.
	
	self assert: aBook className equals: aMicRootBlock className.
]
