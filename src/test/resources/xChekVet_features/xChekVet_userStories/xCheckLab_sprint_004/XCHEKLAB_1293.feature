Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1293 As a xcheckvet compnay user I should be able to see text as "View Report" on the breadcrumb instead of Run Report.
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	 Then User Select Multiple Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
	Then Verify View Report on breadcrumb
	Then Click on View Report Ribbon

	Examples: 
		|TestData|
		|TD_001|