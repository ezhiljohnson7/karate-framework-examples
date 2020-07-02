Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}

		# check if a value is String
		@smoke
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		And print response
		And def student_1 = response.students[0]
		And match student_1.name == '#string'
		
		# check if a value is number
		@smoke
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		And print response
		And def student_1 = response.students[0]
		And match student_1.mobileNo == '#number'
		And match student_1.age == '#number'
		And match student_1.semester == '#number'

		# check if an object is an array
		@sanity
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		And print response
		And match response.students == '#array'
		And match response.students[0] == '#object'
		
				# check if an object is an array
				
		@ignore
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* print response
		* match response.students[0].hobbies == '#array'

				# check if null
				@ignore
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* print response
		* set response.students[0].name = null
		* match response.students[0].name == '#null'

				# check if not-null
				@ignore
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* print response.students[0]
		* match response.students[0].name == '#notnull'
	
				# check if present
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* print response.students[0]
		* match response.students[0].emailId == '#present'

		# check if not-present
		@ignore
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* print response.students[0]
		* match response.students[0].nationality == '#notpresent'	
		
		# check if not-present
		@ignore
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* remove response.students[0].emailId
		* print response.students[0].emailId
		* match response.students[0].emailId == '#notpresent'
		* print response
		
				# check if not-present
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* set response.students[0].isIndian = true
		* print response.students[0].isIndian
		* match response.students[0].isIndian == '#boolean'
		* print response
		
				# check if ignored
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* set response.students[0].isIndian = true
		* print response.students[0].isIndian
		* match response.students[0].isIndian == '#ignore'
		* print response
		
		Scenario:
		
		Given url baseUrl
		And path 'students'
		When method get
		Then status 200
		* print response.students[0].department
		* match response.students[0].department == '#ignore'
		* print response
		
#Assignment:
#
#1. Set the name to 'Charlie'
#2. Remove 'Music' from list of hobbies.
#3. Check if 'Coding' is String
#4. Check if 'Tennis' is not -null
#5. Check if Music is null
#6. Ignore mobileNo.

		