Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 
@1115
Scenario Outline: XCHEKLAB_Regression_5 As an xChekVet User, I should be able to see Major functionalities for View report

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
	Then Verify Save Popup Texts 
	Then User Save Current Report Exit 
	Then Verify and Click Save Button 
	Then User Save Current Report Save And Exit 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
	Then User Save Current Report Save And Return to Report 
	Then Redirect to Welcome Dashboard Page 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
	Then Verify Save Popup Texts 
	Then User Save All Report Exit 
	Then Verify and Click Save Button 
	Then User Save All Report Save And Exit 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
	Then User Save All Report Save And Return to Report 
	
	Examples: 
		|TestData|
		|TD_001|