Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2115 :: As a user, I should be able to see default variables list depending upon the cases in the case selection panel. 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Poultry Assay
	Then User Click on Variables
 	Then User Verify Poultry Assay variables
 	Then User Close Variables Popup
	Then User Click Reset Icon
	Then User Select Swine Assay
	Then User Click on Variables
     Then User Verify Swine Assay variables
     Then User Close Variables Popup
    Then User Click Reset Icon
    Then User Select Poultry and Swine Assays
    Then User Click on Variables
 	Then User Verify Poultry and Swine Assays variables
 	Then User Close Variables Popup
	Then User Click Reset Icon
	 Then User Select Poultry and Swine Assays
	 Then User Click on Variables
	 Then User Verify Dynamic Variables from variable popup
	 Then User Select Dynamic Variables from variable popup
	 Then User Close Variables Popup
	  Then User Verify Dynamic Variables on DataTable Screen
	  Then User Click on Variables
	  Then User Unselect Dynamic Variables from variable popup
	
  
	
	Examples: 
		|TestData|
		|TD_001|