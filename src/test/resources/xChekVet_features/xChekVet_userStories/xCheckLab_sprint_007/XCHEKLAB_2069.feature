Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2069 :: As a Xchekvet user, I should be able to have an menu options as per my user role so that I can perform the actions as per needed. 
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Login Username on Top 
	Then User Click On Dropdown and Verify Options for Super Admin 
	 Then User Click on Logout Button 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Verify Companyadmin Dashboard 
	Then User Verify Login Username on Top
	Then User Click On Dropdown and Verify Options for Company Admin
	Then User Click on Logout Button 
	Then Uer Enter Valid Credentials for Company User 
	Then User Verify Companyuser Dashboard 
	Then User Verify Login Username on Top
	Then User Click On Dropdown and Verify Options for Company User
	Then User Click on Logout Button 
	
	
	
	Examples: 
		|TestData|
		|TD_001|