Class {
	#name : 'MicCodeBlockFormator',
	#superclass : 'MicAbstractSanitizer',
	#category : 'Microdown-BookSanitizer',
	#package : 'Microdown-BookSanitizer'
}

{ #category : 'as yet unclassified' }
MicCodeBlockFormator >> correctPeriod: methodBody [

	| lines lastLine lastLineIndex |
	lines := methodBody lines asOrderedCollection.

	lastLineIndex := 0.
	lines withIndexDo: [ :line :index |
		line trim isEmpty not ifTrue: [ lastLineIndex := index ] ].

	lastLineIndex = 0 ifTrue: [ ^ methodBody ].

	lastLine := lines at: lastLineIndex.

	(lastLine trim endsWith: '.')
		ifTrue: [
				lines at: lastLineIndex put: lastLine allButLast.
				^ String cr join: lines ]
		ifFalse: [ ^ methodBody ]
]

{ #category : 'private' }
MicCodeBlockFormator >> correctSecondLine: aText [

	| trimmed restOfString firstLine |
	firstLine := aText copyUpTo: Character cr.
	restOfString := aText copyAfter: Character cr.
	
	(restOfString beginsWith: Character cr asString) ifTrue: [ ^ aText ].

	trimmed := restOfString trimLeft.

	((trimmed beginsWith: '!') or: [ trimmed beginsWith: '"' ]) ifTrue: [
		^ aText ].

	^ firstLine , Character cr asString , Character cr asString
	  , restOfString
]

{ #category : 'as yet unclassified' }
MicCodeBlockFormator >> correctSpacesByTabs: methodBody [
    ^ String cr join: (methodBody lines collect: [ :line |
        | firstCharIndex indentCount tabs spaces content |

        firstCharIndex := line findFirst: [ :char | char ~= Character space ].

        firstCharIndex = 0
            ifTrue: [ 
                indentCount := line size.
                content := '' ]
            ifFalse: [ 
                indentCount := firstCharIndex - 1.
                content := line copyFrom: firstCharIndex to: line size ].

        tabs := indentCount // 3.
        spaces := indentCount \\ 3.

        (String new: tabs withAll: Character tab),
        (String new: spaces withAll: Character space),
        content
    ])
]

{ #category : 'private' }
MicCodeBlockFormator >> sanitize: aText [

| trimmed restOfString firstLine|

firstLine := aText copyUpTo: Character cr.
restOfString := aText copyAfter: Character cr.

(restOfString beginsWith: (Character cr asString))
    ifTrue: [ ^ aText ].


trimmed := restOfString trimLeft.

((trimmed beginsWith: '!') 
    or: [ trimmed beginsWith: '"' ])
    ifTrue: [ ^ aText ].

"3. Sinon : elle ne commence ni par un CR, ni par un commentaire."
"On ajoute le Character cr au début (une ligne vide)."
^ firstLine, Character cr asString, Character cr asString , restOfString
]
