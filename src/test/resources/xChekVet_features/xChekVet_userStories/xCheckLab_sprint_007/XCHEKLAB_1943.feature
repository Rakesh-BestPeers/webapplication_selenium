Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1943 :: As an xChekVet User, I should be able to see the default view of the baseline screen

		Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link
	Then User Click on Baseline Linked text on Select Data Analyze Case
    Then User Verify Baseline Dashboard
    Then User Click on create New Baseline button
    Then User Select Single Assay on Baseline
    Then User Select Method Manual Baseline
    Then User Verify Assay code and Assay name in datatable Baseline
    Then User Click on OK button Baseline
     Then User Click on create New Baseline button
     Then User Click on CANCEL button baseline
      Then User Click on create New Baseline button
	 Then User Click on OK button Baseline
	
  
	
	Examples: 
		|TestData|
		|TD_001|