Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}

#	Scenario Outline:
#
#		Given url baseUrl
#		* def username = '<studentName>'
#		And path 'student/'+ username
#		When method get
#		Then status <statusCode>
#		And print response
#		And print response.age
#		And match response.age == <age>
#		
#	Examples:
#		|studentName  | statusCode | age  |
#		|user1			  |	200        | 50   |
#		|user2        | 200        | 45   |
#		
#		# How to use set
#		Scenario:
#		
#		Given url baseUrl
#		* def username = 'user1'
#		And path 'student/'+ username
#		When method get
#		Then status 200
#		And print response
#		And print response.age
#		And set response.age = 55
#		And print response.age
#		And match response.age == 55
#		
#		# How to use remove
#		Scenario:
#		
#		Given url baseUrl
#		* print response.age
#		* def username = 'user1'
#		And path 'student/'+ username
#		When method get
#		Then status 200
#		And print response
#		And print response.age
#		And remove response.age
#		And print response
#		
#				# How to use matching on arrays
#		Scenario:
#		
#		Given url baseUrl
#		And path 'students'
#		When method get
#		Then status 200
#		And print response
#		And match response.students[0].hobbies[2] == 'Tennis'
#		And print response.students[0].hobbies[2]
#		And set response.students[0].hobbies[2] = 'Football'
#		And remove response.students[0].hobbies[1]
#		And print response
#		And match response.students[0].hobbies[2] == 'Football'
#		
						# HEADER VALIDATIONS
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		And print karate.prevRequest.headers
		* def jsonHeaders = karate.prevRequest.headers
		* print jsonHeaders['Host'][0]
		* match jsonHeaders['Host'][0] == 'localhost:8080'
		