Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1639 :: As a xCheckVet company user, I should be able to customize  the group configuration  So that I can create a group with customized setting.

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
	Then User Verify Right Panel GROUP NAME text
	Then User Verify Right Panel DATA CHART TYPE dropdown text
	Then User Verify Right Panel MEAN dropdown text
	Then User Verify Right Panel HORIZONTAL AXIS LABEL dropdown text
	Then User Verify Right Panel DATA LABELS toggle button
	Then User Verify Right Panel BASELINE toggle button
	
	
	
	Examples: 
		|TestData|
		|TD_001|