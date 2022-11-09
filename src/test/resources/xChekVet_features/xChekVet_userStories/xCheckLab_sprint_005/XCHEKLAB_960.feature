Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

@960
Scenario Outline: XCHEKLAB_960 As an xChekVet user, I should be able to see the fields of the company instance form enabled and disabled on certain criteria

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Super Admin 
	Then User Verify Right Panel Text
	Then User Click on Add Company hyperlink
     Then User check Official name exist 
  
	
	Examples: 
		|TestData|
		|TD_001|