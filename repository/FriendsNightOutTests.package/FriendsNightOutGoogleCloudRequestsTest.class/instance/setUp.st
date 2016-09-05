running
setUp
	server := ZnServer startOn: 8080.
	server delegate: 
		(ZnRestServerDelegate new 
			uriSpace: (ZnCallHierarchyRestUriSpace new 
							rootClass: FriendsNightOutRestCall;
							yourself); 
			yourself).
	client := ZnClient new
		url: server localUrl;
		addPathSegment: '_ah';
		yourself