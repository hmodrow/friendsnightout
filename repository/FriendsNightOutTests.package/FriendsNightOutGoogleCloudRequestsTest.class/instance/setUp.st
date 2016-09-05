running
setUp
   Transcript show: 'Running Test'.
	server := ZnServer startOn: 8080.
   Transcript show: 'Server created'.

	server delegate: 
		(ZnRestServerDelegate new 
			uriSpace: (ZnCallHierarchyRestUriSpace new 
							rootClass: FriendsNightOutRestCall;
							yourself); 
			yourself).
   Transcript show: 'Server delegate asigned'.
	client := ZnClient new
		url: server localUrl;
		addPathSegment: '_ah';
		yourself