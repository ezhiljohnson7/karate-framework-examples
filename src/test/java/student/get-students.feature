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
		
# Assignment-1 : Print all hobbies of user4
# Assignment-2 : Pring the mobile number of user2

#	Scenario:
#
#		Given url baseUrl
#		And path 'students'
#		When method get
#		Then status 200
#		And print response.students[3].hobbies
#		And print response.students[1].mobileNo
#		And response.students[3].hobbies match contains 'Coding'