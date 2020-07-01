Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}


	Scenario:

		Given url baseUrl
		* def username = 'user1'
		And path 'student/'+ username
		When method delete
		Then status 200
		And print response
		And assert response.status == 'pass'