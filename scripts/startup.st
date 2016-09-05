Metacello new
  baseline: 'FriendsNightOut';
  repository: 'github://hmodrow/friendsnightout:master/repository';
  get.
  
Metacello new
  baseline: 'FriendsNightOut';
  repository: 'github://hmodrow/friendsnightout:master/repository';
  onConflict: [:ex | ex allow];
  load.
  
FileStream stdout nextPutAll: 'FriendsNightOut installed'; lf.

server := ZnServer startOn: 8080.

server delegate: 
		(ZnRestServerDelegate new 
			uriSpace: (ZnCallHierarchyRestUriSpace new 
							rootClass: FriendsNightOutRestCall;
							yourself); 
			yourself).

FileStream stdout nextPutAll: 'Server Up!'; lf.
