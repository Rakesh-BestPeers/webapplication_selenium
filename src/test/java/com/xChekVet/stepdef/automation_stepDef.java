package com.xChekVet.stepdef;

import com.xChekVet.pages.automation;
import com.xChekVet.utils.TestDataHandler;

import io.cucumber.java.en.Given;

public class automation_stepDef {
	public String loginUserName = null, loginPassword = null;
	public String url = null;
	public String sheetName = "IXR";
	@SuppressWarnings("unused")
	private static TestDataHandler testData = new TestDataHandler();

	@Given("launch browser")
	public void launch_browser() {
		new automation().CompanyUserValidCredentials();
	}

}
