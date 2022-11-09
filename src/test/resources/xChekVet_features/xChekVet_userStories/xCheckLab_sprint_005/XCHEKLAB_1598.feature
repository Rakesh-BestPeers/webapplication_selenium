Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@1598
Scenario Outline: XCHEKLAB_1598 As a xCheckVet company user I should be able to see "Case ID" at the top of the variable filters for Poultry on select data screen.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Click on Variables
    Then User Verify Variable Popup Texts
    Then User Select Multiple Variables
    Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Click on Variables
    Then User Verify Variable Popup Texts
    Then User Select Multiple Variables

	Examples: 
		|TestData|
		|TD_001|