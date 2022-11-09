Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1933 :: As an xChekVet User, I should be able to navigate to the baseline screen.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Baseline Linked text on Welcome Dashboard
    Then User Verify Baseline Dashboard
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Click on Baseline Linked text on Select Data Analyze Case
    Then User Verify Baseline Dashboard
	Then Redirect to Welcome Dashboard Page
    Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report
	Then User Click on Baseline Linked text on Configure Report Analyze Case
    Then User Verify Baseline Dashboard
	Then Redirect to Welcome Dashboard Page 
	Then User Click on Multi Case Report Link 
	Then User Click on Baseline Linked text on Select Data Multi Case
    Then User Verify Baseline Dashboard
	Then Redirect to Welcome Dashboard Page
	Then User Click on Multi Case Report Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Data Define Groups from breadcrumbs
	Then User Click on Baseline Linked text on Define Groups Multi Case
	 Then User Verify Baseline Dashboard
	
	Examples: 
		|TestData|
		|TD_001|