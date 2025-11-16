Class {
	#name : 'MicHeaderSanitizerTest',
	#superclass : 'TestCase',
	#category : 'Microdown-BookSanitizer-Tests',
	#package : 'Microdown-BookSanitizer-Tests'
}

{ #category : 'tests' }
MicHeaderSanitizerTest >> test [

	| doc strategy|
	doc := Microdown parse:
		       'This Header Have all Letters in Maj'.
		
	strategy := MicHeaderSanitizer new.
	strategy lowerWordStrategy: doc.
	
		
	
]
