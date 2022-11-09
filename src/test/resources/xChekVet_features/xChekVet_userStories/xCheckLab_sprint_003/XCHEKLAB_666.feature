Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_666 As an xChekVet user, I should be able to display the records as per the combination of default filter selection

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Select Single Assay
	Then User Select Single Assay Date And CaseID
	Then User Select Single Assay Both Date And Both CaseID
	Then User Select Multiple Assay
	Then User Select Multiple Assay Date And CaseID
	Then User Select Multiple Assay Both Date And Both CaseID
	
	Examples: 
		|TestData|
		|TD_001|