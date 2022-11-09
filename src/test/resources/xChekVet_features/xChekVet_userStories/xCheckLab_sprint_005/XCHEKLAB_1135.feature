Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@1135
Scenario Outline: XCHEKLAB_1135 As a xChekvet Company user I should be able to see “Download” option on Analyze case View Report screen so that I can Download the Analyze report.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify and Click Download Button
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases
	Then User Select multiple CaseID in table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then Verify and Click Download Button
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify and Click Download Button
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases
	Then User Select multiple CaseID in table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then Verify and Click Download Button
	
	
	Examples: 
		|TestData|
		|TD_001|