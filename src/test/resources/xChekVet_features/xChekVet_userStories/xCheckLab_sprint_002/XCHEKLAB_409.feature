Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_409 As an xChekVet user, I should be able to select multiple assay and show data

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin
	Then User Click on Analyze Case Link
	Then User Verify Analyze Case Dashboard
	Then User Verify Assay Code and Name
	Then User Click on Assays Collapse
	
	Examples: 
		|TestData|
		|TD_001|
	