Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3152 :: As a xCheckvet Compnay user, I should have an option to upload the custom logo on "View Report" of SPC chart So that I can upload the logo of my choice.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company User 
	Then User Click on SPC Chart Link
	Then User Verify Select Data Text of SPC chart 
     Then User Select Multiple Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Click on Define Charts Limit Groups breadcrumb SPC chart
	Then User Verify Define Charts Limit text of SPC chart
	Then User Select Four Assay in Multiple Cases Define Groups Table
	Then User Right Click and Grouped Selected Next Four Assays
	Then  user Click on View Charts breadcrumb SPC chart
	Then User Verify View Charts text of SPC chart
	Then  User Click on View Report breadcrumb SPC chart
	Then User Verify Customization Texts
	Then User rename Report Name on view report
	Then User Upload Large Size Logo with Expectation view report multiple cases
	Then User Upload Vertical Logo with Expectation view report multiple cases
	Then User Upload Horizontal Logo with Expectation view report multiple cases
#    Then User Delete the previous Logo
	Then User Upload Genuine Logo with Expectation view report multiple cases
	Then User Select Do not Display Custom Logo Radio button
	Then User Select Custom Logo Radio button
	Then User Upload Genuine Logo with Expectation view report multiple cases
	
	Examples: 
		|TestData|
		|TD_001|