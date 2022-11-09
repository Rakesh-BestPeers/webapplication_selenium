Feature: To Execute the Smoke Test Plan for idexxCloud IXR UI 
@xyz
Scenario Outline: IXR_122 As a company admin I should be able to send request information to IDEXX Datahub
	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then User Click on Request Information 
	Then Check All fields of the Page 
	Then User Left blank filed 
	Then User Fill All Fields of Form 
	
	Examples: 
		|TestData|
		|TD_001|