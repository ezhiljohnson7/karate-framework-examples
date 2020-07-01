Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'

	Scenario:

		Given url baseUrl
		* def username = 'user1'
		And path 'student/'+ username
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}
		When method get
		Then status 200
		And print response
		And print response.age
		And assert response.age == 50
		
		
	Scenario:

		Given url baseUrl
		* def username = 'user1'
		And path 'student/'+ username
		* def authValue = 
		"""
		function(credentials) {
  	var temp = credentials.username + ':' + credentials.password;
  	var Base64 = Java.type('java.util.Base64');
  	var encoded = Base64.getEncoder().encodeToString(temp.bytes);
 	 	return 'Basic ' + encoded;
		}
		"""
		* header Authorization = authValue({ username : 'user', password : 'password'})
		When method get
		Then status 200
		And print response
		And print response.age
		And assert response.age == 50