Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI
Scenario Outline: IXR_144 As an IDEXX Super Admin I should able to see request information list
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User Verify Company Admin Page 
	Then User Click on Request Information
	
	Examples: 
		|TestData|
		|TD_001|