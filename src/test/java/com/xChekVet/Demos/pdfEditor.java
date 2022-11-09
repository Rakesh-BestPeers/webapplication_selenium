package com.xChekVet.Demos;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.apache.poi.EmptyFileException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;

public class pdfEditor {
	@Test
	public void readPDFTest() throws IOException {
		URL url = new URL("https://holybooks-lichtenbergpress.netdna-ssl.com/wp-content/uploads/Ramayana.pdf");
		InputStream is = url.openStream();
		BufferedInputStream fileparse = new BufferedInputStream(is);
		PDDocument document = null;
		document = PDDocument.load(fileparse);
		String pdfContest = new PDFTextStripper().getText(document);
		System.out.println(pdfContest);
	}

}
