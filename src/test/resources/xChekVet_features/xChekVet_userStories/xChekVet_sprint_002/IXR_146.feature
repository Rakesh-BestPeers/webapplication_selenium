Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline: IXR_146 As an IDEXX Super Admin I should able to see user list of all user created for any company
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User enter Valid Credentials 
	Then Click on User Permission Tab 
	Then User Verify All Available Options 
	Then User Click on Add User Permission 
#	Then User Verify and fill fields of Super Add User 
	
	
	Examples: 
		|TestData|
		|TD_001|