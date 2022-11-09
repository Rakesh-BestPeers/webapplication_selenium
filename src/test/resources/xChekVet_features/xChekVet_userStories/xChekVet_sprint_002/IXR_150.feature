Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI
Scenario Outline: IXR_150 As a Valid Idexx Admin User I should be able to logout from my account
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User Verify AdminPage
	Then User enter Valid Credentials 
	Then User Click on SignOut 
	
	Examples: 
		|TestData|
		|TD_001|
		
		