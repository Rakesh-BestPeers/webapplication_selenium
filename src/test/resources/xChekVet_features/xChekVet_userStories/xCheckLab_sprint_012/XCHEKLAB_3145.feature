Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3145 :: As an xChekVet Company user, I should be able to navigate on any screen via breadcrumbs when I am on the "Define Chart Limits" screen so that I can make the changes on any screen and can see reflection on groups.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on SPC Chart Link
	Then User Verify Select Data Text of SPC chart 
    Then User Select Single Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Click on Define Charts Limit Groups breadcrumb SPC chart
	Then User Verify Define Charts Limit text of SPC chart
	Then User Click on Select Data breadcrumb SPC chart
	Then User Select Multiple Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Click on Define Charts Limit Groups breadcrumb SPC chart
	Then User Select Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Four Assays 
	Then  user Click on View Charts breadcrumb SPC chart
	Then User Verify View Charts text of SPC chart
	Then  User Click on View Report breadcrumb SPC chart
	
	Examples: 
		|TestData|
		|TD_001|