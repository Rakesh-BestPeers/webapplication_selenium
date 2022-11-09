Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_456 As an xChekVet user, I should be able to see company user dashboard

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>"  
	Then Uer Enter Valid Credentials for Company User 
	Then Verify Dashboard Page Text
	Then User Verify Header Logo And Texts
	Then User Click on Analyze Case Link
	Then User Verify Analyze Case Dashboard
	Then Redirect to Welcome Dashboard Page
	Then User Click on Logout Button

	Examples: 
		|TestData|
		|TD_001|