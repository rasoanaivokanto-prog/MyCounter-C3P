Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'accessing' }
Die >> faces [
    ^ faces
]

{ #category : 'accessing' }
Die >> faces: aNumber [
    faces := aNumber.
]

{ #category : 'initialization' }
Die >> initialize [
    faces := 6.
]

{ #category : 'printing' }
Die >> printOn: aStream [
    super printOn: aStream.
    aStream nextPutAll: ' (', faces printString, ')'.

]

{ #category : 'as yet unclassified' }
Die >> roll [
    ^ faces atRandom
]

{ #category : 'as yet unclassified' }
Die >> withFaces: aNumber [
    ^ self new faces: aNumber; yourself

]
