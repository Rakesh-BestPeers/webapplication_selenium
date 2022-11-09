Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2084 :: As an xChekVet User, I should be able to delete the baseline created by the user 
	
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
    Then USer Click on DELETE button Baseline
    Then User Click on NO button of Delete Popup
Then USer Click on DELETE button Baseline
    Then User Click on YES button of Delete Popup

	
  Examples: 
		|TestData|
		|TD_001|