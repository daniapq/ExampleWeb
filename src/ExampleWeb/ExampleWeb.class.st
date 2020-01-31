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
	
	html paragraph
		with: 'This is the text'.
		
	html heading
		level: 3;
		with: 'A third level heading'.
		
	html paragraph: [ 
		html text: 'Text next word is '.
		html strong: 'bold' ].
	
	html text: 'Hello world!'.
	
	html paragraph: 'A plain text paragraph.'.
	
	html paragraph: [ 
		html render: 'A paragraph with plain text followed by a line break.'.
		html break.
		html emphasis: 'Emphasized text '.
		html render: 'followed by a horizontal rule.'.
		html horizontalRule.
		html render: 'An image: '.
		html image url: 'http://www.seaside.st/styles/logo-plain.png' ].
	html horizontalRule.
	html paragraph: 'Fun with SmallTalk and Seaside.'.
	html paragraph: [ 
		10 timesRepeat: [ 
			html image
				url: 'http://www.seaside.st/styles/logo-plain.png';
				width: 50. ] ].
	html horizontalRule 
]
