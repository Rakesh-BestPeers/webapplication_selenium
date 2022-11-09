Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_461 As an xChekVet user, I should be able to collapse and expand assay list

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Analyze Case Link
	Then User Verify Analyze Case Dashboard
	Then User Click on Assays Collapse
	
	Examples: 
		|TestData|
		|TD_001|