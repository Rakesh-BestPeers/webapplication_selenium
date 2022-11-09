Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline:IXR_157 As an Idexx Super Admin I should be able to view system announcements list
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User enter Valid Credentials 
	Then User Click on System Announcements 
	Then User Verify System Announcements Page 
	Then Click on Information Requests 
	
	Examples: 
		|TestData|
		|TD_001|
		
		