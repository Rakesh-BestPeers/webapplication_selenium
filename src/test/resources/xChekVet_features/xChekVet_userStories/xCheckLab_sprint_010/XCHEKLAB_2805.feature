Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_2805 :: As an xChekVet user (Company Admin), I should be able to see the company details on my dashboard for which I'm a registered user

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Company Profile Text on Page
	Then User Click on company ADD COMPANY button
	Then User Verify Company Administartion Text on Page
    Then User Click on company ADD PROFILE button
	Then User Verify Text of fields and Operation on Fields on Add Company Profile details Popup
	Then User Click on Add Company Profile SAVE Button
    Then User Click Company Administartion Associated Lab Tab
    Then User Click on Company Administartion Users Tab ADD LAB button
	 Then User Fill User information in Associated Lab Details Popup
	 Then User Click on Add Company Profile SAVE Button
	Then User Click Company Administartion Users Tab
	 Then User Click on Company Administartion Users Tab ADD USER button
	 Then User Fill User information in Users Popup
	 Then User Click on Company Administartion Users ADMINISTRATOR toggle
	 Then User Click on Add Company Profile SAVE Button
	 Then User redirect to MAILNESIA for confirm mail

	
	Examples: 
		|TestData|
		|TD_001|