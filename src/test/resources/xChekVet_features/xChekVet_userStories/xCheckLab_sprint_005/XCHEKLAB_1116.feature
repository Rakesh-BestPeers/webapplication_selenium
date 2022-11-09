Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@1116
Scenario Outline: XCHEKLAB_1116 As a xChekvet Company user I should be able to see Print option on the View Report screen so that I can Print the Analyze report. 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Select Assay In Table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Print Button 
#	Then User Click on Logout Button 
#	Then Uer Enter Valid Credentials for Company User 
#	Then User Click on Analyze Case Link 
#	Then User Select Multiple Assay 
#	Then User Perform From Date Cases 
#	Then User Select multiple CaseID in table 
#	Then User Click on Configure Report 
#	Then Click on View Report Ribbon 
#	Then Verify and Click Print Button 
	
	Examples: 
		|TestData|
		|TD_001|