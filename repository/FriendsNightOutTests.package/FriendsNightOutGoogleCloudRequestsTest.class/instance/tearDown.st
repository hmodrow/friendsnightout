running
tearDown
	client ifNotNil: [ client close ].
	server ifNotNil: [ server stop ]