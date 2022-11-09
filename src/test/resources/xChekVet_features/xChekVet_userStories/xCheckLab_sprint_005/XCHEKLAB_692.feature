Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@692
Scenario Outline: XCHEKLAB_692 As an xChekVet user, I should be able to add a Laboratory profile while creating a company instance
    Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Right Panel Text
	Then User Click on Add Company hyperlink
	Then User Verify Company Administartion Page
	Then User Verify Company Setup
	Then User Verify Company Profile
	Then User Fill Fields on Company Profile
	Then User Verify Company Contacts
	Then User Fill Fields on Company Contacts
	Then User Verify laboratory Profile
	Then User Fill Fields On Laboratory Profile
	Then User Verify Laboratory Contacts
	Then User Fill the fields of Laboratory Contacts
	Then User Click on Cancel Button
	Then User Click on Save Button
  
	
	Examples: 
		|TestData|
		|TD_001|