Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_630 :: As an xChekVet User, I should be able to see the logged user details(Name, company) in the home panel(header).

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Verify Login Page
	Then Uer Enter Valid Credentials for Company User 
	Then User Verify Login Username on Top
	Then User Click on Logout Button
	Then User Verify Login Page
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Verify Login Username on Top for Company Admin
	Then User Click on Logout Button
	Then User Verify Login Page
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Login Username on Top
	Then User Click on Logout Button
	
	
	
	Examples: 
		|TestData|
		|TD_001|