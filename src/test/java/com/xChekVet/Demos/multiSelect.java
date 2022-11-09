package com.xChekVet.Demos;

import java.awt.AWTException;
import java.io.IOException;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class multiSelect {
	public WebDriver driver;

	@BeforeTest
	public void initializeBrowser() {
		System.setProperty("webdriver.gecko.driver",
				"/home/northoutrakesh/Pictures/Drivers/geckodriver-v0.27.0-linux64/geckodriver");
		driver = new FirefoxDriver();
		driver.get(
				"http://dev-samp-16w4drm75s2xe.eba-vdwsnv2p.us-east-1.elasticbeanstalk.com/dashboard/user/analyze-case");
	}

	@Test
	public void operation() throws IOException, InterruptedException, AWTException {
		driver.switchTo().frame(0);
		List<WebElement> list = driver.findElements(By.cssSelector(
				"//body/app-root[1]/app-dashboard[1]/app-user-dashboard-layout[1]/app-analyze-case[1]/main[1]/div[1]/section[2]/aside[1]/app-analyze-case-sidebar[1]/div[1]"));
		Actions act = new Actions(driver);

		act.clickAndHold(list.get(0)).clickAndHold(list.get(4)).release().build().perform();
	}

	@AfterTest()

	public void TearDown() {
		driver.close();
	}
}
