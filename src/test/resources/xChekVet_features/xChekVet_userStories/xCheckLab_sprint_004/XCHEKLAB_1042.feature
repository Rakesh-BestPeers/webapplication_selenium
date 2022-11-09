Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1042 As a developer, I should be able to display the assay name in the tooltip on the search case screen if is it too long
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Verify Analyze Case Dashboard 
	Then Verify Single Assay Tooltip Text
	
	Examples: 
		|TestData|
		|TD_001|