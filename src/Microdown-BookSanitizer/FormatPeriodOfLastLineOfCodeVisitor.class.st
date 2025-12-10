Class {
	#name : 'FormatPeriodOfLastLineOfCodeVisitor',
	#superclass : 'BookSanitizerVisitor',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'visiting' }
FormatPeriodOfLastLineOfCodeVisitor >> visitCode: aMicCodeBlock [

	aMicCodeBlock code: (MicCodeEndWithoutPeriod new sanitize: aMicCodeBlock code)
]
