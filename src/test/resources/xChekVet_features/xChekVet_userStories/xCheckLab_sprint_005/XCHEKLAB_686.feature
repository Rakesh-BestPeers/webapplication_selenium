Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@686
Scenario Outline: XCHEKLAB_686 As an xChekVet user, I should be able to see the header and footer getting repeated on each page in a multi-page report
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Perform From Date Cases
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Verify Configure Report Dashboard
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Verify Header & Footer of Analyze Case Report
	Then User Scroll Down for next Report
	Then Verify First Column on Report Header
	Then Verify Header & Footer of Analyze Case Report
  
	Examples: 
		|TestData|
		|TD_001|