Feature:  I want to get the list of all the student registered in this application.

 	Background:
 		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'admin', password : 'admin'}
 		* def userData = 
		"""
		function(user) {
  	var CustomData = Java.type('features.CustomData');
  	var customData = new CustomData();
  	var userMap = customData.getUserAge(user);	
 	 	return userMap;
		}
		"""

		# check if a value is String
#		@smoke
#		Scenario:
#		
#		* def userMap = call userData 'User1'
#		* print userMap
#		
#		Scenario:
#
#		* print response
#		* def userMap = call userData username
#		* print userMap
#
#		Scenario:
#
#		* def CustomData = Java.type('features.CustomData');
#		* def userMap = CustomData.getUserAgeStatic('user1')
#		* print userMap
#		
		Scenario:

		Given url baseUrl
		* def username = 'user1'
		And path 'student/'+ username
		When method get
		Then status 200
		* print response
		* def CustomData = Java.type('features.CustomData');
		* def userMap = CustomData.getUserAgeStatic(username)
		* print userMap
		* match userMap.user1 == 45