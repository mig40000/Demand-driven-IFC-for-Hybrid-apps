/**
 * 
 */
package de.potsdam.main;

import java.io.File;

/**
 * @author abhishektiwari
 *
 */

 /** 
  * This class acts as the main entry point
  * for the Analysis phase. 
 
 */
public class IIFACommandLineInterface {


	public static void main(String args[]){

		final long startTime = System.currentTimeMillis();
		//parse the command Line 
		cliParser(args);

		//Extract application details
		ApplicationAnalysis appAnalyzer = new ApplicationAnalysis(new File(args[0]));		
		appAnalyzer.extractApplicationDetails();
		System.out.println("Total number of apps analyzed " + ApplicationAnalysis.appCounter);
	
		final long endTime = System.currentTimeMillis();
		System.out.println("Total execution time in milliseconds: " + (endTime - startTime) );
	}
	
	private static void cliParser(String args[]){
		
		if(args.length < 1){
			System.out.println("No application to analyze!");
			printUsage();
			System.exit(0);
		}
		
		File inputDirectory = new File(args[0]);
		if(!inputDirectory.isDirectory()){
			System.out.println("Not a valid directory!");
			printUsage();
			System.exit(0);
		}
		
	}
	
	
	private static void printUsage(){
		System.out.println("Usage: java -jar IIFAAnalysis.jar <options> <path of directory containing APK files >");
		System.out.println("-l, --log-dir <directory>  Path to store the log files, default is output/logs");
	}
}
