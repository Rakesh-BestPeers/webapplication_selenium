Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1759 :: As an xChekVet User, I should have a "View" Icon  on dashboard under recent activity do that I can View my saved reports on click of "View".

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
    Then User Click on View icon of Recent Reports
    Then User Verify Edit Button on View Report
	
  
	
	Examples: 
		|TestData|
		|TD_001|