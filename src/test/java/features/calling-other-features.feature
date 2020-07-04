Feature:  I want to get the list of all the student registered in this application.

		# check if a value is String
		@smoke
		Scenario:
		
		* call read('classpath:student/get-students_template.feature') { username : 'user', password: 'password', name: 'User2'}
		* print response
		* def student_1 = response.students[0]
		* print student_1
		* match student_1.age == 45

#		@smoke
#		Scenario:
#		
#		* call read('classpath:student/get-students_template.feature') { path : 'students'}
#		* print response
#		* def student_1 = response.students[0]
#		* print student_1
#		* match student_1.name == '#string'