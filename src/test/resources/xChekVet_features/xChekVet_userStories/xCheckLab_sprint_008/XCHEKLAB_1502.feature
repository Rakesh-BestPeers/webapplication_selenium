Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1502 :: As a xCheckvet company user, I should be able to see a type of cursor on the table in the Define data group screen that indicates to the user that multiple data can be selectable to define a group.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Multi Case Report Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs 
	Then User Mouse Hover to Outer of DataTable
	Then User Mouse Hover to Inner of DataTable
	
	Examples: 
		|TestData|
		|TD_001|