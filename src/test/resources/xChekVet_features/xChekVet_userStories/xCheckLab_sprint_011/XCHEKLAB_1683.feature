Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1683 :: As a xCheckVet Company User I should be have a Pagination option on "View Report" of multiple case so that I can see the report details on multiple pages.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Multi Case Report Link 
	Then User Select Multiple Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs
	Then User Verify Data Define Groups of Multi Case Report
   Then User Select Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Four Assays 
	Then  user Click on View Graph breadcrumbs
	Then  User Click on View Report breadcrumbs
	Then User Perform Forward Pagination view report multi case
#	Then User Perform Backward Pagination view report multi case
	Examples: 
		|TestData|
		|TD_001|