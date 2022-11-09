package com.xChekVet.Demos;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class dateFormat {
	public WebDriver driver;

	@BeforeTest
	public void initializeBrowser() {
		System.setProperty("webdriver.gecko.driver", "C:\\Users\\Northout_QA_Rakesh\\OneDrive\\Pictures\\geckodriver");
		driver = new FirefoxDriver();
		driver.get(
				"http://dev-samp-16w4drm75s2xe.eba-vdwsnv2p.us-east-1.elasticbeanstalk.com/dashboard/user/analyze-case");
	}

	@Test
	public String parseDate(StringBuilder dateString, String formatString) {
		String separator = "";
		String slashSeperator = "/";
		if (formatString.contains(slashSeperator)) {
			separator = slashSeperator;
		} else {
			String dotSeparator = ".";
			if (formatString.contains(dotSeparator)) {
				separator = dotSeparator;
			}
		}

		if (dateString.length() == 8) {
			dateString.insert(2, separator);
			dateString.insert(5, separator);
		} else {
			return "False Date Entered";
		}

		return dateString.toString();
	}

	@AfterTest()

	public void TearDown() {
		driver.close();
	}
}
