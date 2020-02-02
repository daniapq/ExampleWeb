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

{ #category : #accessing }
ExampleWeb >> items [
	
	^ #( #('Calendars' '1/1/2006' 'Track events, holidays etc.') #('Todo lists' '6/1/2006' 'Keep track of all the things to remember to do.') #('Shopping carts' '8/1/2006' 'Enable your customers to shop online.'))
]

{ #category : #rendering }
ExampleWeb >> renderContentOn: html [
	
	html heading level: 1; with: 'Hello world'.
	html paragraph: 'Welcome to my Seaside web site. In the future you will find all sorts of applications here such as:'.
	html table: [
		self items do: [ :row |
			html tableRow: [ 
				html tableHeading: (row at: 1).
				html tableData: (row at: 2).
				html tableData: (row at: 3) ] ] ]
]

{ #category : #hooks }
ExampleWeb >> style [
	
	^ 'h1 { text-align: center; }'
]
