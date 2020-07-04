Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'admin', password : 'admin'}

@smoke
	Scenario:

		Given url reqresUrl
		* def username = 'user2'
		And path 'student/'+ username
		When method get
		Then status 200
		And print response
		And print response.age
		And assert response.age == 50