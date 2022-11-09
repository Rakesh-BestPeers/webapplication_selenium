Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2068 :: As a XchekVet user, I should be able to see the dashboard according to my user role.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Superadmin Dashboard
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company Admin
	Then User Verify Companyadmin Dashboard
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User 
	Then User Verify Companyuser Dashboard
	Then User Click on Logout Button
	
  
	
	Examples: 
		|TestData|
		|TD_001|