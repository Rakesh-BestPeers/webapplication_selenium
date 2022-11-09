Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1059 As a xChekVet Company user I should be able to see Graph, Statistics, Baseline & Controls (Under block)placeholders section in "Analyze Case Report" when I am on Run Report Screen.
	
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
	Then Verify Graph Statistic Baseline Controls Section
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify Graph Statistic Baseline Controls Section
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then Verify Graph Statistic Baseline Controls Section
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User  
	Then User Click on Analyze Case Link 
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then Click on View Report Ribbon
	Then Verify Graph Statistic Baseline Controls Section
	Then Redirect to Welcome Dashboard Page
	 Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then Click on View Report Ribbon
	Then Verify Graph Statistic Baseline Controls Section
	Then Redirect to Welcome Dashboard Page
	Then User Click on Analyze Case Link 
	Then User Select Single Assay
	Then User Select Dates Only
	Then User Select Assay In Table
	Then User Click on Configure Report
	Then User Select Case Options of Configure Report
	Then Click on View Report Ribbon
	Then Verify Graph Statistic Baseline Controls Section
	
	
	Examples: 
		|TestData|
		|TD_001|