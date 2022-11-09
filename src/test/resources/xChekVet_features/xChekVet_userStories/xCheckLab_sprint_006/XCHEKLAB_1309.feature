Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1309 As an xChekVet company user I should be able to upload logo of my choice on configure screen so that I view same logo on generated Analyse case report. 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select Assay In Table
	Then User Click on Configure Report 
	Then User Verify Configure Report Dashboard 
   Then User Select Custom Logo Radio button 
    Then User Upload Genuine Logo with Expectation 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
 	Then User Click on Configure Report 
 	Then User Upload Vertical Logo with Expectation 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
 	Then User Click on Configure Report 
 	Then User Upload Horizontal Logo with Expectation 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
# 	Then User Click on Configure Report 
# 	Then User Verify Configure Report Dashboard 
# 	Then User Delete the previous Logo
# 	Then Click on View Report Ribbon 
# 	Then User Verify Uploaded Logo on Analyze Case Report 
 	Then User Click on Configure Report 
 	 Then User Select Do not Display Custom Logo Radio button 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
 	 Then User Click on Configure Report 
 	  Then User Select Custom Logo Radio button
	Then User Upload Large Size Logo with Expectation 
	Then Click on View Report Ribbon 
	Then User Verify Uploaded Logo on Analyze Case Report 
	Then User Click on Logout Button
	Then Uer Enter Valid Credentials for Company User
	Then User Click on Analyze Case Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select Assay In Table
	Then User Click on Configure Report 
	Then User Verify Configure Report Dashboard 
   Then User Select Custom Logo Radio button 
    Then User Upload Genuine Logo with Expectation 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
 	Then User Click on Configure Report 
 	Then User Upload Vertical Logo with Expectation 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
 	Then User Click on Configure Report 
 	Then User Upload Horizontal Logo with Expectation 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
# 	Then User Click on Configure Report 
# 	Then User Verify Configure Report Dashboard 
# 	Then User Delete the previous Logo
# 	Then Click on View Report Ribbon 
# 	Then User Verify Uploaded Logo on Analyze Case Report 
 	Then User Click on Configure Report 
 	 Then User Select Do not Display Custom Logo Radio button 
 	Then Click on View Report Ribbon 
 	Then User Verify Uploaded Logo on Analyze Case Report 
 	 Then User Click on Configure Report 
 	  Then User Select Custom Logo Radio button
	Then User Upload Large Size Logo with Expectation 
	Then Click on View Report Ribbon 
	Then User Verify Uploaded Logo on Analyze Case Report
	
	
	Examples: 
		|TestData|
		|TD_001|