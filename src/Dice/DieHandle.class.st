Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DieHandle >> + aDieHandle [
    | newHandle |
    newHandle := DieHandle new.
    newHandle addAll: self dice.
    newHandle addAll: aDieHandle dice.
    ^ newHandle
]

{ #category : 'adding' }
DieHandle >> addAll: aCollection [ 
	aCollection do: [ :each | self addDie: each ].
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [
    dice add: aDie.
]

{ #category : 'adding' }
DieHandle >> dice [
	^ dice
]

{ #category : 'as yet unclassified' }
DieHandle >> diceNumber [
    ^ dice size.
]

{ #category : 'initialization' }
DieHandle >> initialize [
    dice := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
DieHandle >> roll [
    ^ dice sum: [ :each | each roll ].
]
