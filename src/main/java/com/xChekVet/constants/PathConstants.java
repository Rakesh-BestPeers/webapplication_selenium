package com.xChekVet.constants;

import java.io.File;

public interface PathConstants {

	// artifacts
	String screenshots = "artifacts" + File.separator + "Screenshots";
	String reports = "artifacts" + File.separator + "html";
	String video = "artifacts" + File.separator + "Videos";
	String serverlogs = "artifacts" + File.separator + "Serverlogs";
	String logs = "artifacts" + File.separator + "logs";
	String toastMsg = "artifacts" + File.separator + "verifyScreenShots";
	String downloadImgPath = System.getProperty("user.dir") + "\\src\\test\\resources\\downloadedImage\\Active.";
	String storedImgPath = System.getProperty("user.dir") + "\\src\\test\\resources\\storedImage";

	// testdata
	String testData = "./src/test/resources/data/xChekVet.xlsx";
	String xmlPath = "strings/strings.xml";
	String jsonPath = "data/loginUsers.json";

}
