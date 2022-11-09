package com.xChekVet.Demos;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.touch.ScrollAction;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import javax.imageio.ImageIO;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class logoscreenshotCapture {
	public WebDriver driver;

	@BeforeTest
	public void initializeBrowser() {
		System.setProperty("webdriver.gecko.driver",
				"C:\\Users\\Northout_QA_Rakesh\\OneDrive\\Pictures\\geckodriver");
		driver = new FirefoxDriver();
		driver.get("https://xchekvet-qa.idexx.com/authentication/login");
	}

	@Test
	public void operation() throws IOException, InterruptedException, AWTException {
		driver.findElement(By.xpath("//input[@id='email']")).sendKeys("rakeshadmin@idexx.com");
		Thread.sleep(5000);
		driver.findElement(By.xpath("//input[@id='password']")).sendKeys("xCheckPass123");
		Thread.sleep(5000);
		driver.findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
		
		Thread.sleep(5000);
		WebElement logo = driver.findElement(By.xpath("//body/app-root[1]/app-dashboard[1]/app-superadmin-dashboard[1]/app-sadashboard[1]/main[1]/div[1]/figure[1]/img[1]"));

		// Get screenshot of the visible part of the web page
		File screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);

//		// Convert the screenshot into BufferedImage
		BufferedImage fullScreen = ImageIO.read(screenshot);
//
//		// Find location of the webelement logo on the page
		Point location = logo.getLocation();
//
//		// Find width and height of the located element logo
		int width = logo.getSize().getWidth();
		int height = logo.getSize().getHeight();
//
//		// cropping the full image to get only the logo screenshot
		BufferedImage logoImage = fullScreen.getSubimage(location.getX(), location.getY(), width, height);
		ImageIO.write(logoImage, "png", screenshot);

//		// Save cropped Image at destination location physically.
		try {
			FileUtils.copyFile(screenshot, new File("./Active1"));
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

	}

	@AfterTest()

	public void TearDown() {
		driver.close();
	}
}