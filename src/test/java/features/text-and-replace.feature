Feature:  I want to get the list of all the student registered in this application.

	Background:

		* header Content-Type = 'application/json'
		* header Authorization = call read('classpath:student/auth.js') { username : 'user', password : 'password'}

	Scenario:

		Given url baseUrl
		* def text = 'Hi, My na<sub> is <name>'
		* replace text.sub = 'me'
		* replace text.name = 'Charlie'
		* print text
		* match text == "Hi, My name is Charlie"

