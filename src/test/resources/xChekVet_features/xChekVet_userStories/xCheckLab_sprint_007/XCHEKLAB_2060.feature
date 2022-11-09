Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2060 :: As an xChekVet User, I should have a "Delete" Icon on dashboard under recent activity so that I can Delete my saved reports on click of "Delete".

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
    Then User Click on Delete icon of Recent Reports
    Then User Click on NO Delete recent report popup
	Then User Click on Delete icon of Recent Reports
	Then User Click on YES Delete recent report popup 

	
	Examples: 
		|TestData|
		|TD_001|