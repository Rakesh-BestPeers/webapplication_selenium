Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline: IXR_158 As an Idexx Super Admin I should be able to add, edit, delete, reload system announcements list 
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User enter Valid Credentials 
	Then User Click on System Announcements 
	Then User Click Add New System Announcement Button 
	#	Then System Announcements able to Edit User in List
	#	Then System Announcements able to Delete User in List
	#	Then System Announcements able to Reload User
	Examples: 
		|TestData|
		|TD_001|
		
		