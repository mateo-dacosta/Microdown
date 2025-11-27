Class {
	#name : 'MicHeaderFirstLetterCapitalizeRule',
	#superclass : 'MicRule',
	#category : 'Microdown-Rules-Capitalization',
	#package : 'Microdown-Rules',
	#tag : 'Capitalization'
}

{ #category : 'as yet unclassified' }
MicHeaderFirstLetterCapitalizeRule >> matchingPattern: aWord [

	aWord ifEmpty: [ ^ false ].
	^ aWord first isUppercase
]
