Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1503 :: As a xCheckVet company user I should be able to select the multiple cases from Define data group so that I can create the groups. 

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
	Then User Select Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Four Assays 
	Then User Select Next Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Next Four Assays 
	Then User Right Click and UnGrouped Selected Four Assays 
#	Then User Right Click and UnGrouped Selected Next Four Assays  
	
	
	Examples: 
		|TestData|
		|TD_001|