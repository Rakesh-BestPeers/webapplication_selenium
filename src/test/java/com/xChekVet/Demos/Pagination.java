package com.xChekVet.Demos;

import java.awt.AWTException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class Pagination {
	public WebDriver driver;

	@BeforeTest
	public void initializeBrowser() {
		System.setProperty("webdriver.gecko.driver",
				"/home/northoutrakesh/Pictures/Drivers/geckodriver-v0.27.0-linux64/geckodriver");
		driver = new FirefoxDriver();
		driver.get(
				"https://www.amazon.com/s?bbn=16225007011&rh=n%3A16225007011%2Cn%3A172456&dc&fst=as%3Aoff&pf_rd_i=16225007011&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=74069509-93ef-4a3c-8dca-a9e3fa773a64&pf_rd_r=E8PZQC93PGN5BRBRRS48&pf_rd_s=merchandised-search-4&pf_rd_t=101&qid=1487012920&rnid=16225007011&ref=s9_acss_bw_cts_Computer_T1_w");
	}

	@Test
	public void operationPagination() throws IOException, InterruptedException, AWTException {
     String nextButton=driver.findElement(By.xpath("")).getAttribute("class");
     while(!nextButton.contains("disabled"))
     {
    	 driver.findElement(By.xpath("")).click();
    	 
    	 
     }
			
			
		
		
	}

	@AfterTest()

	public void TearDown() {
		driver.close();
	}
}
