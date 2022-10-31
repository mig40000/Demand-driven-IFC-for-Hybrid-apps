/**
 * 
 */
package com.potsdam.SmaliContent;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import com.potsdam.constants.GenericConstants;

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
