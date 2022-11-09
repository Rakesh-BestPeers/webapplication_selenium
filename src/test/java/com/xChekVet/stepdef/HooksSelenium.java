package com.xChekVet.stepdef;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import java.io.File;
import java.io.IOException;

import com.xChekVet.pages.BaseTest;
import com.xChekVet.selenium.ExtentReportSelenium;
import com.xChekVet.selenium.GlobalParamsWeb;

public class HooksSelenium {

	GlobalParamsWeb params = new GlobalParamsWeb();
	BaseTest baseTest = new BaseTest();
	File file = null;
	byte[] embaded = null;

	@Before
	public void initialize(Scenario scenario) throws Exception {
		ExtentReportSelenium.startTest(scenario.getName(), scenario.getName())
				.assignCategory(params.getPlatformName() + "_" + params.getBrowser()).assignAuthor("Northout");

	}

	@SuppressWarnings("static-access")
	@After
	public void quit(Scenario scenario) throws IOException {
		if (scenario.isFailed()) {

			baseTest.embedScreenshot(scenario);

			ExtentReportSelenium.getTest().fail(scenario.getName());
		}
		baseTest.screenShotAttach(null);

		ExtentReportSelenium.getReporter().flush();
	}

}
