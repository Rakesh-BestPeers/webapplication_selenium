package com.xChekVet.runners;

import com.xChekVet.constants.PathConstants;
import com.xChekVet.selenium.DriverManagerSelenium;
import com.xChekVet.selenium.GlobalParamsWeb;
import com.xChekVet.utils.TestUtils;

import io.cucumber.testng.FeatureWrapper;
import io.cucumber.testng.PickleWrapper;
import io.cucumber.testng.TestNGCucumberRunner;
import org.apache.logging.log4j.ThreadContext;
import org.testng.annotations.*;

import java.io.File;

public class RunnerBaseWeb {
	private static final ThreadLocal<TestNGCucumberRunner> testNGCucumberRunner = new ThreadLocal<>();

	public static TestNGCucumberRunner getRunner() {
		return testNGCucumberRunner.get();
	}

	private static void setRunner(TestNGCucumberRunner testNGCucumberRunner1) {
		testNGCucumberRunner.set(testNGCucumberRunner1);
	}

	@Parameters({ "platformName", "browser" })
	@BeforeClass(alwaysRun = true)
	public void setUpClass(String platformName, String browser) throws Exception {

		ThreadContext.put("ROUTINGKEY", PathConstants.logs + File.separator + platformName + "_" + browser);

		GlobalParamsWeb params = new GlobalParamsWeb();
		TestUtils utils = new TestUtils();
		params.setDateTime(utils.dateTime());
		params.setPlatformName(platformName);
		params.setBrowser(browser);

		new DriverManagerSelenium().initializeDriver();

		setRunner(new TestNGCucumberRunner(this.getClass()));
	}

	@Test(groups = "cucumber", description = "Runs Cucumber Scenarios", dataProvider = "scenarios")
	public void scenario(PickleWrapper pickle, FeatureWrapper cucumberFeature) throws Throwable {
		getRunner().runScenario(pickle.getPickle());
	}

	@DataProvider
	public Object[][] scenarios() {
		return getRunner().provideScenarios();
	}

	@AfterClass(alwaysRun = true)
	public void tearDownClass() {
		DriverManagerSelenium driverManagerSelenium = new DriverManagerSelenium();
		if (driverManagerSelenium.getDriver() != null) {
			driverManagerSelenium.getDriver().quit();
			driverManagerSelenium.setDriver(null);
		}

		if (testNGCucumberRunner != null) {
			getRunner().finish();
		}
	}
}
