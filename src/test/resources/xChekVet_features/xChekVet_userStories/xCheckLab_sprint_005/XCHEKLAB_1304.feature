Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@1304
Scenario Outline: XCHEKLAB_1304 :- As an xChekVet User, I should be able to perform the close action on the view report screen. 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Cancel Button 
	Then Verify Cancel Popup Texts 
	Then User Click YES button 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Cancel Button 
	Then User Click No button 
	Then User Save Current Report Save And Exit 
	
	Examples: 
		|TestData|
		|TD_001|