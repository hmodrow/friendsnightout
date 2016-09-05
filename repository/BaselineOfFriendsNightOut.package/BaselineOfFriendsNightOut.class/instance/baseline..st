baseline
baseline: spec
   <baseline>

  spec for: #common do: [ 
    spec blessing: #baseline.
    spec repository: 'github://hmodrow/friendsnightout/repository:master'.

    spec
      package: 'FriendsNightOut' with: [
        spec requires: #('ZincHTTPComponents') ];	  
      package: 'FriendsNightOutTests' with: [  
        spec requires: #('ZincHTTPComponents' 'FriendsNightOut') ].
		
    spec project: 'ZincHTTPComponents' with: [
      spec 
        className: 'ConfigurationOfZincHTTPComponents';
        repository: 'http://mc.stfx.eu/ZincHTTPComponents';
        version: #stable ] ]