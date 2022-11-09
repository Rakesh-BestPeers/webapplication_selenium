Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1314 As an xChekVet company user I should be able to see values under Case option on configure screen so that I can generate the Case analyze report by choosing the case options value as per my preference.. 
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Click on Configure Report
	Then User Verify Case Options Texts
	Then User Verify Checked First Row Default Case Options
	Then User Select Checked Other Rows Case Options
	Then User Verify Checked Other Rows Case Options
	Then User Select Unchecked Other Rows Case Options
	Then User Verify Unchecked Other Rows Case Options
  
	
	Examples: 
		|TestData|
		|TD_001|