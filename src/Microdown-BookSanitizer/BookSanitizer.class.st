Class {
	#name : 'BookSanitizer',
	#superclass : 'Object',
	#instVars : [
		'strategies'
	],
	#classInstVars : [
		'strategies'
	],
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'as yet unclassified' }
BookSanitizer class >> initializeOrthography [
	self shouldBeImplemented.
]

{ #category : 'as yet unclassified' }
BookSanitizer class >> orthography [

	| aBookSanitizer |
	aBookSanitizer := BookSanitizer new.

	^ aBookSanitizer
]

{ #category : 'initialization' }
BookSanitizer >> initialize [
	super initialize.
	strategies := OrderedCollection new.
]

{ #category : 'initialization' }
BookSanitizer >> sanitize: aBook [

	^ aBook
]
