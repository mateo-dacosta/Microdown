Class {
	#name : 'MicAbstractSanitizer',
	#superclass : 'Object',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'private' }
MicAbstractSanitizer >> sanitize: aBook [
	^ self subclassResponsibility.
]
