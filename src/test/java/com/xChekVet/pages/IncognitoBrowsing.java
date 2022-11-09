package com.xChekVet.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.testng.annotations.Test;

public class IncognitoBrowsing {
	// @Test(priority = 1)
	// public void privateBrowsing_chrome() {
	// DesiredCapabilities capabilities = DesiredCapabilities.chrome();
	// ChromeOptions options = new ChromeOptions();
	// options.addArguments("--incognito");
	// capabilities.setCapability(ChromeOptions.CAPABILITY, options);
	// System.setProperty("webdriver.chrome.driver",
	// "D:\\Automation_Frameworks\\idexx-cloud-ui-automation\\driver\\chromedriver.exe");
	// WebDriver driver = new ChromeDriver(capabilities);
	// driver.get("https://chercher.tech");
	// System.out.println(driver.getTitle());
	// }
	//
	// @Test(priority = 2)
	// public void privateBrowsing_firefox() {
	// DesiredCapabilities capabilities = DesiredCapabilities.firefox();
	// FirefoxProfile firefoxProfile = new FirefoxProfile();
	// firefoxProfile.setPreference("browser.private.browsing.autostart", true);
	// System.setProperty("webdriver.gecko.driver",
	// "D:\\Automation_Frameworks\\idexx-cloud-ui-automation\\driver\\geckodriver.exe");
	// WebDriver driver = new FirefoxDriver(capabilities);
	// driver.get("https://chercher.tech");
	// System.out.println(driver.getTitle());
	// }

	@Test(priority = 3)
	public void braveBrowser() {
		System.setProperty("webdriver.chrome.driver",
				"D:\\Automation_Frameworks\\idexx-cloud-ui-automation\\driver\\chromedriver.exe");
		ChromeOptions options = new ChromeOptions()
				.setBinary("C:\\Program Files\\BraveSoftware\\Brave-Browser\\Application\\brave.exe");
		WebDriver driver = new ChromeDriver(options);
		driver.get("https://chercher.tech");
		System.out.println(driver.getTitle());

	}
}