Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 
@1115
Scenario Outline: XCHEKLAB_1115 As an xChekVet User, I should be able to see “Save” option on the view report screen so that I can save the Analyze report for the first time if there is single case or multiple case selected 

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