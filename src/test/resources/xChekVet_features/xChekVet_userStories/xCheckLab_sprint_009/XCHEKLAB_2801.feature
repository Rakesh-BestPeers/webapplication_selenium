Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2801 :: As an xChekVet user, I should be able to Add a company through Add Profile button and then Edit it.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin
	Then User Click on right company user Dropdown 
	Then User Click on View Edit Company Profile of dropdown
	Then User Verify Company Administration Page Text
	Then User Click on Company Administration ADD PROFILE hyperlink
	Then User Verify Add Company Profile Details Popup Header Text
	Then User Verify Text of fields and Operation on Fields on Add Company Profile Popup
	Then User Click on Add Company Profile CANCEL Button
    Then User Click on Company Administration ADD PROFILE hyperlink
	Then User Verify Add Company Profile Details Popup Header Text
	Then User Verify Text of fields and Operation on Fields on Add Company Profile Popup
	Then User Click on Add Company Profile SAVE Button
	Then user Verify CompanyID and Status of Added Company Profile
	Then User Click on Company Administration EDIT PROFILE hyperlink
	Then User Verify Edit Company Profile Details Popup Header Text
	Then User Verify Text of fields and Operation on Fields on Edit Company Profile Popup
Then User Click on Edit Company Profile CANCEL Button
	Then User Click on Company Administration EDIT PROFILE hyperlink
	Then User Verify Edit Company Profile Details Popup Header Text
	Then User Verify Text of fields and Operation on Fields on Edit Company Profile Popup
	Then User Click on Edit Company Profile SAVE Button
	
	Examples: 
		|TestData|
		|TD_001|