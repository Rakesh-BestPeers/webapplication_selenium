Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_3156 :: As a xCheckvet Compnay user, I should have "Download " option for the generated SPC chart report so that I can Download the report.

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
	Then user Click on Download button View Report SPC
	
	

	Examples: 
		|TestData|
		|TD_001|