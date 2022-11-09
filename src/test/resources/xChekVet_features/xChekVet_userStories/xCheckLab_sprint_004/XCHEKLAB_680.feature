Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_680 As an xChekVet user, I should be able to manipulate the case comment footer section in the Analyze case report configuration 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify Case Comment footer on Report for Unchecked
	  Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Unchecked Case Comments
	Then Click on View Report Ribbon
	Then Verify Case Comment footer on Report for Unchecked
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Checked Case Comments
	Then Click on View Report Ribbon
	Then Verify Case Comment footer on Report
	Then Click on View Report Ribbon
	Then Verify Case Comment footer on Report
	Examples: 
		|TestData|
		|TD_001|