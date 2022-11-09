Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3031 :: As a user, I should be only able to select the cases of the same Assay's to create a group on "Data define Group" screen while Generating the Multiple Case Report.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Multi Case Report Link 
	Then User Select Two Random Assay
	Then User Perform From Date Cases 
	Then User Select two CaseID in table 
Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs
	Then User Verify Data Define Groups of Multi Case Report
   Then User Select two Assay in Multiple Cases Define Groups Table
	Then  user Click on View Graph breadcrumbs
	Then User Verify Error Popup of different Assays
	
	Examples: 
		|TestData|
		|TD_001|