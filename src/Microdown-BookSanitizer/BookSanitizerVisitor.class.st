Class {
	#name : 'BookSanitizerVisitor',
	#superclass : 'MicrodownVisitor',
	#instVars : [
		'visitors'
	],
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'visiting' }
BookSanitizerVisitor >> visitHeader: aHeader [

	visitors do: [ :visitor | visitor visitHeader: aHeader ]
]
