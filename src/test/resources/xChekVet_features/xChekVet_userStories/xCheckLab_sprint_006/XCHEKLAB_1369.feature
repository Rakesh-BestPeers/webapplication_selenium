Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1369 As a xCheckVet compnay user I should be able to see "Multiple Cases" as a heading & four breadcrumbs segment on Select data screen. 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Multi Case Report Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs 
	Then user Click on View Graph breadcrumbs
	Then User Click on View Report breadcrumbs
	Then User Click on Select data breadcrumbs
  
  
	
	Examples: 
		|TestData|
		|TD_001|