Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3309 :: As an xCheckVet company user I should be able to see "Box Plot" as a heading & four breadcrumbs segment on Select data screen.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Box Plot link
	Then User Verify Select Data Header Box Plot
	 Then User Select Single Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Click on Reset Search select data Box Plot
	Then User Click on Close button select data box plot 
	
	
	
	Examples: 
		|TestData|
		|TD_001|