Class {
	#name : 'MicRuleTest',
	#superclass : 'TestCase',
	#category : 'Microdown-Rules-Others',
	#package : 'Microdown-Rules',
	#tag : 'Others'
}

{ #category : 'tests' }
MicRuleTest >> testGoodWordFor [

	| r |
	r := MicMisusedVocabularyRule new.
	r name: 'UseInstead'.
	r pairs: { 'sub-presenter' -> 'subpresenter' .
			'sub presenter' -> 'subpresenter' .
			'meta object' -> 'metaobject'}.
	self 
		assert: (r goodWordFor: 'meta object') 
		equals: 'metaobject'.
	self 
		assert: (r goodWordFor: 'sub presenter') 
		equals: 'subpresenter'.
]

{ #category : 'tests' }
MicRuleTest >> testMatchingSource [

	| r |
	r := MicMisusedVocabularyRule new.
	r name: 'UseInstead'.
	r pairs: { 'sub-presenter' -> 'subpresenter' .
			'sub presenter' -> 'subpresenter' .
			'meta object' -> 'metaobject'}.
	self 
		assert: r matchingPatterns 
		equals: #('*sub-presenter*' '*sub presenter*' '*meta object*') 
]

{ #category : 'tests' }
MicRuleTest >> testMicHeaderFirstLetterCapitalizeRuleIsFalseWithAWordWithTheFirstLetterCapitalize [

	| word res |
	word := 'pharo'.

	res := MicHeaderFirstLetterCapitalizeRule new matchingPattern: word.

	self assert: res equals: false
]

{ #category : 'tests' }
MicRuleTest >> testMicHeaderFirstLetterCapitalizeRuleIsTrueWithAWordWithTheFirstLetterCapitalize [

	|word res|
	
	word := 'Pharo'.
	
	res := MicHeaderFirstLetterCapitalizeRule new matchingPattern: word.
	
	self assert: res equals: true
]

{ #category : 'tests' }
MicRuleTest >> testMicHeaderFirstLetterCapitalizeRuleWithAnEmptyString [

	| word res |
	word := ''.

	res := MicHeaderFirstLetterCapitalizeRule new matchingPattern: word.

	self assert: res equals: false
]

{ #category : 'tests' }
MicRuleTest >> testMicParagraphMissingLabelPeriodRuleIsOk [

	| aText applyRule res |
	aText := '2 Analyse'.
	applyRule := MicParagraphMissingLabelPeriodRule new.
	res := applyRule detectIncorrectLabel: aText.
	self assert: res equals: true
]

{ #category : 'tests' }
MicRuleTest >> testSimpleRule [

	| r |
	r := MicMisusedVocabularyRule new.
	r name: 'UseInstead'.
	r pairs: { 'sub-presenter' -> 'subpresenter' .
			'sub presenter' -> 'subpresenter' .
			'meta object' -> 'metaobject'}.
	self assert: r pairs size equals: 3
]
