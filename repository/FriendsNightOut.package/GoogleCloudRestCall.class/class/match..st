as yet unclassified
match: request
   "Handles all request with first path segment equal to _ah (Google Cloud)"
	^ request uri firstPathSegment = '_ah'
		ifTrue: [ request uri pathSegments allButFirst ]
		ifFalse: [ nil ]    