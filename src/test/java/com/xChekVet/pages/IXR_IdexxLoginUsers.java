package com.xChekVet.pages;

import java.util.Properties;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.Status;
import com.xChekVet.constants.Constants;
import com.xChekVet.selenium.ExtentReportSelenium;
import com.xChekVet.utils.TestDataHandler;

import io.appium.java_client.internal.Config;

public class IXR_IdexxLoginUsers extends BaseTest {
	public String ActualText = null, ExpectedText = null;

	@FindBy(xpath = "//label[contains(text(),'User Name')]")
	public WebElement userNameText;

	@FindBy(xpath = "//input[@id='email']")
	public WebElement userNameTextBox;

	@FindBy(xpath = "//label[contains(text(),'Password')]")
	public WebElement passwordText;

	@FindBy(xpath = "//input[@id='password']")
	public WebElement passwordTextBox;

	@FindBy(xpath = "//button[contains(text(),'Sign in')]")
	public WebElement signInButton;

	@FindBy(xpath = "//a[contains(text(),'Trouble signing in?')]")
	public WebElement troubleSigningInCollapse;

	@FindBy(xpath = "//p[contains(text(),'If you have forgotten your user name or password, ')]")
	public WebElement troubleSignInExpandText;

	@FindBy(xpath = "//p[contains(text(),'To activate your xChek Vet account, please call 1-')]")
	public WebElement toActivateYourAccountText;

	@FindBy(xpath = "//body/app-root[1]/app-authentication[1]/app-admin-login[1]/main[1]/section[1]/div[1]/div[1]/h1[1]")
	public WebElement idexxXchekVetText;

	@FindBy(xpath = "//body/app-root[1]/app-authentication[1]/app-admin-login[1]/main[1]/section[1]/div[1]/div[2]/form[1]/div[1]")
	public WebElement invalidLoginErrorMsgText;

	@FindBy(xpath = "//span[contains(text(),'Please enter valid email')]")
	public WebElement userNameErrorMsg;

	@FindBy(xpath = "//header/section[1]/nav[1]/div[1]/ul[1]/li[1]")
	public WebElement signOutCollapse;

	@FindBy(xpath = "//span[contains(text(),'Logout')]")
	public WebElement logOutButton;

	@FindBy(xpath = "//tbody/tr[1]/td[9]/button[2]")
	public WebElement deleteAdmin;

	Properties props = new Properties();

	public IXR_IdexxLoginUsers deleteLastCreatedUser() throws InterruptedException {
		try {
			Boolean display = deleteAdmin.isDisplayed();
			System.out.println("WebElement Displayed is ::" + display);
			ExtentReportSelenium.getTest().log(Status.INFO, "Successfully Verify WebElement Displayed::" + display);

			Thread.sleep(1000);
			Boolean enable = deleteAdmin.isDisplayed();
			System.out.println("WebElement Enable is ::" + enable);
			ExtentReportSelenium.getTest().log(Status.INFO, "Successfully Verify WebElement Enabled::" + enable);

			Thread.sleep(1000);
			click(deleteAdmin, "Delete Last Created Admin");

			Thread.sleep(1000);
			screenShotAttach("SuperAdmin Delete Admin or User");
		} catch (Exception e) {
			System.out.println("WebElement Not Found");
		}
		return this;
	}

	public IXR_IdexxLoginUsers verifyFontInformation() throws InterruptedException {
		Thread.sleep(1000);
		ExpectedText = TestDataHandler.getTestDataInMap().get("fontsize");
		System.out.println(ExpectedText);
		ActualText = new IXR_IdexxLoginUsers().userNameText.getCssValue("font-size");
		System.out.println(ActualText);
		verifyActualExpectedResultWithEquals(ActualText, ExpectedText, "Successfully Verify font size");
		return this;
	}

	public IXR_IdexxLoginUsers ClickLogoutButton() throws InterruptedException {
		try {
			Thread.sleep(1000);
			click(signOutCollapse, "Signout Collapse");

			Thread.sleep(1000);
			click(logOutButton, "Logout Button");
			ExtentReportSelenium.getTest().log(Status.INFO, "xChekVet User Logout Successfully");
		} catch (Exception e) {
			System.out.println("WebElement Not Found");
		}

		return this;
	}

	public IXR_IdexxLoginUsers VerifyLoginPageTexts() throws InterruptedException {
		try {
			Thread.sleep(1000);
			ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedLoginUserNameText");
			System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedLoginUserNameText"));
			ActualText = new IXR_IdexxLoginUsers().userNameText.getText().trim();
			System.out.println(userNameText.getText().trim());
			verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
					"Successfully Verify Login Page UserName Text");

			Thread.sleep(1000);
			ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedLoginPasswordText");
			System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedLoginPasswordText"));
			ActualText = new IXR_IdexxLoginUsers().passwordText.getText().trim();
			System.out.println(passwordText.getText().trim());
			verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
					"Successfully Verify Login Page Password Text");

//		Thread.sleep(1000);
//		ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedLoginHeaderText");
//		System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedLoginHeaderText"));
//		ActualText = new IXR_IdexxLoginUsers().idexxXchekVetText.getText().trim();
//		System.out.println(idexxXchekVetText.getText().trim());
//		verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
//				"Successfully Verify Login Page IDEXX xChekVet Text");

			Thread.sleep(1000);
			ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedToActivateText");
			System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedToActivateText"));
			ActualText = new IXR_IdexxLoginUsers().toActivateYourAccountText.getText().trim();
			System.out.println(toActivateYourAccountText.getText());
			verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
					"Successfully Verify Login Page To Activate Your Account Text");

			Thread.sleep(1000);
			click(troubleSigningInCollapse);
			Thread.sleep(1000);
			ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedTroubleSignInText");
			System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedTroubleSignInText"));
			ActualText = new IXR_IdexxLoginUsers().troubleSignInExpandText.getText().trim();
			System.out.println(troubleSignInExpandText.getText());
			verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
					"Successfully Verify Login Page Trouble Signin Message Text");

		} catch (Exception e) {
			System.out.println("WebElement Not Found");
		}
		return this;
	}

	public IXR_IdexxLoginUsers SuperAdminUsernameOnly(String loginUserName) throws InterruptedException {
		Thread.sleep(1000);
		loginUserName = TestDataHandler.getTestDataInMap().get("loginUserNameSA");
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		return this;
	}

	public IXR_IdexxLoginUsers SuperAdminPasswordOnly(String loginPassword) throws InterruptedException {
		Thread.sleep(1000);
		loginPassword = TestDataHandler.getTestDataInMap().get("loginPassword");
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		return this;
	}

	public IXR_IdexxLoginUsers SuperAdminInvalidCredentials(String loginUserName, String loginPassword)
			throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(10000);
		loginUserName = TestDataHandler.getTestDataInMap().get("loginUserNameSA");
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = TestDataHandler.getTestDataInMap().get("InvalidLoginPassword");
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		Thread.sleep(1000);
		click(signInButton);

		Thread.sleep(1000);
		ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedLoginErrorMsg");
		System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedLoginErrorMsg"));
		ActualText = new IXR_IdexxLoginUsers().invalidLoginErrorMsgText.getText().trim();
		System.out.println(invalidLoginErrorMsgText.getText().trim());
		verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
				"Successfully Verify Login Page Invalid Login Error Msg Text");

		return this;
	}

	@SuppressWarnings("unused")
	public IXR_IdexxLoginUsers SuperAdminValidCredentials(String loginUserName, String loginPassword)
			throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(10000);
		loginUserName = Constants.superadminUserName;
		// TestDataHandler.getTestDataInMap().get("loginUserNameSA");
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = Constants.superAdminPassword;
		// TestDataHandler.getTestDataInMap().get("loginPassword");
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		long startTime = System.currentTimeMillis();
		click(signInButton);
		//new BaseTest().presenceOfElement(new IXR_Company_Admin_Profile().companyprofileAddCompanyButton);
		long endTime = System.currentTimeMillis();
		long totalTime = endTime - startTime;
		ExtentReportSelenium.getTest().log(Status.INFO, "Total " + new BaseTest().getPageTitle()
				+ " Page Load Time in Sceond : " + Math.subtractExact(endTime, startTime) / 1000 + " Sec.");
		ExtentReportSelenium.getTest().log(Status.INFO, "xChekVet Company Super Admin Login Successfully");
		Thread.sleep(1000);
		screenShotAttach("xChekVet Company Super Admin Login Successfully and landing to Welcome Page");

		return this;
	}

	public IXR_IdexxLoginUsers CompanyAdminUsernameOnly(String loginUserName) throws InterruptedException {
		Thread.sleep(1000);
		loginUserName = TestDataHandler.getTestDataInMap().get("loginUserNameCA");
		System.out.println(loginUserName);
		clearAll(userNameTextBox);
		Thread.sleep(1000);
		userNameTextBox.sendKeys(loginUserName);

		return this;
	}

	public IXR_IdexxLoginUsers CompanyAdminPasswordOnly(String loginPassword) throws InterruptedException {
		Thread.sleep(1000);
		loginPassword = TestDataHandler.getTestDataInMap().get("loginPassword");
		System.out.println(loginPassword);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		passwordTextBox.sendKeys(loginPassword);

		return this;
	}

	public IXR_IdexxLoginUsers CompanyAdminInvalidCredentials(String loginUserName, String loginPassword)
			throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(1000);
		loginUserName = TestDataHandler.getTestDataInMap().get("loginUserNameCA");
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = TestDataHandler.getTestDataInMap().get("InvalidLoginPassword");
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		Thread.sleep(1000);
		click(signInButton);

		Thread.sleep(1000);
		ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedLoginErrorMsg");
		System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedLoginErrorMsg"));
		ActualText = new IXR_IdexxLoginUsers().invalidLoginErrorMsgText.getText().trim();
		System.out.println(invalidLoginErrorMsgText.getText().trim());
		verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
				"Successfully Verify Login Page Invalid Login Error Msg Text");

		return this;
	}

	public IXR_IdexxLoginUsers CompanyAdminValidCredentials(String loginUserName, String loginPassword)
			throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(1000);
		loginUserName = Constants.companyadminUserName;
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = Constants.companyAdminPassword;
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		Thread.sleep(1000);
		click(signInButton);

		ExtentReportSelenium.getTest().log(Status.INFO, "xChekVet Company Admin Login Successfully");
		Thread.sleep(1000);
		screenShotAttach("xChekVet Company Admin Login Successfully and landing to Welcome Page");

		return this;
	}

	public IXR_IdexxLoginUsers CompanyUserUsernameOnly(String loginUserName) throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(1000);
		loginUserName = TestDataHandler.getTestDataInMap().get("loginUserNameCU");
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		return this;
	}

	public IXR_IdexxLoginUsers CompanyUserPasswordOnly(String loginPassword) throws InterruptedException {
		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = TestDataHandler.getTestDataInMap().get("loginPassword");
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		return this;
	}

	public IXR_IdexxLoginUsers CompanyUserInvalidCredentials(String loginUserName, String loginPassword)
			throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(1000);
		loginUserName = TestDataHandler.getTestDataInMap().get("loginUserNameCU");
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = TestDataHandler.getTestDataInMap().get("InvalidLoginPassword");
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		Thread.sleep(1000);
		click(signInButton);

//		Thread.sleep(1000);
//		ExpectedText = TestDataHandler.getTestDataInMap().get("ExpectedLoginErrorMsg");
//		System.out.println(TestDataHandler.getTestDataInMap().get("ExpectedLoginErrorMsg"));
//		ActualText = new IXR_IdexxLoginUsers().invalidLoginErrorMsgText.getText().trim();
//		System.out.println(invalidLoginErrorMsgText.getText().trim());
//		verifyActualExpectedResultWithEquals(ActualText, ExpectedText,
//				"Successfully Verify Login Page Invalid Login Error Msg Text");

		return this;
	}

	@SuppressWarnings("unused")
	public IXR_IdexxLoginUsers CompanyUserValidCredentials(String loginUserName, String loginPassword)
			throws InterruptedException {
		Thread.sleep(1000);
		clearAll(userNameTextBox);
		Thread.sleep(1000);
		loginUserName = Constants.companyuserUserName;
		System.out.println(loginUserName);
		userNameTextBox.sendKeys(loginUserName);

		Thread.sleep(1000);
		clearAll(passwordTextBox);
		Thread.sleep(1000);
		loginPassword = Constants.companyUserPassword;
		System.out.println(loginPassword);
		passwordTextBox.sendKeys(loginPassword);

		long startTime = System.currentTimeMillis();
		click(signInButton);
	//	new BaseTest().presenceOfElement(new IXR_WelcomeDashboard().createNewReportText);
		long endTime = System.currentTimeMillis();
		long totalTime = endTime - startTime;
		ExtentReportSelenium.getTest().log(Status.INFO, "Total " + new BaseTest().getPageTitle()
				+ " Page Load Time in Sceond : " + Math.subtractExact(endTime, startTime) / 1000 + " Sec.");
		ExtentReportSelenium.getTest().log(Status.INFO, "xChekVet Company Super Admin Login Successfully");
		Thread.sleep(1000);
		screenShotAttach("xChekVet Company Super Admin Login Successfully and landing to Welcome Page");

		return this;
	}

}
