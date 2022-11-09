Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_744 As an xChekVet user, I should be able to modify the analyze case report configuration for Poultry

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay Both Date And Both CaseID
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
	Then User Verify Configure Report All Texts
#	Then User Select Required Fields
	Then User Redirect to Select Data
	Then User Click on Configure Report
	
	Examples: 
		|TestData|
		|TD_001|