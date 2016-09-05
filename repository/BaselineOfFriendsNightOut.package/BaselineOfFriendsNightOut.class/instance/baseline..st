baseline
baseline: spec
   <baseline>

  spec for: #common do: [ 
    spec blessing: #baseline.
    spec repository: 'github://hmodrow/friendsnightout:master/repository'.
    spec project: 'ZincHTTPComponents' with: [
      spec 
        className: 'ConfigurationOfZincHTTPComponents';
        versionString: #'stable';
        loads: #('REST');
        repository: 'http://mc.stfx.eu/ZincHTTPComponents'] ].
    spec
      package: 'FriendsNightOut' with: [
        spec requires: #('ZincHTTPComponents') ];	  
      package: 'FriendsNightOutTests' with: [  
        spec requires: #('ZincHTTPComponents' 'FriendsNightOut') ].
		
