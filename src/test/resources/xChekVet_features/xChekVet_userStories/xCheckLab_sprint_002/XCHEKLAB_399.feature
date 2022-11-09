Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_399 As an xChekVet user, I should be able to login to IDEXX xChekVet 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin
	Then Verify Dashboard Page Text
	Then User Click on Manage Setting
	
	Examples: 
		|TestData|
		|TD_001|
		
		
		