Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}

	Scenario Outline:

		Given url baseUrl
		* def username = '<studentName>'
		And path 'student/'+ username
		When method get
		Then status <statusCode>
		And print response
		And print response.age
		And match response.hobbies == <hobbies>
		
	Examples:
		|studentName  | statusCode |
		|user1			  |	200        |
		|user2        | 200        |
		|user3        | 404        |