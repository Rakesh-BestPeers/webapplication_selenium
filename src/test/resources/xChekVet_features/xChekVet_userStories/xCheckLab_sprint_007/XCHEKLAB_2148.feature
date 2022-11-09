Feature: To Execute the Smoke Test Plan for idexxCloud xChekVet Reporting 

Scenario Outline: XCHEKLAB_2148 :: As a xcheckvet company user, I should not see the values of the first column in the header of Analyze case report if it is unchecked in case option on configure screen.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report
	Then User Click on Default Format of Configure Report
	Then User Verify Case Options Texts
#	Then User Verify Checked First Row Default Case Options
	Then User Unchecked One Case Option of First Row
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	 Then User Click on Configure Report
	 Then User Unchecked All First Row Case Options
	 Then Click on View Report Ribbon
	 Then Verify Unchecked First Column on Report Header
	
	Examples: 
		|TestData|
		|TD_001|