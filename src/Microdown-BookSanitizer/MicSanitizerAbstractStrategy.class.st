Class {
	#name : 'MicSanitizerAbstractStrategy',
	#superclass : 'Object',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'private' }
MicSanitizerAbstractStrategy >> sanitize: aBook [
	^ self subclassResponsibility.
]
