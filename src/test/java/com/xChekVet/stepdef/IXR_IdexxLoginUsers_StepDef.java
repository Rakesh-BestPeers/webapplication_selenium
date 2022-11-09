package com.xChekVet.stepdef;

import java.util.Map;
import com.xChekVet.constants.Constants;
import com.xChekVet.constants.PathConstants;
import com.xChekVet.constants.TestDataQueryReader;
import com.xChekVet.pages.BaseTest;
import com.xChekVet.pages.IXR_IdexxLoginUsers;
import com.xChekVet.utils.ExcelHandler;
import com.xChekVet.utils.TestDataHandler;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class IXR_IdexxLoginUsers_StepDef {
	public String loginUserName = null, loginPassword = null;
	public String url = null;
	public String sheetName = "IXR";
	@SuppressWarnings("unused")
	private static TestDataHandler testData = new TestDataHandler();
	
	
	@Given("User is at Page: {string}")
	public void user_is_at_Page(String url) {
		url="https://www.google.co.in";
		new BaseTest().driver.get(url);
	}


	@And("User get the data from test data sheet {string}")
	public void user_get_the_data_from_test_data_sheet(String tData) throws Exception {
		Map<String, String> TestDataInMap = ExcelHandler.getTestDataInMap(TestDataQueryReader.queryTestData,
				PathConstants.testData, sheetName, tData);
		TestDataHandler.setTestDataInMap(TestDataInMap);
	}

	@Then("User Verify Login Page")
	public void user_Verify_Login_Page() throws InterruptedException {
		new IXR_IdexxLoginUsers().VerifyLoginPageTexts();
	}
	
	
	
	@Then("User delete last created on admin by superAdmin")
	public void user_delete_last_created_on_admin_by_superAdmin() throws InterruptedException {
	  new IXR_IdexxLoginUsers().deleteLastCreatedUser();
	}

	@Then("User Enter Invalid Credentials for Super Admin")
	public void user_Enter_Invalid_Credentials_for_Super_Admin() throws InterruptedException {
		new IXR_IdexxLoginUsers().SuperAdminUsernameOnly(loginUserName);
		new IXR_IdexxLoginUsers().SuperAdminPasswordOnly(loginPassword);
		new IXR_IdexxLoginUsers().SuperAdminInvalidCredentials(loginUserName, loginPassword);
	}

	@Then("Uer Enter Valid Credentials for Super Admin")
	public void uer_Enter_Valid_Credentials_for_Super_Admin() throws InterruptedException {
		new IXR_IdexxLoginUsers().SuperAdminValidCredentials(loginUserName, loginPassword);
	}

	@Then("User Click on Logout Button")
	public void user_Click_on_Logout_Button() throws InterruptedException {
		new IXR_IdexxLoginUsers().ClickLogoutButton();
	}

	@Then("User Enter Invalid Credentials for Company Admin")
	public void user_Enter_Invalid_Credentials_for_Company_Admin() throws InterruptedException {
		new IXR_IdexxLoginUsers().CompanyAdminUsernameOnly(loginUserName);
		new IXR_IdexxLoginUsers().CompanyAdminPasswordOnly(loginPassword);
		new IXR_IdexxLoginUsers().CompanyAdminInvalidCredentials(loginUserName, loginPassword);

	}

	@Then("Uer Enter Valid Credentials for Company Admin")
	public void uer_Enter_Valid_Credentials_for_Company_Admin() throws InterruptedException {
		new IXR_IdexxLoginUsers().CompanyAdminValidCredentials(loginUserName, loginPassword);
	}

	@Then("User Enter Invalid Credentials for Company User")
	public void user_Enter_Invalid_Credentials_for_Company_User() throws InterruptedException {
		new IXR_IdexxLoginUsers().CompanyUserUsernameOnly(loginUserName);
		new IXR_IdexxLoginUsers().CompanyUserPasswordOnly(loginPassword);
		new IXR_IdexxLoginUsers().CompanyUserInvalidCredentials(loginUserName, loginPassword);
	}

	@Then("Uer Enter Valid Credentials for Company User")
	public void uer_Enter_Valid_Credentials_for_Company_User() throws InterruptedException {
		new IXR_IdexxLoginUsers().CompanyUserValidCredentials(loginUserName, loginPassword);
	}

}
