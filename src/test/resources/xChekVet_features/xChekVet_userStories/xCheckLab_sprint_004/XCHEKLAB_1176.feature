Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1176 As a xcheckvet user I should be able to update the variable filters for Poultry on select screen data
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Click on Variables
	Then User Click on Variable Close Popup
	Then User Click on Variables
	Then User Verify Variable Popup Texts
	Then User Click on Variable Close Popup
	Then User Click on Variables
	 Then User Select Multiple Variables
	 Then User Click on Variable Close Popup
	
	Examples: 
		|TestData|
		|TD_001|