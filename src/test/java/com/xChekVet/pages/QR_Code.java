package com.xChekVet.pages;

import com.google.zxing.*;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import javax.imageio.ImageIO;
import org.testng.Assert;
import org.testng.annotations.Test;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class QR_Code {
	@Test
	public void QRTest() throws NotFoundException {
		try {
			File file = new File("E:\\qr_code_PNG26.png");
			String decodedText = null;

			// store the file as an image
			BufferedImage bufferedImage = ImageIO.read(file);

			// process the image
			LuminanceSource source = new BufferedImageLuminanceSource(bufferedImage);
			BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
			// store the details of the QR code
			Result result = new MultiFormatReader().decode(bitmap);
			decodedText = result.getText();

			// print to console
			System.out.println("Decoded text = " + decodedText);

			// testng assertion
			Assert.assertEquals(decodedText, "http://zh.wikipedia.org/");

		} catch (IOException e) {
			System.out.println("Could not decode QR Code, IOException :: " + e.getMessage());
		}
	}
}
