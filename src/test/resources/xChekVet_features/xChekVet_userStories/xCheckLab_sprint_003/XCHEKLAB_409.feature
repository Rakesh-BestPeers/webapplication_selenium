Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_409 As a developer, I need to create API for IDEXX super admin ,company admin ,company user logout

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company Admin
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Logout Button

	Examples: 
		|TestData|
		|TD_001|