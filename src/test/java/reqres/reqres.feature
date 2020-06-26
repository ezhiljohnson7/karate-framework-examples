Feature:  I want to get user details from reqres appplication.

	Background:

		* header Content-Type = 'application/json'

	Scenario:

		Given url reqresUrl
		And path 'api/users?page=2'
		When method get
		Then status 200
		And print response
		And match response.ad.company == 'StatusCode Weekly'
		And print response.ad.company
		
	Scenario:

		Given url reqresUrl
		And path 'api/users?page=2'
		When method get
		Then status 200
		And print response
		And print response.data[0].color
		And match response.data[0].color == '#98B2D1'

	Scenario:

		Given url reqresUrl
		And path 'api/users?page=2'
		When method get
		Then status 200
		And match $ contains {"page": 1}
		And match $ contains {"ad" : #notnull}
		And print 'The name of the Ad company is :', response.ad.company
		
	Scenario:

		Given url reqresUrl
		And path 'api/users?page=2'
		When method get
		Then status 200
		And print response
		And print response.data[5].name
		And match response.data[5].name == 'blue turquoise'
		
	Scenario:

		Given url reqresUrl
		And path 'api/users?page=2'
		When method get
		Then status 200
		And print response
		And print response.total_pages
		And match response.total_pages == 2
		