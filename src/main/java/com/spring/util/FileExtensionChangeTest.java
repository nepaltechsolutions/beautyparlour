package com.spring.util;

import org.apache.commons.io.FilenameUtils;

import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FileExtensionChangeTest {

	private static String getFileExtension(File file) {
		String fileName = file.getName();
		if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0)
			return fileName.substring(fileName.lastIndexOf(".") + 1);
		else
			return "";
	}

	public static boolean renameFileExtension
	  (String source, String newExtension){
	   String target= source.replaceFirst(Pattern.quote(".html") + "$", Matcher.quoteReplacement(".pdf"));
	   return new File(source).renameTo(new File(target));
	  }

	public static String renameFileExtension() {
		String fileName = "jhghj.html";
		fileName=fileName.replaceFirst(Pattern.quote(".html") + "$", Matcher.quoteReplacement(".pdf"));
		return fileName;
	}

	public static void main(String[] args)  {
//	System.out.println(renameFileExtension());		
		String contextPath = System.getProperty("user.dir") + "/src/main/webapp/WEB-INF/jsp/beautyShalon/";	
		File folder = new File(contextPath);		
		File[] listOfFiles = folder.listFiles();
//		String fileName=".jsp";
//		System.out.println(contextPath+"indexv2.html");
//		File file=new File(contextPath+"indexv4.html");
		
//        System.out.println("location"+);
		

		for (File f : listOfFiles) {
			if (f.isFile()) {
				System.out.println("First Name==>"+FilenameUtils.removeExtension(f.getName()));
				if (getFileExtension(f).equals("html")) {
					String name = FilenameUtils.removeExtension(f.getName())+".jsp";
			        System.out.println(new File(contextPath+f.getName()).renameTo(new File(contextPath+name))) ;

				}
			}
		}

	}

}
