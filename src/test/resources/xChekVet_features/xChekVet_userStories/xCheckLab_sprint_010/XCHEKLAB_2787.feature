Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2787 :: As a xCheckvet Company user, I should be able to "Save View" of the "View Graph" screen so that I can access again the same graph view anytime after saving it. 

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
   Then User Click on Save View Button on View Graph
   Then User Click on Cancel Button of Save Multiple cases view popup 
   Then User Click on Save View Button on View Graph
   Then User Click on Save and return to View on View Graph
   Then User Click on Save View Button on View Graph
   Then User Click on Save And Exit on View Graph
#   Then User Click on View Report breadcrumbs
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
   Then user Click on Close Button  on View Graph
   Then user Click on YES Exit Without Saving
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
   Then user Click on Close Button  on View Graph
   Then user Click on NO Exit Without Saving
    Then User Click on Save And Exit on View Graph
	
	Examples: 
		|TestData|
		|TD_001|