Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_4492 :: As an xChek Vet User, I should be able to generate GMT Time Series report and navigate to select data screen

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on GMT Time Series Link 
	Then User Verify Assay Code and Name 
	Then User Click on Assays Collapse 
	Then User Select Single Assay 
	Then User Select Dates Only 
	Then User Select two CaseID in table 
	Then User Click on Define Data Groups from breadcrumbs 
	Then User Click on SELECTALL Checkbox define groups 
	Then User Click on RESET Button define groups 
	Then User Select Four Assay in Multiple Cases Define Groups Table 
	Then User Right Click and Grouped Selected Four Assays 
	Then User Right Click and UnGrouped Selected Four Assays
	 Then User Right Click and UnGrouped Selected Next Four Assays
	Then User Click on Select data breadcrumbs
	Then User Click Reset Icon
Then User Verify Reset Screen
Then User Click Close button Select data analyze case
	
	
	Examples: 
		|TestData|
		|TD_001|