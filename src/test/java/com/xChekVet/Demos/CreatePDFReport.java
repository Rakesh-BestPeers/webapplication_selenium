package com.xChekVet.Demos;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.xChekVet.constants.PathConstants;

public class CreatePDFReport {

	Document doc;

	public void openPdfPath() throws FileNotFoundException, DocumentException {

		String fileName = new File("").getAbsoluteFile().toString() + PathConstants.video + System.currentTimeMillis()
				+ ".pdf";

		FileOutputStream fos = new FileOutputStream(fileName);

		doc = new Document();

		PdfWriter.getInstance(doc, fos);

		doc.open();
	}

	public void addMetaData(String authorName, String title, String description) {
		doc.addAuthor("Rakesh Thakur");
		doc.addTitle("Northout");
		doc.addSubject("Automation Testing");
	}

	public void addParagraph(String text) throws DocumentException {
		doc.add(new Paragraph("This is ParaGraph"));
	}

	public void closePdf() {
		doc.close();
	}
}