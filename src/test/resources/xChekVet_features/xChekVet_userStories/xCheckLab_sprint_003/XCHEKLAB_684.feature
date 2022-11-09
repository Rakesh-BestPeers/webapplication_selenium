Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_684 As an xChekVet user, I should be able to manipulate the report format on the analyze case configuration screen

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay Both Date And Both CaseID
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
#	Then User Verify Configure Report All Texts
	Then User Unchecked Default Format and Select in Block Options and Sort By
	Then User Checked Default Format and Verify Status
	
	
	Examples: 
		|TestData|
		|TD_001|