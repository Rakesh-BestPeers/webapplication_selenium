Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_470 As an xChekVet user, I should be able to navigate to the Analyze Case Report screen to display the variables selected in the variable selection window for Poultry

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then User Select Multiple Assay
	Then User Select Dates Only
	Then User Verify Default Data Table
	Then User Click on Variables
    Then User Verify Variable Popup Texts
    Then User Select Multiple Variables
   Then User Verify Variables In DataTable

	Examples: 
		|TestData|
		|TD_001|