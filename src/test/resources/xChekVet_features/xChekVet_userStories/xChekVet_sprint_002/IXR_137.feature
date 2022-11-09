Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline: IXR_137 As a Company Admin, I can see the IDEXX datahub welcome screen and navigate to login
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User Verify Company Admin Page 
	Then User enter invalid Credentials 
	Then User enter Valid Credentials 
	
	Examples: 
		|TestData|
		|TD_001|