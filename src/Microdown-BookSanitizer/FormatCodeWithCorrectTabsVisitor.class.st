Class {
	#name : 'FormatCodeWithCorrectTabsVisitor',
	#superclass : 'BookSanitizerVisitor',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'visiting' }
FormatCodeWithCorrectTabsVisitor >> visitCode: aMicCodeBlock [

	aMicCodeBlock code: (MicCodeCorrectTabs new sanitize: aMicCodeBlock code)
]
