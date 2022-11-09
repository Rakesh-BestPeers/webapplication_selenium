Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
Scenario Outline: IXR_135 As a User , I should be able to see IDEXX datahub welcome screen and navigate to login, request information
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Verify Welcome Screen Text 
#	Then User Verify Idexx Logo 
	Then User Verify Clickable 
	
	Examples: 
		|TestData|
		|TD_001|