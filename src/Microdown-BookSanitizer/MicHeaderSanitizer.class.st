Class {
	#name : 'MicHeaderSanitizer',
	#superclass : 'Object',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'as yet unclassified' }
MicHeaderSanitizer >> lowerWordStrategy: aHeaderText [

	| spliText rule |
	spliText := aHeaderText findTokens: ' '.


	rule := MicRuleLowercaseHeaderStrategy new.
	rule
		checkRest: spliText
		of: MicHeaderBlock new
		rule: MicHeaderCapitalizationRule new
]
