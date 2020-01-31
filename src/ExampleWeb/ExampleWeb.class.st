"
Example web component
"
Class {
	#name : #ExampleWeb,
	#superclass : #WAComponent,
	#category : #ExampleWeb
}

{ #category : #'class initialization' }
ExampleWeb class >> initialize [
	
	WAAdmin register: self asApplicationAt: 'exampleweb'
]

{ #category : #rendering }
ExampleWeb >> renderContentOn: html [
	
]
