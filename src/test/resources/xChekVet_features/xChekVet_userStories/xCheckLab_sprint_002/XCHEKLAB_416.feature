Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_416 As a Company Admin, I should be able to Edit and Delete list in User permission screen 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then Verify Dashboard Page Text 
	Then User Click on Manage Setting 
	Then User Click on USER PERMISSIONS Tab 
	Then User Click on EDIT NEW USERS button
	Then User Verify EDIT NEW USERS PopUp
	Then User Check Erro MSg On EDIT NEW USERS PopUp
	Then User EDIT NEW USER Successfully
	Then User Click on DELETE NEW USERS button
	Then User DELETE NEW USER Successfully
	
	Examples: 
		|TestData|
		|TD_001|