Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1040 As a developer, I should be able to restrict the user to select a maximum seven-block option on the configure report screen 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
   Then User Verify Selected Block Options 
   Then User Verify SP and SN Selections
	
	Examples: 
		|TestData|
		|TD_001|