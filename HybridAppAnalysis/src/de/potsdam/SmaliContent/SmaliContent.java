/**
 * 
 */
package de.potsdam.SmaliContent;

import java.util.ArrayList;
import java.util.List;

import de.potsdam.constants.GenericConstants;

/**
 * @author abhishektiwari
 *
 */
public class SmaliContent {

	//class_content contains smali code for each class 
	public List<List<String>> class_content;
	
	{
		class_content = new ArrayList<>(GenericConstants.MAX_CLASS);
	}
}
