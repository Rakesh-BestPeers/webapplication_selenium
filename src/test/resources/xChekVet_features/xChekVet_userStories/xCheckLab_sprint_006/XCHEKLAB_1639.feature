Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1639 As a xCheckVet company user, I should be able to customize  the group configuration  So that I can create a group with customized setting.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
 
  
	
	Examples: 
		|TestData|
		|TD_001|