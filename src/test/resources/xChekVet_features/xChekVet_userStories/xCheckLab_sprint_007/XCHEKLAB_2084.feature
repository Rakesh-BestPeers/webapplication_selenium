Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1502 As a xCheckvet company user, I should be able to see a type of cursor on the table in the Define data group screen that indicates to the user that multiple data can be selectable to define a group.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Multi Case Report Link
	Then User Click on Define data groups breadcrumbs
	Then Verify define data groups page
	Then user Click on View Graph breadcrumbs
	Then User Verify view graph page
	Then User Click on View Report breadcrumbs
	Then User Verify view report page
	Then User Click on Select data breadcrumbs
  Then User Verify select data page
	
	Examples: 
		|TestData|
		|TD_001|
		
		