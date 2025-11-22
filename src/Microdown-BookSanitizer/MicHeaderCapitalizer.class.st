Class {
	#name : 'MicHeaderCapitalizer',
	#superclass : 'MicAbstractSanitizer',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'private' }
MicHeaderCapitalizer >> sanitize: aText [

	| anExceptionList aWordList result stream |
	anExceptionList := MicHeaderCapitalizationRule new
		                   defaultTextThatShouldNotBeCapitalized.
	aWordList := aText findTokens: ' '.

	result := aWordList collect: [ :w |
			          | lower |
			          lower := w asLowercase.
			          (anExceptionList includes: lower)
				          ifTrue: [ lower ]
				          ifFalse: [
				          w capitalized ] ].

	stream := String new writeStream.
	result
		do: [ :w | stream nextPutAll: w ]
		separatedBy: [ stream nextPut: Character space ].
	^ stream contents
]
