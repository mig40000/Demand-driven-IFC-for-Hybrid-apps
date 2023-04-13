/**
 * 
 */
package de.potsdam.extract;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Logger;
import java.util.stream.Stream;

import org.apache.commons.io.IOUtils;

import de.potsdam.SmaliContent.SmaliContent;


/**
 * @author abhishektiwari
 *
 */
public class CollectClasses {
	
	
	public static void storeFiles(String directory , SmaliContent smaliData, Logger logger) throws IOException {
		
		FileInputStream fin;
		ArrayList<FileInputStream> f1 = new ArrayList();
	    try {
		//	Files.find(Paths.get(sDir), 999, (p, bfa) -> bfa.isRegularFile()).forEach(System.out::println);
	  	Stream<Path> path = Files.find(Paths.get(directory), 999, (p, bfa) -> 
	    			p.getFileName().toString().matches(".*\\.smali") && !p.toString().contains("smali/android") && !p.toString().contains("androidx") && !p.toString().contains("com/google") && !p.toString().contains("com/googlecode") && !p.toString().contains("com/facebook") && !p.toString().contains("com/android") && !p.toString().contains("R.smali") && !p.toString().contains("R$") && bfa.isRegularFile());
	  	
	  	
	  	for (Iterator<Path> iterator = path.iterator(); iterator.hasNext(); )
	  	{
	  	    Path p1 = iterator.next();
	  	//    System.out.println(p1);
	  	    fin = new FileInputStream(p1.toString());
	  	    f1.add(fin);
	  	}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    Set<FileInputStream> set = new HashSet<>(f1);
		f1.clear();
		f1.addAll(set);
		for(FileInputStream f2 : f1) {
			//System.out.println(f2.toString());	
			smaliData.class_content.add(IOUtils.readLines(f2));
			f2.close();
		}
	}

	public static void listFiles(String directory, SmaliContent smaliData, Logger logger) throws IOException {
		
		File dir = new File(directory);
		File[] list = dir.listFiles();
		ArrayList<FileInputStream> f1 = new ArrayList();
		//System.out.println("Here in listfiles " + dir.getAbsolutePath());
		
		if(list!=null)
	        for (File fil : list)
	        {
	        	if (fil.isDirectory() && !fil.getAbsolutePath().contains("smali/android") && !fil.getAbsolutePath().contains("androidx") && !fil.getAbsolutePath().contains("original") && !fil.getAbsolutePath().contains("res") && !fil.getAbsolutePath().contains("com/google/android") && !fil.getAbsolutePath().contains("com/google/firebase") && !fil.getAbsolutePath().contains("com/facebook") && !fil.getAbsolutePath().contains("com/google") && !fil.getAbsolutePath().contains("com/googlecode") && !fil.getAbsolutePath().contains("com/android"))
	            {
	        		logger.info(fil.getAbsolutePath());
	        	//	System.out.println("File is " + fil.getAbsolutePath());
	        		listFiles(fil.getAbsolutePath(), smaliData, logger);
	            }
	        	else {
	        		//if(!fil.getName().contains("R$") && !fil.getName().equals("R.smali") && !fil.getName().equals(".DS_Store") && !fil.getName().equals("BuildConfig.smali") && !fil.getName().contains("$") && !fil.getName().equals("a.smali") && !fil.getName().equals("b.smali") && !fil.getName().equals("c.smali") && !fil.getName().equals("d.smali") && !fil.getName().equals("e.smali") && !fil.getName().equals("f.smali") && !fil.getName().equals("g.smali") && !fil.getName().equals("h.smali") &&  !fil.getName().equals("i.smali") && !fil.getName().equals("j.smali") && !fil.getName().equals("k.smali") && !fil.getName().equals("l.smali")  &&  !fil.getName().equals("m.smali") && !fil.getName().equals("n.smali") && !fil.getName().equals("o.smali") && !fil.getName().equals("p.smali")  &&  !fil.getName().equals("q.smali") && !fil.getName().equals("r.smali") && !fil.getName().equals("s.smali") && !fil.getName().equals("t.smali")  && !fil.getName().equals("u.smali") && !fil.getName().equals("v.smali") && !fil.getName().equals("w.smali") && !fil.getName().equals("x.smali") && !fil.getName().equals("y.smali") && !fil.getName().equals("z.smali")){
	        		if(!fil.getName().contains("R$") && !fil.getName().equals("R.smali") && !fil.getName().equals(".DS_Store") && !fil.getName().equals("BuildConfig.smali") && !fil.getName().equals("AndroidManifest.xml") && !fil.getName().equals("apktool.yml")){
	        			logger.info("final file " + fil.getName());
	        		try {
	        			if(!directory.endsWith("/"))
	        				directory += "/";
	        			String dummy = directory + fil.getName();
	        			
	        			FileInputStream fin;
	        			if(!dummy.contains("/smali/android") ){
	        				
	        				File dircheck = new File(directory + fil.getName());
	        			//	System.out.println("File is " + dircheck.getAbsolutePath());
	        				if(!dircheck.isDirectory()) {
	        				fin = new FileInputStream(directory + fil.getName());
	        				f1.add(fin);
	        				
	        			//	
	        				}
	        			}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	        		}
	        	}
	        }
		
		Set<FileInputStream> set = new HashSet<>(f1);
		f1.clear();
		f1.addAll(set);
		for(FileInputStream fin : f1) {
			smaliData.class_content.add(IOUtils.readLines(fin));
			fin.close();
		}
	   
	}
	
	
	public static void listFilesA(String directory, SmaliContent smaliData, Logger logger) throws IOException {
		
		File dir = new File(directory);
		File[] list = dir.listFiles();
		
		
	//	System.out.println("Here in listfiles " + dir.getAbsolutePath());
		
		if(list!=null)
	        for (File fil : list)
	        {
	        	if (fil.isDirectory() && !fil.getAbsolutePath().contains("smali/android") && !fil.getAbsolutePath().contains("androidx") && !fil.getAbsolutePath().contains("original") && !fil.getAbsolutePath().contains("res") && !fil.getAbsolutePath().contains("com/google/android") && !fil.getAbsolutePath().contains("com/google/firebase") && !fil.getAbsolutePath().contains("com/facebook") && !fil.getAbsolutePath().contains("com/google") && !fil.getAbsolutePath().contains("com/googlecode") && !fil.getAbsolutePath().contains("com/android"))
	            {
	        		logger.info(fil.getAbsolutePath());
	        	//	System.out.println("File is " + fil.getAbsolutePath());
	        		listFilesA(fil.getAbsolutePath(), smaliData, logger);
	            }
	        	else {

	        		//if(!fil.getName().contains("R$") && !fil.getName().equals("R.smali") && !fil.getName().equals(".DS_Store") && !fil.getName().equals("BuildConfig.smali") && !fil.getName().contains("$") && !fil.getName().equals("a.smali") && !fil.getName().equals("b.smali") && !fil.getName().equals("c.smali") && !fil.getName().equals("d.smali") && !fil.getName().equals("e.smali") && !fil.getName().equals("f.smali") && !fil.getName().equals("g.smali") && !fil.getName().equals("h.smali") &&  !fil.getName().equals("i.smali") && !fil.getName().equals("j.smali") && !fil.getName().equals("k.smali") && !fil.getName().equals("l.smali")  &&  !fil.getName().equals("m.smali") && !fil.getName().equals("n.smali") && !fil.getName().equals("o.smali") && !fil.getName().equals("p.smali")  &&  !fil.getName().equals("q.smali") && !fil.getName().equals("r.smali") && !fil.getName().equals("s.smali") && !fil.getName().equals("t.smali")  && !fil.getName().equals("u.smali") && !fil.getName().equals("v.smali") && !fil.getName().equals("w.smali") && !fil.getName().equals("x.smali") && !fil.getName().equals("y.smali") && !fil.getName().equals("z.smali")){
	        		if(fil.getName().contains(".smali") && !fil.getName().contains("R$") && !fil.getName().equals("R.smali") && !fil.getName().equals(".DS_Store") && !fil.getName().equals("BuildConfig.smali") && !fil.getName().equals("AndroidManifest.xml") && !fil.getName().equals("apktool.yml")){
	        			logger.info("final file " + fil.getName());
	        			//try {
		        			if(!directory.endsWith("/"))
		        				directory += "/";
		        			String dummy = directory + fil.getName();
		        			if(!dummy.contains("/smali/android")) {
		        				File dircheck = new File(directory + fil.getName());
		        				if(!dircheck.isDirectory()) {
		        					try(FileInputStream ftemp = new FileInputStream(directory + fil.getName())){
		        					smaliData.class_content.add(IOUtils.readLines(ftemp, "UTF-8"));	  
		        					} catch (IOException e) {
		        						System.out.println("Culprit file is " + directory + fil.getName());
		        						e.printStackTrace();
		    						}
		        				}
		       
		        				}
					//	
							// TODO Auto-generated catch block
						
		        		}
		        	}
		        }
		
	}

}


