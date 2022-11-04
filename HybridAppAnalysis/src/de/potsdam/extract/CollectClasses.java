/**
 * 
 */
package de.potsdam.extract;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.logging.Logger;

import org.apache.commons.io.IOUtils;

import de.potsdam.SmaliContent.SmaliContent;


/**
 * @author abhishektiwari
 *
 */
public class CollectClasses {

	public static void listFiles(String directory, SmaliContent smaliData, Logger logger) {
		
		File dir = new File(directory);
		File[] list = dir.listFiles();
		System.out.println("Here in listfiles " + dir.getAbsolutePath());
		
		if(list!=null)
	        for (File fil : list)
	        {
	        	if (fil.isDirectory() && !fil.getAbsolutePath().contains("smali/android") && !fil.getAbsolutePath().contains("androidx") && !fil.getAbsolutePath().contains("original") && !fil.getAbsolutePath().contains("res") && !fil.getAbsolutePath().contains("com/google/android"))
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
	        				if(!dircheck.isDirectory()) {
	        				fin = new FileInputStream(directory + fil.getName());
	        				System.out.println("File is " + fin.toString());
						    smaliData.class_content.add(IOUtils.readLines(fin));
						    fin.close();
	        				}
	        			}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	        		}
	        	}
	        }
		
	}

}


