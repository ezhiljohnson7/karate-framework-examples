Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}


	Scenario:

		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		And print response