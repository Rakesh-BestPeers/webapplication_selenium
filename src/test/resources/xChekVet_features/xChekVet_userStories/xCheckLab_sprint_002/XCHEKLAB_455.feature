Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_455 As an xChekVet user, I should be able to login to IDEXX xChekVet 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Verify Login Page
	Then User Enter Invalid Credentials for Super Admin 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Click on Logout Button
	Then User Enter Invalid Credentials for Company Admin 
	Then Uer Enter Valid Credentials for Company Admin
	Then User Click on Logout Button
	Then User Enter Invalid Credentials for Company User 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Logout Button

	Examples: 
		|TestData|
		|TD_001|