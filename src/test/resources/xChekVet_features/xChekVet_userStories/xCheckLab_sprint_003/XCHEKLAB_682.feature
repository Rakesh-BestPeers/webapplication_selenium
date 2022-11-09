Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_682 As an xChekVet user, I should be able to select multiple cases in the case selection panel so that I can generate reports for the selected cases 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Select Multiple Assay
	Examples: 
		|TestData|
		|TD_001|