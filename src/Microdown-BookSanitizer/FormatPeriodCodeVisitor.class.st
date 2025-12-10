Class {
	#name : 'FormatPeriodCodeVisitor',
	#superclass : 'BookSanitizerVisitor',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'visiting' }
FormatPeriodCodeVisitor >> visitCode: aMicCodeBlock [

	aMicCodeBlock code: (MicCodeEndWithoutPeriod new sanitize: aMicCodeBlock code)
]
