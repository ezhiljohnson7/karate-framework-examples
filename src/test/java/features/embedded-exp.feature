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

#Not template
#		Scenario:
#		
#		Given url baseUrl
#		* def rpath = 'students'
#		And path '#(rpath)'
#		When method get
#		Then status 200
#		
#		Scenario:
#		
#		Given url baseUrl
#		* def user = {name: 'User1', age: 45}
#		And path 'students'
#		When method get
#		Then status 200
#		* match response.students[1].name  == userDetails.name
#
#		Scenario:
#
#		Given url baseUrl
#		And path 'student'
#		* def user = {name : "mike", age: 35}
#		* def requestBody = 
#		"""{
            #"name": "#(user.name)",
            #"age": #(user.age),
            #"emailId": "user1@abc.com",
            #"mobileNo": 9876543210,
            #"semester": 8,
            #"department": "cse",
            #"hobbies": [
                #"Coding",
                #"Gaming",
                #"Tennis",
                #"Music"
            #]
#		}"""
#		And request requestBody
#		When method post
#		Then status 200
#		And print response
#		And print response.status
#		And response.status = 'pass'
#		
#		Scenario Outline:
#
#		Given url baseUrl
#		And path 'student'
#		* def user = {name : "<name>", age: <age>}
#		* def requestBody = 
#		"""{
            #"name": "#(user.name)",
            #"age": #(user.age),
            #"emailId": "user1@abc.com",
            #"mobileNo": 9876543210,
            #"semester": 8,
            #"department": "cse",
            #"hobbies": [
                #"Coding",
                #"Gaming",
                #"Tennis",
                #"Music"
            #]
#		}"""
#		And request requestBody
#		When method post
#		Then status 200
#		And print response
#		And print response.status
#		And response.status = 'pass'
#		
#		Examples:
#		|name    |age  |
#		|user10  |31   |
#		|user11  |32   |
#		|user12  |33   |
		
		@smoke
		Scenario Outline:

		Given url baseUrl
		And path 'student'
		And def user = {name : "<name>", age: <age>}
		And request read('classpath:features/student.json')
		When method post
		Then status 200
		And print response
		And print response.status
		And response.status = 'pass'
		
		Examples:
		|name    |age  |
		|user13  |31   |
		|user14  |32   |
		|user15  |33   |
		
		