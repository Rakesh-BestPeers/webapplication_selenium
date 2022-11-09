Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3153 :: As a xCheckvet Compnay user, I should have an option to update the "Title" of the SPC chart So that I can generate the report with the Tittle of my choice.

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
	Then User Upload Large Size Logo with Expectation view report multiple cases
	Then User Upload Vertical Logo with Expectation view report multiple cases
	Then User Upload Horizontal Logo with Expectation view report multiple cases
    Then User Delete the previous Logo
	Then User Upload Genuine Logo with Expectation view report multiple cases
	Then User Select Do not Display Custom Logo Radio button
	Then User Select Custom Logo Radio button
	Then User Upload Genuine Logo with Expectation view report multiple cases
	
	Examples: 
		|TestData|
		|TD_001|