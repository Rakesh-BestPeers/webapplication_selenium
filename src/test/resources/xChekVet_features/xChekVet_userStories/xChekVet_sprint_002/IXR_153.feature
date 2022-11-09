Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline:IXR_153 Idexx Admin Portal header and footer component creation
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User enter Valid Credentials 
#	Then User Verify View Platform Analytics 
	Then User Verify Header And Footer
	
	Examples: 
		|TestData|
		|TD_001|
		
		