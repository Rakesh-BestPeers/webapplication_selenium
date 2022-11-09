Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2891 :: As a user, I should have an Option "Select All" on Data define group screen while generating the Multiple case report so that at a time I can select the all cases in single click.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Multi Case Report Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs
	Then User Verify Data Define Groups of Multi Case Report
	Then User Click on SELECTALL Checkbox define groups
	Then User Select Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Four Assays 
    Then User Click on SELECTALL Checkbox define groups
	Examples: 
		|TestData|
		|TD_001|