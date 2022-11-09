Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2017 :: As an xChekVet company User, I should be able to see an option "Criteria" so that I can create Criteria-Based baseline
    
    Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link
	Then User Click on Baseline Linked text on Select Data Analyze Case
    Then User Verify Baseline Dashboard
     Then User Click on create New Baseline button
     Then User Click on CANCEL button baseline
    Then User Click on create New Baseline button
    Then User Verify Assay code and Assay name in datatable Baseline
    Then User Select Single Assay on Baseline
    Then User Select Method Criteria Baseline
    Then User Click on OK button Baseline
    Then User Click on Right Panel Edit Button
    Then User Can Change NAME in Edit Option
    Then User Can Change MEAN in Edit Option
    Then User Can Change Calculation Method in Edit Option
    Then User Can Change BaseLine Set Details in Edit Option
    Then User Can Change COMMENTS in Edit Option
    Then User Click on SAVE button in Edit Option
     Then User Click on CLOSE button in Edit Option
     
	
	Examples: 
		|TestData|
		|TD_001|