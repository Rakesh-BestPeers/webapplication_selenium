Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI
Scenario Outline: IXR_123 As an IDEXX super admin I should able to login into Admin Portal of IDEXX cloud platform  
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User Verify AdminPage
	Then User enter invalid Credentials 
	Then User enter Valid Credentials 
	
	
	Examples: 
		|TestData|
		|TD_001|
		
		