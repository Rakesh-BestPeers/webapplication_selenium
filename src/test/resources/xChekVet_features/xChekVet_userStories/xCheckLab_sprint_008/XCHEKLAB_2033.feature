Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2033 :: As a XChekVet company user, I should have an option for "Calculation" while creating criteria based baseline so that I can use calculation options to recalculate the baseline as per my choice.
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report
	Then User Click on Baseline Linked text on Configure Report Analyze Case
	Then User Verify Baseline Dashboard
     Then User Click on create New Baseline button
     Then User Verify Assay code and Assay name in datatable Baseline
    Then User Select Single Assay on Baseline
    Then User Select Method Criteria Baseline
    Then User Click on OK button Baseline
    Then User Click on Right Panel Edit Button
    Then User Can Change NAME in Edit Option
    Then User Can Change Calculation Method in Edit Option
    
#    Then User Can Change COMMENTS in Edit Option
#     Then User Click on SAVE button in Edit Option
	
	Examples: 
		|TestData|
		|TD_001|