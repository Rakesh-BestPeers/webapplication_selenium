package com.xChekVet.Demos;

import java.util.concurrent.TimeUnit;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class MySampleTestPDFFile {
	WebDriver driver;

	@BeforeClass
	public void setUp() {
		System.setProperty("webdriver.gecko.driver",
				"/home/northoutrakesh/Pictures/Drivers/geckodriver-v0.27.0-linux64/geckodriver");
		driver = new FirefoxDriver();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.get("https://www.inviul.com/");
		driver.manage().window().maximize();
	}

	@AfterClass
	public void tearDown() {
		driver.close();
		//driver.quit();
	}

	@Test(priority = 1, description = "My Sample Test Fail Reported in PDF")
	public void testMethod1() {
		String expectedTitle = "Free Selenium Tutorials | TestNG Tutorials | Cucumber Tutorials | Inviul";
		Assert.assertEquals(driver.getTitle(), expectedTitle, "Title not matched");
	}

	@Test(priority = 0, description = "My Sample Test Pass Reported in PDF")
	public void testMethod2() {

		boolean matchCondition = driver.getTitle().contains("Selenium");
		Assert.assertTrue(matchCondition, "Title matched");

	}
}