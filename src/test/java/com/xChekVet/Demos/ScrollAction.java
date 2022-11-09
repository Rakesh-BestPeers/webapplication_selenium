package com.xChekVet.Demos;

import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import java.awt.AWTException;
import java.io.IOException;

public class ScrollAction {
	public WebDriver driver;

	@BeforeTest
	public void initializeBrowser() {
		System.setProperty("webdriver.gecko.driver",
				"/home/northoutrakesh/Pictures/Drivers/geckodriver-v0.27.0-linux64/geckodriver");
		driver = new FirefoxDriver();
		driver.get("https://stqatools.com/demo/");
		String Current_url = driver.getCurrentUrl();
		System.out.println(Current_url);
//		String Page_Source = driver.getPageSource();
//		System.out.println(Page_Source);
		driver.manage().window().setPosition(new Point(0, -150));
	}

	@Test
	public void operation() throws IOException, InterruptedException, AWTException {
		Thread.sleep(5000);
		Actions action = new Actions(driver);
		// DOUBLE CLICK//
//		WebElement doubleclick = driver.findElement(By.xpath("//input[@id='checkbox1']"));
//		Thread.sleep(6000);
//		action.doubleClick(doubleclick).perform();

		// MOUSE HOVER//
//		WebElement mousehover=driver.findElement(By.xpath("//body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[3]/div[1]/input[1]"));
//		Thread.sleep(5000);
//		WebElement clickemail=driver.findElement(By.xpath("//body/section[@id='section']/div[1]/div[1]/div[2]/form[1]/div[3]/div[1]/input[1]"));
//		Thread.sleep(5000);
//		action.moveToElement(mousehover).click(clickemail).build().perform();

		// COOKIES//
//		driver.manage().getCookies();
//		System.out.println(driver.manage().getCookies());
//		driver.manage().getCookieNamed("");
//		driver.manage().addCookie(null);
//		driver.manage().deleteCookie(null);
//		driver.manage().deleteCookieNamed("");
//		driver.manage().deleteAllCookies();

		// DEMO SQLTOOLS//
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@id='studentname']")).sendKeys("Rakesh");
		Thread.sleep(3000);

		driver.findElement(By.xpath("//input[@value='Female']")).isEnabled();
		Thread.sleep(3000);
		driver.findElement(By.id("//input[@value='Female']")).isSelected();
	}

	@AfterTest()

	public void TearDown() {
		driver.close();
	}
}