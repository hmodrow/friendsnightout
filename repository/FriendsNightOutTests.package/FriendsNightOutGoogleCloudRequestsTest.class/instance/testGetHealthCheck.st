testing
testGetHealthCheck
	"Here we test POSTing a text file with a number per line to /sum"
	
	| output |
   client addPathSegment: 'health'.
	output := client get.
	self assert: client isSuccess.
