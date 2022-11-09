Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_463 As an xChekVet user, I should be able to select date and Case ID filter in analyze case report 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Perform From Date Cases 
#	Then User Perform To Date Cases 
#	Then User Perform From CaseID Only 
#	Then USer Perform To CaseID only 
	
	Examples: 
		|TestData|
		|TD_001|
		
		
		