Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1790 Backend: As an xChekVet company user, I should be able to see Swine variables when I choose the Swine Assays

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Right Panel Text
	Then User Click on Add Company hyperlink
     Then User check Official name exist 
  
	
	Examples: 
		|TestData|
		|TD_001|