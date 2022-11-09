Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@1303
Scenario Outline: XCHEKLAB_1303 As a xCheckVet company user I should be able to see "Farm name along with Case ID along" in dropdown on Analyze case View Report
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Perform From Date Cases
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
#	Then User Verify Left Panel Texts
	Then Redirect to Welcome Dashboard Page 
    Then User Click on Analyze Case Link 
	Then User Perform From Date Cases
	Then User Select Assay In Table
	Then Click on View Report Ribbon
#	Then User Verify Left Panel Texts
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User
	Then User Click on Analyze Case Link 
	Then User Perform From Date Cases
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
#	Then User Verify Left Panel Texts
	Then Redirect to Welcome Dashboard Page 
    Then User Click on Analyze Case Link 
	Then User Perform From Date Cases
	Then User Select Assay In Table
	Then Click on View Report Ribbon
#	Then User Verify Left Panel Texts
	
	Examples: 
		|TestData|
		|TD_001|