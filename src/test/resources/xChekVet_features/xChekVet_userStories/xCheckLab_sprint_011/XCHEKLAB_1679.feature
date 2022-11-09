Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1679 :: As a xCheckvet Compnay user, I should have "Download " option for the generated multiple case report so that I can Download the report.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on Multi Case Report Link 
	Then User Select Single Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs
	Then User Verify Data Define Groups of Multi Case Report
   Then User Select Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Four Assays 
	Then  user Click on View Graph breadcrumbs
	Then  User Click on View Report breadcrumbs
	Then User Verify Customization Texts
	Then User Upload Genuine Logo with Expectation view report multiple cases
	Then User rename Report Name on view report
	Then User Click on Download button of view Report
	
	
	Examples: 
		|TestData|
		|TD_001|