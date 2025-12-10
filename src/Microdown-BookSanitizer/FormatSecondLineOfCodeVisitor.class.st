Class {
	#name : 'FormatSecondLineOfCodeVisitor',
	#superclass : 'BookSanitizerVisitor',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'visiting' }
FormatSecondLineOfCodeVisitor >> visitCode: aMicCodeBlock [

	aMicCodeBlock code: (MicCodeCorrectSecondLine new sanitize: aMicCodeBlock code)
]
