Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@1307
Scenario Outline: XCHEKLAB_1307 As a xCheckVet company user I should be able to choose "Case ID along with farm" from dropdown on Analyze case View Report so that I can view the other cases report
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases
	Then User Select multiple CaseID in table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then User Verify Left Panel CaseID Dropdown 
	Then Redirect to Welcome Dashboard Page 
   Then User Click on Analyze Case Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases
	Then User Select multiple CaseID in table
	Then Click on View Report Ribbon
	Then User Verify Left Panel CaseID Dropdown 
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases
	Then User Select multiple CaseID in table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then User Verify Left Panel CaseID Dropdown 
	Then Redirect to Welcome Dashboard Page 
   Then User Click on Analyze Case Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases
	Then User Select multiple CaseID in table
	Then Click on View Report Ribbon
	Then User Verify Left Panel CaseID Dropdown 
	
	Examples: 
		|TestData|
		|TD_001|