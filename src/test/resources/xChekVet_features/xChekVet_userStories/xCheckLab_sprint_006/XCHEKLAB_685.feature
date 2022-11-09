Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_685 As an xChekVet user, I should be able to sort analyze case report by selecting an option through the Analyze case configuration screen

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then Click on View Report Ribbon 
	Then Verify Report Sorting dropdowns reflection in view report
	Then User Click on Configure Report 
	Then User Verify Configure Report Dashboard 
	Then User configure Report Sorting dropdowns
	Then Click on View Report Ribbon 
	Then Verify Report Sorting dropdowns reflection in view report
  Then Redirect to Welcome Dashboard Page 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon 
	Then Verify Report Sorting dropdowns reflection in view report
	Then User Click on Configure Report 
	Then User Verify Configure Report Dashboard 
	Then User configure Report Sorting dropdowns
	Then Click on View Report Ribbon 
	Then Verify Report Sorting dropdowns reflection in view report
	
	Examples: 
		|TestData|
		|TD_001|