package com.xChekVet.runners;

import io.cucumber.testng.CucumberOptions;

/**
 * An example of using TestNG when the test class does not inherit from
 * AbstractTestNGCucumberTests but still executes each scenario as a separate
 * TestNG test.
 */
@CucumberOptions(plugin = { "pretty", "html:artifacts/cucumber-reports/Web/cucumber", "summary",
		"de.monochromata.cucumber.report.PrettyReports:artifacts/cucumber-reports/Web/cucumber-html-reports" }

		, features = {
				"src/test/resources/xChekVet_features/xChekVet_Regression/automation.feature" }, glue = {
						"com.xChekVet.stepdef" }, dryRun = false, monochrome = true, strict = true

//								,tags = { "" }
)
public class xChekVetRunner_Regression extends RunnerBaseWeb {

}
