"
ExampleWeb baseline
"
Class {
	#name : #BaselineOfExampleWeb,
	#superclass : #BaselineOf,
	#category : #BaselineOfExampleWeb
}

{ #category : #baselines }
BaselineOfExampleWeb >> baseline: spec [
	<baseline>
	
	spec
		for: #common
		do: [ 
			"Packages"
			spec 
				package: 'ExampleWeb' ]
]
