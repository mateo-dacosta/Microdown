Class {
	#name : 'MicHeaderFirstLetterCapitalizer',
	#superclass : 'MicAbstractSanitizer',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'private' }
MicHeaderFirstLetterCapitalizer >> sanitize: aText [

	| words rule aLocalText stream |
	aLocalText := aText asLowercase.
	rule := MicHeaderFirstLetterCapitalizeRule new.

	words := aLocalText findTokens: ' '.


	words size > 0 ifTrue: [
		words first ifNotEmpty: [ words at: 1 put: words first capitalized ] ].

	^ self constructString: words.
]
