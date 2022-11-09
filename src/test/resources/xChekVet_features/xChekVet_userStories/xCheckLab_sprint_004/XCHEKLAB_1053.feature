Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1053 As a xChekVet Company user I should be able to see common Header & Footer of "Analyze Case Report" in every page of the reports when I am on Run Report Screen.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
#	Then Verify Analyze Case Report Logo
	Then Verify Header & Footer of Analyze Case Report
	
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Unchecked Default Format and Select in Block Options and Sort By
	Then Click on View Report Ribbon
#	Then Verify Analyze Case Report Logo
	Then Verify Header & Footer of Analyze Case Report
	
	Then User Click on Logout Button
	
	Then Uer Enter Valid Credentials for Company User  
	Then User Click on Analyze Case Link 
	 Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
#	Then Verify Analyze Case Report Logo
	Then Verify Header & Footer of Analyze Case Report
	
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Unchecked Default Format and Select in Block Options and Sort By
	Then Click on View Report Ribbon
#	Then Verify Analyze Case Report Logo
	Then Verify Header & Footer of Analyze Case Report

	
	Examples: 
		|TestData|
		|TD_001|