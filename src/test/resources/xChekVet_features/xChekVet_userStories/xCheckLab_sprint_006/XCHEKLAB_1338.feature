Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1338 As a xCheckVet Company User I should be have a Pagination option on "View Report" of case analyze so that I can see the report details on multiple pages.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report
	Then Click on View Report Ribbon
	Then User Verify Pagination of Report
  
	
	Examples: 
		|TestData|
		|TD_001|