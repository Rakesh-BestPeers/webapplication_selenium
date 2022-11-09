Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1675 :: As an xChekVet User, I should be able to navigate one screen forward and backward on click of breadcrumb while creating multiple case report report.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Multi Case Report Link 
    Then User Select Single Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs
	Then User Verify Data Define Groups of Multi Case Report
	Then  user Click on View Graph breadcrumbs
	Then  User Click on View Report breadcrumbs
	Then user Verify Select Data bread 
	
	
	
	Examples: 
		|TestData|
		|TD_001|