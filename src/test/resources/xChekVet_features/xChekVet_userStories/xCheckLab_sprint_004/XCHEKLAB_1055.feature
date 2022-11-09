Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1055 As a xChekVet (Company Admin/Company user )I should be able to see some values (fixed & floating) on header of "Analyze Case Report" in every page of the reports when I am on Run Report Screen.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	 Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Unchecked Default Format and Select in Block Options and Sort By
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	 Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
#	Then Redirect to Welcome Dashboard Page
#	Then User Click on Analyze Case Link 
#	Then User Select Single Assay
#	Then User Select Dates Only
#	Then User Select Assay In Table
#	Then User Click on Configure Report
#	Then Click on View Report Ribbon
#	Then  Verify Three Columns on Report Header
#	Then Redirect to Welcome Dashboard Page
#	Then User Click on Analyze Case Link 
#	Then User Select Single Assay
#	Then User Select Dates Only
#	Then User Select Assay In Table
#	Then User Click on Configure Report
#	Then User Select Case Options of Configure Report
#	Then Click on View Report Ribbon
#	Then Verify Three Columns on Report Header
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User  
	Then User Click on Analyze Case Link 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link
	Then User Click on Analyze Case Link  
	 Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Unchecked Default Format and Select in Block Options and Sort By
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then Verify First Column on Report Header
#	Then Redirect to Welcome Dashboard Page
#	Then User Click on Analyze Case Link 
#	Then User Select Single Assay
#	Then User Select Dates Only
#	Then User Select Assay In Table
#	Then User Click on Configure Report
#	Then Click on View Report Ribbon
#	Then Verify Three Columns on Report Header
#	Then Redirect to Welcome Dashboard Page
#	Then User Click on Analyze Case Link 
#	Then User Select Single Assay
#	Then User Select Dates Only
#	Then User Select Assay In Table
#	Then User Click on Configure Report
#	Then User Select Case Options of Configure Report
#	Then Click on View Report Ribbon
#	Then Verify Three Columns on Report Header
	
	Examples: 
		|TestData|
		|TD_001|