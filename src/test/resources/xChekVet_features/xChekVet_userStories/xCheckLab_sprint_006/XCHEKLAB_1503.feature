Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1503 As a xCheckVet company user I should be able to select the multiple cases from Define data group so that I can create the groups. 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	
  
	
	Examples: 
		|TestData|
		|TD_001|