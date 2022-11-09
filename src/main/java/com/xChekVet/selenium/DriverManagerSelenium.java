package com.xChekVet.selenium;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;

import com.xChekVet.constants.FrameworkConstants;
import com.xChekVet.utils.SystemUtil;
import com.xChekVet.utils.TestUtils;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class DriverManagerSelenium {
    private static ThreadLocal<WebDriver> driver = new ThreadLocal<>();
    TestUtils utils = new TestUtils();

    public WebDriver getDriver(){
        return driver.get();
    }

    public void setDriver(WebDriver driver2){
        driver.set(driver2);
    }

    @SuppressWarnings({ "unused", "static-access" })
	public void initializeDriver() throws Exception {
        WebDriver driver = null;
        GlobalParamsWeb params = new GlobalParamsWeb();

        if(driver == null){
            try{
            utils.log().info("initializing Web driver");
            driver = Browser.getInstance(params.getBrowser());
            driver.manage().timeouts().pageLoadTimeout(FrameworkConstants.pageloadTimeout, TimeUnit.SECONDS);
            if(driver == null){
                throw new Exception("driver is null. ABORT!!!");
            }
            utils.log().info("Driver is initialized");
            Dimension dimension = SystemUtil.getDimension();
            driver.manage().window().setSize(dimension);
            utils.log().info("Screen Resolution (WxH)={}x{}", dimension.getWidth(), dimension.getHeight());
            this.driver.set(driver);
            } catch (IOException e) {
                e.printStackTrace();
                utils.log().fatal("Driver initialization failure. ABORT !!!!" + e.toString());
                throw e;
            }
        }
    }
}
