Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_471 As an IDEXX super admin, I should be able to add new user in user permission screen 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then Click on User Permission Tab 
	Then User Verify All Available Options 
	Then User Verify and fill fields of Super Add User 
	
	
	
	Examples: 
		|TestData|
		|TD_001|