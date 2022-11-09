Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_677 As an xChekVet user, I should be able to reset the search screen to the default view through the reset button

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Select Multiple Assay Both Date And Both CaseID
	Then User Click Reset Icon
	Then User Verify Reset Screen
	Examples: 
		|TestData|
		|TD_001|