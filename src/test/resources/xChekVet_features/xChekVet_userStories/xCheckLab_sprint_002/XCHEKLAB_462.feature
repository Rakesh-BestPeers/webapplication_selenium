Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_462 As an xChekVet user, I should be able to see case data on analyze case report screen

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Analyze Case Link
	Then User Verify Analyze Case Dashboard
	Then User Verify DataTable variables
#	Then User Vertically scroll to view records
	
	Examples: 
		|TestData|
		|TD_001|