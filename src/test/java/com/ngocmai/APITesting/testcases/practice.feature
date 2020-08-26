Feature: user Details

	Background:
	* def expectedResult = read ('./data/expectedResult.json')
	* def urlUserId2 
	Scenario: GET request with user id 2
	Given url 'https://reqres.in/api/users/2'
	When method GET
	Then status 200
	And match response == expectedResult[0]
	And match response.data.id == 2

	Scenario: GET request with user id 3 in the same test result  
	Given url 'https://reqres.in/api/users/3'
	When method GET
	Then status 200
	And match response == expectedResult[1]
	
	Scenario: PUT request with updating user id 2
	Given url 'https://reqres.in/api/users/2'
	And request {name: 'ngoc', job: 'QA'}
	When method PUT
	Then status 200
	
	Scenario: PATCH request with updating user id 2
	Given url 'https://reqres.in/api/users/2'
	And request {name: 'ngoc mai'}
	When method Patch
	Then status 200
	
	Scenario: DELETE user id 2
	Given url 'https://reqres.in/api/users/2'
	When method DELETE
	Then status 204
	
	Scenario: POST request with user name and job
	Given url 'https://reqres.in/api/users'
	And request {name: 'ngoc', job: 'QA'}
	When method POST
	Then status 201
	
	
	
	
	


