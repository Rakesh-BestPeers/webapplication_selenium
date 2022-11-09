Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@689
Scenario Outline: XCHEKLAB_689 As an xChekVet user, I should be able to create new company instance

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Right Panel Text
	Then User Click on Add Company hyperlink
	Then User Verify Company Administartion Page
#	Then User Click on Company Setup Expand/Collpase
	Then User Verify Company Setup
	Then User Select Company Setup
#	Then User Click on Company Profile Expand/Collpase
	Then User Verify Company Profile
	Then User Fill Fields on Company Profile
	Then User Verify Company Contacts
	Then User Fill Fields on Company Contacts

  
	Examples: 
		|TestData|
		|TD_001|