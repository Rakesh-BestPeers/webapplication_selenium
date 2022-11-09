Feature: To Execute the Sanity Test Plan for idexxCloud xChekVet Reporting 

Scenario Outline: XCHEKLAB_analyzeCase :: As an xChekVet User, I should be able to test Analyze Case.

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Verify Login Page
	Then Uer Enter Valid Credentials for Company User 
	Then User Verify Companyadmin Dashboard
	Then User Verify Login Username on Top
	Then User Click on Analyze Case Link
	Then User Verify Analyze Case Dashboard
	Then User Click on Assays Collapse
	Then User Verify Assay Code and Name
	Then User Select Multiple Assay
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
	Then User configure Report Sorting dropdowns
	Then User Upload Genuine Logo with Expectation
	Then Click on View Report Ribbon
	Then Verify View Report on breadcrumb
	Then Verify and Click Save Button
	Then User Save All Report Save And Exit
	
	Examples: 
		|TestData|
		|TD_001|
#	Then User Click on Baseline Linked text on Welcome Dashboard
#	Then User Verify Baseline Dashboard
#    Then User Click on create New Baseline button
#      Then User Verify Assay code and Assay name in datatable Baseline
#    Then User Select Single Assay on Baseline
#    Then User Select Method Criteria Baseline
#    Then User Click on OK button Baseline
#    Then User Click on Right Panel Edit Button
#    Then User Can Change NAME in Edit Option
#    Then User Can Change BaseLine Set Details in Edit Option
#    Then User Click on SELECT DATA BaseLine Set Details in Edit Option
#    Then User Verify Baselines SELECT DATA page
#    Then User Verify Baselines SELECT DATA datatable texts
#    Then User Perform From Date Cases 
#    Then User Select multiple assays on Baselines SELECT DATA datatable
#    Then User Verify Breadscrumbs on Baselines SELECT DATA page
#    Then User Click On RETURN TO BASELINE
#    Then Redirect to Welcome Dashboard Page
#Scenario Outline: XCHEKLAB_multipleCase :: As an xChekVet User, I should be able to test Multiple Case.
#	Then User Click on Multi Case Report Link 
#	Then User Select Multiple Assay 
#	Then User Perform From Date Cases 
#	Then User Select multiple CaseID in table 
#	Then User Verify Select Data Screen of Multi Case Report 
#	Then User Click on Data Define Groups from breadcrumbs
#	Then User Verify Data Define Groups of Multi Case Report
#	Then User Click on RESET Button define groups
#	Then User Select Four Assay in Multiple Cases Define Groups Table
#	Then User Right Click and Grouped Selected Four Assays 
#	Then  user Click on View Graph breadcrumbs
#	Then User on SaveView  View graph MultipleCase Report
#	Then  User Click on View Report breadcrumbs
#	Then User Verify Customization Texts
#	Then User Upload Genuine Logo with Expectation view report multiple cases
#	Then User rename Report Name on view report
#	Then user Click on Close Button  on View Graph
#	Then User Click on Delete icon of Recent Reports
#	Then User Click on Logout Button
#	
#	Examples: 
#		|TestData|
#		|TD_001|
#	Scenario Outline: XCHEKLAB_companyAdministration :: As an xChekVet User, I should be able to test Company Administration.	
#	Then Uer Enter Valid Credentials for Super Admin 
#	Then User Verify Company Profile Text on Page
#	Then User Click on company ADD COMPANY button
#	Then User Verify Company Administartion Text on Page
#    Then User Click on company ADD PROFILE button
#	Then User Verify Text of fields and Operation on Fields on Add Company Profile details Popup
#	Then User Click on Add Company Profile SAVE Button
#    Then User Click Company Administartion Associated Lab Tab
#    Then User Click on Company Administartion Users Tab ADD LAB button
#	Then User Fill User information in Associated Lab Details Popup
#	 Then User Click on Add Company Profile SAVE Button
#	Then User Click Company Administartion Users Tab
#	Then User Click on Company Administartion Users Tab ADD USER button
#	 Then User Fill User information in Users Popup
#	 Then User Click on Company Administartion Users ADMINISTRATOR toggle
#	 Then User Click on Add Company Profile SAVE Button
#	 Then User redirect to MAILNESIA for confirm mail
#	 Then User enter new passwords and Save in company profile
#	 Then Uer Enter Valid Credentials for Super Admin 
#	 Then User Edit last updated company profile
	 
	
	
	
#	Examples: 
#		|TestData|
#		|TD_001|