Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
@abc
Scenario Outline:IXR_151 As an Idexx Super Admin I should be able to Navigate from one link to another
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User enter Valid Credentials 
	Then User Verify View Platform Analytics 
	Then Click on User Permission Tab 
	Then User Verify All Available Options 
	Then Click on Information Requests 
	Then User Verify Information Request Page 
	Then User Click on System Announcements 
	Then User Verify System Announcements Page 
	
	Examples: 
		|TestData|
		|TD_001|
		
		