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
BookSanitizerVisitor >> addVisitor: aVisitor [

	visitors add: aVisitor .
]

{ #category : 'visiting' }
BookSanitizerVisitor >> removeVisitor: aVisitor [

	visitors remove: aVisitor .
]

{ #category : 'visiting' }
BookSanitizerVisitor >> visitHeader: aHeader [

	visitors do: [ :visitor | visitor visitHeader: aHeader ]
]

{ #category : 'visiting' }
BookSanitizerVisitor >> visitParagraph: aParagraph [

	visitors do: [ :visitor | visitor visitHeader: aParagraph ]
]
