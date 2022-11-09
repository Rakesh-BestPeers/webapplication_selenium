Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline: IXR_240 As an IDEXX Super admin I should be able to select a record and update in request information list 
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on SignIn Button 
	Then User enter Valid Credentials 
	Then Click on User Permission Tab 
	Then User Click Add New Information Request Button 
	Then User Status Accept In Progress and Verify 
	Then User Status Forwarded to Company Admin and Verify 
	Then User Status Decline and Verify 
	Then User Status Completed and Verify 
	Then System Announcements able to Edit User in List
	Then System Announcements able to Delete User in List
	Then System Announcements able to Reload User
	Examples: 
		|TestData|
		|TD_001|
		