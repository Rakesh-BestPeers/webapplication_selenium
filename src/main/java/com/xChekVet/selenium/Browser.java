package com.xChekVet.selenium;


import com.xChekVet.constants.FrameworkConstants;
import com.xChekVet.utils.Configuration;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxDriverLogLevel;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.ie.InternetExplorerDriver;

import java.io.IOException;

public final class Browser {

        public enum WebBrowser {
            CHROME32, CHROME32_NOHEAD, FF32, FF32_NOHEAD, FF64, FF64_NOHEAD, EDGE, IE32, IE64
        }

        private Browser() {
        }

        /**
         * Gets the Selenium WebDriver instance.
         *
         * @param webBrowser the {@code web.browser} specified in
         *                   {@code framework.properties}
         * @return WebDriver - the Selenium WebDriver
         */
        public static WebDriver getInstance(String webBrowser) throws IOException {
            WebDriver driver = null;

            try {
                WebBrowser wb = WebBrowser.valueOf(StringUtils.upperCase(webBrowser));
                switch (wb) {
                    case CHROME32:
                        driver = Browser.chromedriver(32, false);
                        break;
                    /*case CHROME32_NOHEAD:
                        driver = Browser.chromedriver(32, true);
                        break;*/
                    case FF32:
                        driver = Browser.firefoxdriver(32);
                        break;
                    /*case FF32_NOHEAD:
                        driver = Browser.firefoxdriver(32);
                        break;*/
                    case FF64:
                        driver = Browser.firefoxdriver(64);
                        break;
                    /*case FF64_NOHEAD:
                        driver = Browser.firefoxdriver(64, true);
                        break;*/
                    case EDGE:
                        WebDriverManager.edgedriver().setup();
                        driver = new EdgeDriver();
                        break;
                    case IE32:
                        WebDriverManager.iedriver().arch32().setup();
                        driver = new InternetExplorerDriver();
                        break;
                    case IE64:
                        WebDriverManager.iedriver().arch64().setup();
                        driver = new InternetExplorerDriver();
                        break;
                    default:
                        break;
                }
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Unsupported browser in framework.properties: " + webBrowser);
            }

            return driver;
        }

        /**
         * Instantiates the Chrome WebDriver.
         *
         * @param arch     32bit or 64bit
         * @return WebDriver - the Chrome WebDriver
         */
        private static WebDriver chromedriver(int arch, boolean headless) throws IOException {
            if (32 == arch) {
                if (FrameworkConstants.chromedriverVersionOn) {
                    WebDriverManager.chromedriver().version(FrameworkConstants.chromedriverVersion).setup();
                } else {
                    WebDriverManager.chromedriver().setup();
                }
            }

            if (headless) {
                ChromeOptions chromeOpts = new ChromeOptions();
                chromeOpts.addArguments("--headless");
                return new ChromeDriver(chromeOpts);
            }

            return new ChromeDriver();
        }

        /**
         * Instantiates the Firefox WebDriver.
         *
         * @param arch     32bit or 64bit
         * @return WebDriver - the Firefox WebDriver
         */
        private static WebDriver firefoxdriver(int arch) {
            if (32 == arch) {
                WebDriverManager.firefoxdriver().arch32().setup();
            }

            if (64 == arch) {
                WebDriverManager.firefoxdriver().arch64().setup();
            }

            /*if (headless) {
                FirefoxBinary ffBin = new FirefoxBinary();
                ffBin.addCommandLineOptions("--headless");

                FirefoxOptions ffOpts = new FirefoxOptions();
                ffOpts.setBinary(ffBin);
                ffOpts.setLogLevel(FirefoxDriverLogLevel.WARN);

                return new FirefoxDriver(ffOpts);
            }*/

            return new FirefoxDriver();
        }
}
