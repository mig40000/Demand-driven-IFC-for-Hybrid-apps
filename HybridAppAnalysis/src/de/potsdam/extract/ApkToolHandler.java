/**
 * 
 */
package de.potsdam.extract;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.logging.Logger;

import de.potsdam.constants.GenericConstants;

/**
 * @author abhishektiwari
 *
 */
public class ApkToolHandler {

	
	public void dissembeApk(String apkFile, Logger logger, String apkPath) {
		
		String outputFolderPath = GenericConstants.APKTOOL_OUTPUT_DIRECTORY + apkFile;
	//	System.out.println("intemediateFilePath " + outputFolderPath);
		System.out.println(apkPath);
		apkPath = apkPath + ".apk";
		try {
			//Use apktool to extract the source
			ProcessBuilder pb = new ProcessBuilder("/usr/local/bin/apktool","d","-o", outputFolderPath, apkPath);
			Process p = pb.start();

				BufferedReader reader = 
				         new BufferedReader(new InputStreamReader(p.getInputStream()));
				
				BufferedReader errReader = 
				         new BufferedReader(new InputStreamReader(p.getErrorStream()));
		       
				String line = "";
				while((line = reader.readLine()) != null) {
		            logger.info(line + "\n");
		        }
				while((line = errReader.readLine()) != null) {
					logger.warning(line + "\n");
		        }
				 p.waitFor();
		        
		} catch (IOException | InterruptedException e1) {
	        e1.printStackTrace();
	    }

	}
	
	public void assembleApk(String apk, String path) {
		
		try {
			//Use apktool to extract the source
			apk = apk.replace("Output/", "");
			apk = apk.replace(".apk", "");
			System.out.println(apk);
			ProcessBuilder pb = new ProcessBuilder("/usr/local/bin/apktool","b", apk, "-o", path);
			Process p = pb.start();

				BufferedReader reader = 
				         new BufferedReader(new InputStreamReader(p.getInputStream()));
		       
				String line = "";
				while((line = reader.readLine()) != null) {
		            System.out.print(line + "\n");
		        }
				 p.waitFor();
		        
		} catch (IOException | InterruptedException e1) {
	        e1.printStackTrace();
	    }

	}
}
