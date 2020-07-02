Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}
		* def requestBody = 
		"""{
            "name": "User4",
            "age": 50,
            "emailId": "user1@abc.com",
            "mobileNo": 9876543210,
            "semester": 8,
            "department": "cse",
            "hobbies": [
                "Coding",
                "Gaming",
                "Tennis",
                "Music"
            ]
		}"""

	Scenario:

		Given url baseUrl
		And path 'student'
		And request requestBody
		And print request
		When method post
		Then status 200
		And print response
		And print response.status
		And response.status = 'pass'