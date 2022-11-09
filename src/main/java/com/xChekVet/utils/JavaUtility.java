package com.xChekVet.utils;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;



/**
 * This class includes all java utility methods
 *
 */
public class JavaUtility {
	public static List<String> filesListInDir = new ArrayList<String>(); 
	/**
	 * This method Generate file name with date/timestamp as postfix to it
	 * 
	 * @param baseFileName
	 * @return
	 */
	
	public static void scriptWait(int time)
	{
		try {
			Thread.sleep(time);
		} catch (InterruptedException e) {
			e.getMessage();
		}
	}

	/**
	 * @param digits
	 * @return number with required digits
	 */
	public static String generateRandomNumber(int digits) {
		int minimum = (int) Math.pow(10, digits - 1); // minimum value with 2 digits is 10 (10^1)
		int maximum = (int) Math.pow(10, digits) - 1; // maximum value with 2 digits is 99 (10^2 - 1)
		Random random = new Random();
		return Integer.toString(minimum + random.nextInt((maximum - minimum) + 1));
	}

	/**
	 * @param min
	 * @param max
	 * @return number between the two with min inclusive and max exclusive
	 */
	public static String getRandomNumBtwnTwoNumbers(int min, int max) {
		Random r = new Random();
		int Low = min;
		int High = max;
		return Integer.toString((r.nextInt(High-Low) + Low));
	}

	/*************************zip file method starts here**************************/
	/**
	 * This method zips the directory
	 * @param dir
	 * @param zipDirName
	 */
	public static void zipDirectory(File dir, String zipDirName) {
		try {
			populateFilesList(dir);
			//now zip files one by one
			//create ZipOutputStream to write to the zip file
			FileOutputStream fos = new FileOutputStream(zipDirName);
			ZipOutputStream zos = new ZipOutputStream(fos);
			for(String filePath : filesListInDir){
				System.out.println("Zipping "+filePath);
				//for ZipEntry we need to keep only relative file path, so we used substring on absolute path
				ZipEntry ze = new ZipEntry(filePath.substring(dir.getAbsolutePath().length()+1, filePath.length()));
				zos.putNextEntry(ze);
				//read the file and write to ZipOutputStream
				FileInputStream fis = new FileInputStream(filePath);
				byte[] buffer = new byte[1024];
				int len;
				while ((len = fis.read(buffer)) > 0) {
					zos.write(buffer, 0, len);
				}
				zos.closeEntry();
				fis.close();
			}
			zos.close();
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * This method populates all the files in a directory to a List
	 * @param dir
	 * @param filesListInDir 
	 * @throws IOException
	 */
	private static void populateFilesList(File dir) throws IOException {  
		File[] files = dir.listFiles();
		for(File file : files){
			if(file.isFile()) filesListInDir.add(file.getAbsolutePath());
			else populateFilesList(file); 
		}
	}
	/*************************zip file method ends here
	 * @throws IOException **************************/

	/**
	 * method to use to renaming the file
	 * @param oldPath
	 * @param newPath
	 * @throws Exception
	 */
	public static void renameFile(String oldPath, String newPath) throws Exception { 
		JavaUtility.scriptWait(2000);
		// File (or directory) with old name
		File file = new File(oldPath);
		// File (or directory) with new name
		File file2 = new File(newPath);
		if (file2.exists())
			throw new IOException("file exists");
		// Rename file (or directory)
		boolean success = file.renameTo(file2);
		if(success) {
			// File was not successfully renamed
			System.out.println("File successfully renamed");
		}else {
			throw new Exception("File not renamed");
		}
	}

	

	

	/**
	 * method to use to get date
	 * @param daysGap
	 * @param datePattern
	 * @return
	 */
	public static String getDate(int daysGap, String datePattern) {
		SimpleDateFormat simpleDateFormat;
		simpleDateFormat = new SimpleDateFormat(datePattern);
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, daysGap);
		return simpleDateFormat.format(cal.getTime()); 
	}

	/**
	 * method to use to change time format
	 * @param time
	 * @param addMinutes
	 * @param timeformat
	 * @return
	 * @throws ParseException
	 */
	public static String changeTime(String time, int addMinutes, String timeformat) throws ParseException {
		SimpleDateFormat df = new SimpleDateFormat(timeformat);
		Date d = df.parse(time);  
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		cal.add(Calendar.MINUTE, addMinutes);
		return(df.format(cal.getTime()));
	}

	/**
	 * method to use to change date format
	 * @param time
	 * @param addMinutes
	 * @param oldFormat
	 * @param newFormat
	 * @return
	 * @throws ParseException
	 */
	public static String changeDateFormat(String time, int addMinutes, String oldFormat, String newFormat) throws ParseException {
		SimpleDateFormat dfOld = new SimpleDateFormat(oldFormat);
		SimpleDateFormat dfNew = new SimpleDateFormat(newFormat);
		Date d = dfOld.parse(time);  
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		cal.add(Calendar.MINUTE, addMinutes);
		return(dfNew.format(cal.getTime()));
	}

	/**
	 * method to use to get time in different time zone
	 * @param timezone
	 * @param format
	 * @return
	 */
	public static String getTimeInDifferentTimezone(String timezone, String format) {
		Calendar currentdate = Calendar.getInstance();
		SimpleDateFormat df = new SimpleDateFormat(format);
		TimeZone obj = TimeZone.getTimeZone(timezone);
		df.setTimeZone(obj);
		return(df.format(currentdate.getTime()));
	}

	/**
	 * method to use to uploding files
	 * @param filepath
	 * @throws AWTException
	 */
	public static void uploadFile(String filepath) throws AWTException { 
		StringSelection selection = new StringSelection(filepath);
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(selection,null);
		Robot robot = new Robot();
		robot.setAutoDelay(1500);
		robot.keyPress(KeyEvent.VK_CONTROL);
		robot.keyPress(KeyEvent.VK_V);
		robot.keyRelease(KeyEvent.VK_CONTROL);
		robot.keyRelease(KeyEvent.VK_V);
		robot.setAutoDelay(1000);
		robot.keyPress(KeyEvent.VK_ENTER); 
		robot.keyRelease(KeyEvent.VK_ENTER);
	}
	
	/**
	 * method to use to get file name from absolute path
	 * @param path
	 * @return
	 */
	public static String getFileNameFromAbsolutePath(String path) {
		File dir = new File(path);
		return(dir.getName());
	}
	
	public static String getcurrentdateandtime() {
		return "_" + new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss").format(new Date());
	}
	
	public static String getcurrentdate() {
		return "_" + new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	}
}

