package com.xChekVet.selenium;

import com.xChekVet.constants.FrameworkConstants;
import io.cucumber.java.Scenario;

public class GlobalParamsWeb {
    private static ThreadLocal<String> platformName = new ThreadLocal<String>();
    private static ThreadLocal<String> browser = new ThreadLocal<String>();
    private static ThreadLocal <String> dateTime = new ThreadLocal<String>();
//    private static ThreadLocal <Scenario> scenario = new ThreadLocal<Scenario>();
//    
//    
//    public Scenario getScenario() {
//        return scenario.get();
//    }
//    
//    public void setScenario(Scenario scenario2) {
//    	scenario.set(scenario2);
//    }
    public void setPlatformName(String platformName1){
        platformName.set(platformName1);
    }

    public String getPlatformName(){
        return platformName.get();
    }

    public String getBrowser() {
        return browser.get();
    }

    public void setBrowser(String browser2) {
        browser.set(browser2);
    }

    public String getDateTime() {
        return dateTime.get();
    }

    public void setDateTime(String dateTime2) {
        dateTime.set(dateTime2);
    }

    public void initializeGlobalParams(){
        GlobalParamsWeb params = new GlobalParamsWeb();
        params.setPlatformName(System.getProperty("platformName", FrameworkConstants.platform));
        params.setBrowser(System.getProperty("browser", FrameworkConstants.browser));
    }
    private static ThreadLocal <Scenario> scenario = new ThreadLocal<Scenario>();
	public Scenario getScenario() {
		return scenario.get();
	}

	public void setScenario(Scenario scenario2) {
		scenario.set(scenario2);
	}
}
