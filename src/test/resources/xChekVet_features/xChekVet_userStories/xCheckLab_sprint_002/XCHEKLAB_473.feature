Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_473 As an IDEXX super admin I should be able to delete user record from user permission list
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then Click on User Permission Tab 
	Then User Click on Delete User Button
	
	
	Examples: 
		|TestData|
		|TD_001|