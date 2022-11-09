Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_415 As an xChekVet User, I should be able to see User permission screen and add new user

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin
	Then Verify Dashboard Page Text
	Then User Click on Manage Setting
	Then User Click on USER PERMISSIONS Tab
	Then User Verify Table Text
	Then User Click on ADD NEW USERS button
	Then User Verify ADD NEW USERS PopUp
	Then User Check Erro MSg On ADD NEW USERS PopUp
	Then User ADD NEW USER Successfully
	
	Examples: 
		|TestData|
		|TD_001|
	