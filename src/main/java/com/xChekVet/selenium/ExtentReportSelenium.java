package com.xChekVet.selenium;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;
import com.xChekVet.constants.PathConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class ExtentReportSelenium {
	static ExtentReports extent;
	final static String filePath = PathConstants.reports;
	static Map<Integer, ExtentTest> extentTestMap = new HashMap<Integer, ExtentTest>();

	public synchronized static ExtentReports getReporter() {
		GlobalParamsWeb params = new GlobalParamsWeb();
		if (extent == null) {
			ExtentHtmlReporter html = new ExtentHtmlReporter(
					filePath + File.separator + params.getPlatformName() + File.separator + params.getBrowser()
							+ File.separator + "WebApplication_Extent_Report_" + params.getDateTime() + ".html");
			html.config().setDocumentTitle("WebApplication");
			html.config().setReportName("WebApplication_Report");
			html.config().setTheme(Theme.STANDARD);
			html.config().setTimeStampFormat("EEEE, MMMM dd, yyyy, hh:mm a '('zzz')'");
			extent = new ExtentReports();
			extent.attachReporter(html);
			extent.setSystemInfo("Software_Automation_Engineer : ", "Rakesh_Singh_Thakur");

		}

		return extent;
	}

	public static synchronized ExtentTest getTest() {
		return (ExtentTest) extentTestMap.get((int) (long) (Thread.currentThread().getId()));
	}

	public static synchronized ExtentTest startTest(String testName, String desc) {
		ExtentTest test = getReporter().createTest(testName, desc);
		extentTestMap.put((int) (long) (Thread.currentThread().getId()), test);
		return test;
	}
}
