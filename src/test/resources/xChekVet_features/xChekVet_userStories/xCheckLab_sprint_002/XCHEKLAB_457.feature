Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_457 As an xChekVet User, I should be able to navigate to Analyze case screen and see assay list

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Analyze Case Link
	Then User Verify Analyze Case Dashboard
	Then User Verify Assay Code and Name
	Then User Click on Assays Collapse
	
	Examples: 
		|TestData|
		|TD_001|