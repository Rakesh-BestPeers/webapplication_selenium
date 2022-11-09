package com.xChekVet.Demos;

import java.io.File;
import java.io.IOException;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import com.mongodb.MapReduceCommand.OutputType;

public class ScreenShotTypes {
	public WebDriver driver;

	@BeforeTest
	public void initializeBrowser() {
		DesiredCapabilities cap = DesiredCapabilities.internetExplorer();
		cap.setCapability(CapabilityType.BROWSER_NAME, "Firefox");
		cap.setCapability(FirefoxDriver.BINARY, true);
		cap.setPlatform(Platform.LINUX);
		System.setProperty("webdriver.gecko.driver",
				"/home/northoutrakesh/Pictures/Drivers/geckodriver-v0.27.0-linux64/geckodriver");
		driver = new FirefoxDriver();
		driver.get("https://testproject.io/");
	}

	@Test
	public void operation() throws IOException, InterruptedException {
		Thread.sleep(5000);

	}

	@AfterTest()
	public void tearDown() {
		driver.close();
	}
}