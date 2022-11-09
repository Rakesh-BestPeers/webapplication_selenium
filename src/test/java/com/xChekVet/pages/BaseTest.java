package com.xChekVet.pages;

import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.markuputils.ExtentColor;
import com.aventstack.extentreports.markuputils.Markup;
import com.aventstack.extentreports.markuputils.MarkupHelper;
import com.google.common.io.Files;
import com.xChekVet.constants.Constants;
import com.xChekVet.constants.PathConstants;
import com.xChekVet.selenium.DriverManagerSelenium;
import com.xChekVet.selenium.ExtentReportSelenium;
import com.xChekVet.selenium.GlobalParamsWeb;
import com.xChekVet.utils.TestUtils;
import io.cucumber.java.Scenario;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.Reporter;
import org.testng.asserts.SoftAssert;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

public class BaseTest {
	public WebDriver driver;
	TestUtils utils = new TestUtils();
	GlobalParamsWeb params = new GlobalParamsWeb();
	public SoftAssert asert = new SoftAssert();
	public int yearMin;
	public int yearMax;
	public int targetYearNotDisplay;
	public SoftAssert softAssertion = new SoftAssert();
	public int size;
	public static boolean flag;

	public BaseTest() {
		this.driver = new DriverManagerSelenium().getDriver();
		PageFactory.initElements(this.driver, this);
	}

	public void presenceOfElement(WebElement element) {
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOf(element));
	}

	public void waitForVisibility(By e) {
		WebDriverWait wait = new WebDriverWait(driver, TestUtils.WAIT);
		wait.until(ExpectedConditions.visibilityOfElementLocated(e));
	}

	public void waitForIsselected(By e) {
		WebDriverWait wait = new WebDriverWait(driver, TestUtils.WAIT);
		wait.until(ExpectedConditions.visibilityOfElementLocated(e));
	}

	public void waitForIsEnabled(By e) {
		WebDriverWait wait = new WebDriverWait(driver, TestUtils.WAIT);
		wait.until(ExpectedConditions.visibilityOfElementLocated(e));
	}

	public void clear(WebElement e) {
		waitForVisibility(e);
		e.clear();
	}

	public void click(WebElement e) {
		waitForVisibility(e);
		e.click();
	}

	public void click(WebElement element, String msg) throws InterruptedException {
		try {
			waitForVisibility(element);
			element.click();
			Thread.sleep(1000);
			String info = "Successfully click on " + msg;
			Markup a = MarkupHelper.createLabel(info, ExtentColor.GREEN);
			ExtentReportSelenium.getTest().log(Status.INFO, a);

		} catch (Exception e) {
			String info1 = "Not able to click on " + msg;
			Markup a = MarkupHelper.createLabel(info1, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.INFO, a);

			String info2 = "Element locator for not clicked element ::" + element;
			Markup b = MarkupHelper.createLabel(info2, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.INFO, b);

			ExtentReportSelenium.getTest().log(Status.FAIL, e);
			Assert.assertEquals(1, 0);
		}
	}

	public void click(By e, String msg) {
		waitForVisibility(e);
		utils.log().info(msg);
		ExtentReportSelenium.getTest().log(Status.INFO, msg);
		driver.findElement(e).click();
	}

	public void Elementclickable(By e, String msg) {
		waitForVisibility(e);
		utils.log().info(msg);
		ExtentReportSelenium.getTest().log(Status.INFO, msg);
		driver.findElement(e).click();
	}

	public void Elementisselected(By e, String msg) {
		waitForIsselected(e);
		utils.log().info(msg);
		ExtentReportSelenium.getTest().log(Status.INFO, msg);
		driver.findElement(e).click();
	}

	public void sendKeys(WebElement e, String txt) {
		waitForVisibility(e);
		e.sendKeys(txt);
	}

	public void sendKeys(WebElement element, String txt, String msg) throws InterruptedException {
		try {
			waitForVisibility(element);
			ExtentReportSelenium.getTest().log(Status.INFO, msg);
			element.sendKeys(txt);

			String info = "Successfully insert the " + txt + " on the " + msg;
			Markup a = MarkupHelper.createLabel(info, ExtentColor.GREEN);
			ExtentReportSelenium.getTest().log(Status.INFO, a);
			Thread.sleep(1000);
		} catch (Exception e) {
			String info1 = "Not able to insert the text " + txt + " on the " + msg;
			Markup a = MarkupHelper.createLabel(info1, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.INFO, a);

			String info2 = "Element locator for not insert the text " + txt + " on the " + msg;
			Markup b = MarkupHelper.createLabel(info2, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.INFO, b);

			ExtentReportSelenium.getTest().log(Status.FAIL, e);
			Assert.assertEquals(1, 0);
		}
	}

	public void navigate(String url) {
		driver.get(Constants.url);
		utils.log().info("Navigate to :: " + url);
		ExtentReportSelenium.getTest().log(Status.INFO, "Navigate with xCheckVet Stage URL :: " + url);
	}

	public String getAttribute(WebElement e, String attribute) {
		waitForVisibility(e);
		return e.getAttribute(attribute);
	}

	public String getAttribute(By e, String attribute) {
		waitForVisibility(e);
		return driver.findElement(e).getAttribute(attribute);
	}

	public String getText(WebElement e, String msg) {
		String txt;
		switch (new GlobalParamsWeb().getPlatformName()) {
		case "Android":
			txt = getAttribute(e, "text");
			break;
		case "iOS":
			txt = getAttribute(e, "label");
			break;
		default:
			throw new IllegalStateException("Unexpected value: " + new GlobalParamsWeb().getPlatformName());
		}
		utils.log().info(msg + txt);
		ExtentReportSelenium.getTest().log(Status.INFO, msg + txt);
		return txt;
	}

	public String getText(By e, String msg) {
		String txt;
		switch (new GlobalParamsWeb().getPlatformName()) {
		case "Android":
			txt = getAttribute(e, "text");
			break;
		case "iOS":
			txt = getAttribute(e, "label");
			break;
		default:
			throw new IllegalStateException("Unexpected value: " + new GlobalParamsWeb().getPlatformName());
		}
		utils.log().info(msg + txt);
		ExtentReportSelenium.getTest().log(Status.INFO, msg + txt);
		return txt;
	}

	public boolean find(final WebElement element, int timeout) {
		try {
			WebDriverWait wait = new WebDriverWait(driver, timeout);
			return wait.until(new ExpectedCondition<Boolean>() {
				@Override
				public Boolean apply(WebDriver driver) {
					if (element.isDisplayed()) {
						return true;
					}
					return false;
				}
			});
		} catch (Exception e) {
			return false;
		}
	}

	public boolean find(final By element, int timeout) {
		try {
			WebDriverWait wait = new WebDriverWait(driver, timeout);
			return wait.until(new ExpectedCondition<Boolean>() {
				@Override
				public Boolean apply(WebDriver driver) {
					if (driver.findElement(element).isDisplayed()) {
						return true;
					}
					return false;
				}
			});
		} catch (Exception e) {
			return false;
		}
	}

	public boolean checkElementEnabled(final WebElement element, String msg, int timeout) {
		try {
			WebDriverWait wait = new WebDriverWait(driver, timeout);
			return wait.until(new ExpectedCondition<Boolean>() {
				@Override
				public Boolean apply(WebDriver driver) {
					if (element.isEnabled()) {
						String info = "Successfully check the " + msg + " is displaying";
						Markup a = MarkupHelper.createLabel(info, ExtentColor.GREEN);
						ExtentReportSelenium.getTest().log(Status.INFO, a);
						ExtentReportSelenium.getTest().log(Status.PASS, a);
						return true;
					}
					return false;
				}
			});
		} catch (Exception e) {
			// String info = "Not displaying " + msg;
			// Markup a = MarkupHelper.createLabel(info, ExtentColor.RED);
			// ExtentReportSelenium.getTest().log(Status.INFO, a);

			String info2 = "Element locator for not display ::" + element;
			Markup b = MarkupHelper.createLabel(info2, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.INFO, b);
			ExtentReportSelenium.getTest().log(Status.FAIL, b);
			Assert.assertEquals(1, 0);
			return false;
		}
	}

	@SuppressWarnings("unused")
	public String captureScreenshot(Scenario scenario) {

		File file = ((TakesScreenshot) new DriverManagerSelenium().getDriver()).getScreenshotAs(OutputType.FILE);

		byte[] encoded = null;
		try {
			encoded = Base64.encodeBase64(FileUtils.readFileToByteArray(file));
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		String imagePath = PathConstants.screenshots + File.separator + params.getPlatformName() + "_"
				+ params.getBrowser() + File.separator + params.getDateTime() + File.separator + scenario.getName()
				+ ".png";

		String completeImagePath = System.getProperty("user.dir") + File.separator + imagePath;

		try {
			FileUtils.copyFile(file, new File(imagePath));
			Reporter.log("This is the sample screenshot");
			Reporter.log("<a href='" + completeImagePath + "'> <img src='" + completeImagePath
					+ "' height='400' width='400'/> </a>");
		} catch (IOException e) {
			e.printStackTrace();
		}

		return completeImagePath;
	}

	public static File captureScreenshot() {
		return ((TakesScreenshot) new DriverManagerSelenium().getDriver()).getScreenshotAs(OutputType.FILE);
	}

	public static byte[] encodedScreenshot(File file) {
		byte[] encoded = null;
		try {
			encoded = Base64.encodeBase64(FileUtils.readFileToByteArray(file));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return encoded;
	}

	public void embedScreenshot(Scenario scenario) {
		File file = captureScreenshot();

		byte[] encoded = encodedScreenshot(file);

		String imagePath = PathConstants.screenshots + File.separator + params.getPlatformName() + "_"
				+ params.getBrowser() + File.separator + params.getDateTime() + File.separator + scenario.getName()
				+ ".png";

		String completeImagePath = System.getProperty("user.dir") + File.separator + imagePath;

		try {
			FileUtils.copyFile(file, new File(imagePath));
			Reporter.log("This is the sample screenshot");
			Reporter.log("<a href='" + completeImagePath + "'> <img src='" + completeImagePath
					+ "' height='400' width='400'/> </a>");
		} catch (IOException e) {
			e.printStackTrace();
		}

		try {
			scenario.embed(encoded, "image/png", scenario.getName());
			/*
			 * ExtentReport.getTest().fail("Test Failed",
			 * MediaEntityBuilder.createScreenCaptureFromPath(completeImagePath).build());
			 */
			ExtentReportSelenium.getTest().fail("Test Failed", MediaEntityBuilder
					.createScreenCaptureFromBase64String(new String(encoded, StandardCharsets.US_ASCII)).build());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void screenShotAttach(String Msg) {
		File file = captureScreenshot();
		byte[] encoded = encodedScreenshot(file);

		try {
			ExtentReportSelenium.getTest().info("Screenshot--" + Msg, MediaEntityBuilder
					.createScreenCaptureFromBase64String(new String(encoded, StandardCharsets.US_ASCII)).build());
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public void waitForVisibility(WebElement e) {
		WebDriverWait wait = new WebDriverWait(driver, TestUtils.WAIT);
		wait.until(ExpectedConditions.visibilityOf(e));
	}

	public int genrateRandomNumber(int min, int max) {
		int random_int = (int) (Math.random() * (max - min + 1) + min);
		return random_int;
	}

	public void selectByText(WebElement e, String text) {
		waitForVisibility(e);
		Select option = new Select(e);
		option.selectByVisibleText(text);

	}

	public void mousehover(WebElement e, String msg) {
		Actions action = new Actions(driver);
		action.moveToElement(e).perform();
		ExtentReportSelenium.getTest().log(Status.INFO, msg);
	}

	public void refresh() {
		driver.navigate().refresh();
	}

	public void navigateBack() {
		driver.navigate().back();
	}

	public WebElement scrollToElement(WebElement element) throws IOException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView();", element);
		return element;
	}

	public WebElement findElement(String locatorString) {
		return driver.findElement(findLocator(locatorString));
	}

	public By findLocator(String locatorString) {
		String string = locatorString;
		String[] parts = string.split(":");
		String type = parts[0];
		String object = parts[1];
		if (parts.length > 2) {
			for (int i = 2; i < parts.length; i++) {
				object = object + ":" + parts[i];
			}
		}
		By by = null;
		if (type.equals("id")) {
			by = By.id(object);
		} else if (type.equals("name")) {
			by = By.name(object);
		} else if (type.equals("class")) {
			by = By.className(object);
		} else if (type.equals("link")) {
			by = By.linkText(object);
		} else if (type.equals("partiallink")) {
			by = By.partialLinkText(object);
		} else if (type.equals("css")) {
			by = By.cssSelector(object);
		} else if (type.equals("xpath")) {
			by = By.xpath(object);
		} else {
			throw new RuntimeException("Please provide correct element locating strategy");
		}
		return by;
	}

	public void selectDateFromCalendar(String date) throws IOException, InterruptedException {
		Thread.sleep(5000);
		String monthYear = driver.findElement(By.xpath(
				"button[@aria-label='Choose month and year']span[@class='owl-dt-control-content owl-dt-control-button-content']"))
				.getText();
		String[] arrOfStr = monthYear.split(" ", 2);
		String month = arrOfStr[0];
		System.out.println("Month :: " + month);
		Thread.sleep(5000);
		click(driver.findElement(By.xpath(
				"button[@aria-label='Choose month and year']span[@class='owl-dt-control-content owl-dt-control-button-content']")));
		String[] dobArr = date.split("-", 3);
		int targetYear = Integer.parseInt(dobArr[2]);
		System.out.println("targetYear :: " + targetYear);
		String str1 = Integer.toString(targetYear);
		String targetYearXpath = "xpath:span[@ng-reflect-klass='owl-dt-calendar-cell-content' and contains(text(),'"
				+ targetYear + "')]";
		String targetDate = dobArr[1];
		String targetMonth = dobArr[0];
		String targetMonthXpath = "xpath:span[contains(text(),'" + dobArr[0] + "')]";

		targetYearNotDisplay = checkTargetYearPresence(str1);
		while (targetYearNotDisplay == 0) {
			getYearRange();
			if (targetYear < yearMin) {
				Thread.sleep(3000);
				click(driver.findElement(By.xpath(
						"button[@class='owl-dt-control-button owl-dt-control-arrow-button' and @aria-label='Previous 21 years']span")));
				getYearRange();
				targetYearNotDisplay = checkTargetYearPresence(str1);
			} else if (targetYear > yearMax) {
				Thread.sleep(3000);
				try {
					click(driver.findElement(By.xpath(
							"button[@class='owl-dt-control-button owl-dt-control-arrow-button' and @aria-label='Next 21 years']span")));
					getYearRange();
				} catch (Exception e) {
					System.out.println("No Element Found");
					break;
				}
				targetYearNotDisplay = checkTargetYearPresence(str1);

			} else {
				break;
			}
		}
		Thread.sleep(3000);
		findElement(targetYearXpath).click();

		Thread.sleep(3000);
		if (month.contentEquals(targetMonth)) {
			findElement(targetMonthXpath).click();
		} else if (!month.contains(targetMonth)) {
			findElement(targetMonthXpath).click();
		}

		String genericDateLocator = "td[not(contains(@aria-disabled,'true'))]span[not(contains(@class,'owl-dt-calendar-cell-out')) and text()='selectDate' and contains(@class,'owl-dt-calendar-cell')]";
		String dateLocatorWithTargetDate = genericDateLocator.replace("selectDate", targetDate);
		System.out.println("dateLocatorWithTargetDate = " + dateLocatorWithTargetDate);
		driver.findElement(By.xpath(dateLocatorWithTargetDate)).click();
	}

	public int checkTargetYearPresence(String targetYear) {
		String locator = "span[@class='owl-dt-calendar-cell-content' and contains(text(),'targetYearToSelect')]"
				.replace("targetYearToSelect", targetYear);

		return driver.findElements(By.xpath(locator)).size();
	}

	public int checkElementPresence(String element) {

		return driver.findElements(By.xpath(element)).size();
	}

	public void AlertHandle() {
		driver.switchTo().alert();
		String alertMessage = driver.switchTo().alert().getText();
		System.out.println(alertMessage);
		driver.switchTo().alert().accept();
	}

	public void getYearRange() throws IOException, InterruptedException {

		String rangeYear = driver.findElement(By.xpath("thead[@class='owl-dt-calendar-header']th")).getText();
		String[] yearRange = rangeYear.split("~", 2);
		yearMin = Integer.parseInt(yearRange[0].trim());
		System.out.println("Year Mininum :: " + yearMin);
		yearMax = Integer.parseInt(yearRange[1].trim());
		System.out.println("Year Maximum :: " + yearMax);
	}

	/**
	 * Gets the page title of the current window.
	 */
	public String getPageTitle() {
		return driver.getTitle();
	}

	public String getCssValue(WebElement e, String value) {
		return e.getCssValue(value);
	}

	public void imageToReport(String scenario, String status, String msg) {
		File file = ((TakesScreenshot) new DriverManagerSelenium().getDriver()).getScreenshotAs(OutputType.FILE);

		byte[] encoded = null;
		try {
			encoded = Base64.encodeBase64(FileUtils.readFileToByteArray(file));
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		String imagePath = PathConstants.screenshots + File.separator + params.getPlatformName() + "_"
				+ params.getBrowser() + File.separator + params.getDateTime() + File.separator + scenario + ".png";

		String completeImagePath = System.getProperty("user.dir") + File.separator + imagePath;

		try {
			FileUtils.copyFile(file, new File(imagePath));
			Reporter.log("This is the sample screenshot");
			Reporter.log("<a href='" + completeImagePath + "'> <img src='" + completeImagePath
					+ "' height='400' width='400'/> </a>");
		} catch (IOException e) {
			e.printStackTrace();
		}

		switch (status) {
		case "Fail":
			try {
				params.getScenario().embed(encoded, "image/png", scenario);
				/*
				 * ExtentReport.getTest().fail("Test Failed",
				 * MediaEntityBuilder.createScreenCaptureFromPath(completeImagePath).build());
				 */
				ExtentReportSelenium.getTest().fail("Test Failed", MediaEntityBuilder
						.createScreenCaptureFromBase64String(new String(encoded, StandardCharsets.US_ASCII)).build());
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;

		case "Pass":
			try {
				params.getScenario().embed(encoded, "image/png", scenario);

				ExtentReportSelenium.getTest().pass("Test Passed", MediaEntityBuilder
						.createScreenCaptureFromBase64String(new String(encoded, StandardCharsets.US_ASCII)).build());
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;

		case "Info":
			try {
				params.getScenario().embed(encoded, "image/png", scenario);

				ExtentReportSelenium.getTest().info(msg, MediaEntityBuilder
						.createScreenCaptureFromBase64String(new String(encoded, StandardCharsets.US_ASCII)).build());
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
		}

	}

	public void scriptWait(long timeout) throws InterruptedException {
		Thread.sleep(timeout);
	}

	private List<String> getOptionalFieldsList() {
		List<String> optionalFields = new ArrayList<String>();
		optionalFields.add("PHONE_NO");
		optionalFields.add("FEDERALTAXNUM");
		optionalFields.add("SUBDOMAIN");
		optionalFields.add("WHITELABELING");
		optionalFields.add("YEAR_ESTABLISHMENT");
		optionalFields.add("LIVEDATE");
		optionalFields.add("LINE_OF_BUSINESS");
		optionalFields.add("DOCUSIGN");
		return optionalFields;
	}

	public void validateData(HashMap<String, String> uiDataMap, HashMap<String, String> expectedDataMap,
			ExtentTest log) {
		boolean isMatchFound;
		List<String> optionalFields = getOptionalFieldsList();
		for (Map.Entry<String, String> expectedEntry : expectedDataMap.entrySet()) {
			isMatchFound = false;
			for (Map.Entry<String, String> actualEntry : uiDataMap.entrySet()) {
				if (actualEntry.getKey().toString().equalsIgnoreCase(expectedEntry.getKey().toString())) {
					isMatchFound = true;
					if (optionalFields.contains(actualEntry.getKey().toString()) && expectedEntry.getValue().isEmpty()
							&& actualEntry.getValue().equals("Not Specified")) {
						System.out.println("Passed for key :: " + actualEntry.getKey().toString());
						log.log(Status.INFO, "Actual/Expected filed name:: " + actualEntry.getKey().toString() + " / "
								+ expectedEntry.getKey().toString() + ")");
						log.log(Status.INFO,
								"Actual value is Not Specified and Expected value is empty which is correct");
						log.log(Status.PASS, MarkupHelper.createLabel(
								"Passed for key :: " + actualEntry.getKey().toString(), ExtentColor.GREEN));
					} else {
						if (actualEntry.getValue().toString().equalsIgnoreCase(expectedEntry.getValue().toString())) {
							System.out.println("Passed for key :: " + actualEntry.getKey().toString());
							log.log(Status.INFO, "Actual/Expected field name:: " + actualEntry.getKey().toString()
									+ " / " + expectedEntry.getKey().toString() + ")");
							log.log(Status.INFO, "Actual/Expected field value:: " + actualEntry.getValue().toString()
									+ " / " + expectedEntry.getValue().toString() + ")");
							log.log(Status.PASS, MarkupHelper.createLabel(
									"Passed for key :: " + actualEntry.getKey().toString(), ExtentColor.GREEN));
						} else {
							System.out.println("Failed for key :: " + actualEntry.getKey().toString());
							log.log(Status.INFO, "Actual / Expected field name:: " + actualEntry.getKey().toString()
									+ " / " + expectedEntry.getKey().toString() + ")");
							log.log(Status.INFO, "Actual / Expected field value:: " + actualEntry.getValue().toString()
									+ " / " + expectedEntry.getValue().toString() + ")");
							log.log(Status.FAIL, MarkupHelper.createLabel(
									"Failed for key :: " + actualEntry.getKey().toString(), ExtentColor.RED));
						}
					}
					break;
				}
			}
			if (!isMatchFound) {
				System.out.println("Failed for key :: " + expectedEntry.getKey().toString());
				log.log(Status.INFO, "Entry for field - " + expectedEntry.getKey().toString()
						+ " and its corresponding value - " + expectedEntry.getValue().toString() + " not found on UI");
				log.log(Status.FAIL, MarkupHelper.createLabel("Failed for key :: " + expectedEntry.getKey().toString(),
						ExtentColor.RED));
			}
		}
	}

	// Equals Method for assertion

	public void assertEquals(String actText, String expText, ExtentTest log, String msg) {
		Assert.assertEquals(actText, expText);
		log.log(Status.INFO, " Actual/Expected Result" + " " + msg + "  " + " :: " + actText + "/" + expText);
	}

	// True Method for assertion

	public void assertTrue(boolean actual, ExtentTest log, String message, String msg) {
		Assert.assertTrue(actual, message);
		log.log(Status.INFO, msg);
	}

	// size of elements

	public int getSizeOfListOfElement(WebElement e) {
		int size = driver.findElements((By) e).size();
		System.out.println(" total count " + size);
		return size;
	}

	public void clearAll(WebElement e) {
		e.sendKeys(Keys.CONTROL + "a");
		e.sendKeys(Keys.DELETE);
		// e.sendKeys(Keys.BACK_SPACE);
	}

	public static void verifyActualExpectedResultWithEquals(String actualResult, String expectedResult, String str)
			throws InterruptedException {
		Thread.sleep(2000);
		ExtentTest log = ExtentReportSelenium.getTest().createNode(str);
		String actualExpectedLogStr = "<b> Expected/Actual:: " + expectedResult + "/" + actualResult + " <b>";
		if (actualResult.equals(expectedResult)) {
			String info = "Successfully verify " + str;
			log.log(Status.INFO, info);

			Markup b = MarkupHelper.createLabel(actualExpectedLogStr, ExtentColor.GREEN);
			log.log(Status.PASS, b);
			screenShotAttach(str + " Screenshot : ");
		} else {
			String info = "Not able to verify Actual/Expected Result of " + str;
			Markup a = MarkupHelper.createLabel(info, ExtentColor.RED);
			log.log(Status.INFO, a);

			Markup b = MarkupHelper.createLabel(actualExpectedLogStr, ExtentColor.RED);
			log.log(Status.FAIL, b);
			Assert.assertEquals(1, 0);
			flag = true;
		}
	}

	public static void passedLog(String stepName) {
		Markup m = MarkupHelper.createLabel(stepName, ExtentColor.GREEN);
		ExtentReportSelenium.getTest().log(Status.PASS, m);
	}

	public static void failedLog(String stepName) {
		Markup m = MarkupHelper.createLabel(stepName, ExtentColor.RED);
		ExtentReportSelenium.getTest().log(Status.FAIL, m);
	}

	public static void verifyActualExpectedResultWithContains(String actualResult, String expectedResult, String str)
			throws InterruptedException {
		Thread.sleep(2000);
		String actualExpectedLogStr = "<b> Expected/Actual:: " + expectedResult + "/" + actualResult + " <b>";

		if (actualResult.contains(expectedResult)) {
			ExtentReportSelenium.getTest().createNode("Verify Actual/Expected Result of " + str);

			String info = "Successfully verify " + str;
			Markup a = MarkupHelper.createLabel(info, ExtentColor.GREEN);
			ExtentReportSelenium.getTest().log(Status.INFO, a);

			Markup b = MarkupHelper.createLabel(actualExpectedLogStr, ExtentColor.CYAN);
			ExtentReportSelenium.getTest().log(Status.PASS, b);
		} else {
			String info = "Not able to verify Actual/Expected Result of " + str;
			Markup a = MarkupHelper.createLabel(info, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.INFO, a);

			Markup b = MarkupHelper.createLabel(actualExpectedLogStr, ExtentColor.RED);
			ExtentReportSelenium.getTest().log(Status.FAIL, b);
			ExtentReportSelenium.getTest().createNode("Verify Actual/Expected Result of " + str);

			Assert.assertEquals(1, 0);
		}
	}

	public String getValueFromDropDown(WebElement element, String compareText) {
		List<WebElement> options = new Select(element).getAllSelectedOptions();
		for (WebElement option : options) {
			if (option.getText().equals(compareText)) {
				return option.getText();
			}
		}
		return null;
	}
}
