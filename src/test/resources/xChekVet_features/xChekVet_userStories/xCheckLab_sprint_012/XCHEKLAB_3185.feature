Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3185 :: As a company user, I should be able to navigate to "view report" and able to see generated SPC chart report.

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
	Then User Right Click and Grouped Selected Four Assays
	Then  user Click on View Charts breadcrumb SPC chart
	Then User Verify View Charts text of SPC chart
	Then  User Click on View Report breadcrumb SPC chart
	Then User Verify Customization Texts
	Then User rename Report Name on view report
	Then User verify company and test name SPC
	Then User verify outlier report view report SPC
	Then User verify report fileds view report SPC
	Then User verify pagination on view report SPC
	Then User verify Logo on View report SPC
	Then User Upload Genuine Logo with Expectation view report multiple cases
	Then User Select Do not Display Custom Logo Radio button
	Then User Select Custom Logo Radio button
	Then User Upload Genuine Logo with Expectation view report multiple cases
	
	

	Examples: 
		|TestData|
		|TD_001|