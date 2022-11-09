Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_648 As an xChekVet user, I should be able to navigate from the Select Data screen to the Configure Report screen

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay Both Date And Both CaseID
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
	Then User Redirect to Select Data
	Examples: 
		|TestData|
		|TD_001|