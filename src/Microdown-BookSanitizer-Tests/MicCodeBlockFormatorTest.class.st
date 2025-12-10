Class {
	#name : 'MicCodeBlockFormatorTest',
	#superclass : 'MicAbstractSanitizerTest',
	#category : 'Microdown-BookSanitizer-Tests',
	#package : 'Microdown-BookSanitizer-Tests'
}

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectPeriodWithPeriod [

	| testMethod result |
	testMethod := 'test: aTest
  temp := 1 + 2.
    ^ temp.'.

	result := MicCodeBlockFormator new correctPeriod: testMethod.

	self assert: result equals: 'test: aTest
  temp := 1 + 2.
    ^ temp'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectPeriodWithoutPeriod [

	| testMethod result |
	testMethod := 'test: aTest
  temp := 1 + 2.
    ^ temp'.

	result := MicCodeEndWithoutPeriod new sanitize: testMethod.

	self assert: result equals: 'test: aTest
  temp := 1 + 2.
    ^ temp'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectSecondLine [

	| testMethod result |
	testMethod := 'test: aTest
	temp := 1 + 2.
    ^ temp.'.

	result := MicCodeCorrectSecondLine new sanitize: testMethod.

	self assert: result equals: 'test: aTest

	temp := 1 + 2.
    ^ temp.'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectSecondLineOK [

	| testMethod result |
	testMethod := 'test: aTest

	temp := 1 + 2.
    ^ temp.'.

	result := MicCodeCorrectSecondLine new sanitize: testMethod.

	self assert: result equals: 'test: aTest

	temp := 1 + 2.
    ^ temp.'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectSecondLineOKWithComments [

	| testMethod result |
	testMethod := 'test: aTest
	"there is comments"
	temp := 1 + 2.
    ^ temp.'.

	result := MicCodeCorrectSecondLine new sanitize: testMethod.

	self assert: result equals: 'test: aTest
	"there is comments"
	temp := 1 + 2.
    ^ temp.'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectSpacesByTabs [

	| testMethod result |
	testMethod := 'test: aTest
	temp := 1 + 2.
	^ temp.'.

	result := MicCodeCorrectTabs new sanitize: testMethod.

	self assert: result equals: 'test: aTest
	temp := 1 + 2.
	^ temp.'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectSpacesByTabsWithTabs [

	| testMethod result |
	testMethod := 'test: aTest
	temp := 1 + 2.
	^ temp.'.

	result := MicCodeCorrectTabs new sanitize: testMethod.

	self assert: result equals: 'test: aTest
	temp := 1 + 2.
	^ temp.'
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormatorTest >> testCorrectSpacesByTabsWithoutTabs [

	| testMethod result |
	testMethod := 'test: aTest
   temp := 1 + 2.
  ^ temp.'.

	result := MicCodeCorrectTabs new sanitize: testMethod.

	self assert: result equals: 'test: aTest
	temp := 1 + 2.
  ^ temp.'
]
