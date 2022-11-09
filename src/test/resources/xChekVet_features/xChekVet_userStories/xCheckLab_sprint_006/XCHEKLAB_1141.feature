Feature: To Execute the Smoke Test Plan for idexxCloud xChekVet Reporting 

Scenario Outline: XCHEKLAB_1141 As an xChekvet company user I should be able to see my all saved reports on the Dashboard under "Recent Reports" section.

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
	Then User Save Current Report Save And Exit 
	Then User Verify Recent Reports DataTable Text
	Then User Verify Data on Recent Report Table
	
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
	Then User Save Current Report Save And Return to Report 
	Then Redirect to Welcome Dashboard Page 
	Then User Verify Recent Reports DataTable Text
	Then User Verify Data on Recent Report Table
	
	
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
Then User Save All Report Save And Exit 
Then User Verify Recent Reports DataTable Text
	Then User Verify Data on Recent Report Table


	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report 
	Then Click on View Report Ribbon 
	Then Verify and Click Save Button 
	Then User Save All Report Save And Return to Report 
	Then Redirect to Welcome Dashboard Page 
	Then User Verify Recent Reports DataTable Text
	Then User Verify Data on Recent Report Table
  
	
	Examples: 
		|TestData|
		|TD_001|