Feature: To Execute the Smoke Test Plan for idexxCloud Cloud Reporting 

Scenario Outline: XCHEKLAB_1370 As an xChekVet company user I should be able to navigate to the "Data Define Groups" screen so that I can see the default view of the Define data groups screen 

	Given User is at Page: "admin.idexxCloud" 
	And User get the data from test data sheet "<TestData>" 
	Then Uer Enter Valid Credentials for Company Admin 
	Then User Click on Multi Case Report Link 
	Then User Select Multiple Assay 
	Then User Perform From Date Cases 
	Then User Select multiple CaseID in table 
	Then User Verify Select Data Screen of Multi Case Report 
	Then User Click on Data Define Groups from breadcrumbs 
	Then User Verify Data Define Groups of Multi Case Report 
	Then User Verify Data Define Groups Matching Results 
	Then User Verify Data Define Groups Datatable Text 
	Then User Select Data Define Groups Grouping Actions 
	Then User Configure Data Define Groups Added 
Then User Click Data Define Groups RESET button 
	Then user Click on View Graph breadcrumbs
	Then User Click on View Report breadcrumbs
	Then User Click on Select data breadcrumbs
#	Then User Perform Vertical Scroll in Data Define Groups Datatable
#	Then User Perform Horizontal Scroll in Data Define Groups Datatable
#	Then User Click Data Define Groups Add another group 
	
	
	Examples: 
		|TestData|
		|TD_001|