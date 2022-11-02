package de.potsdam.slicer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SliceMethod extends SliceBase {
	
	public String name;
	public Integer lineNumber;
	public Boolean annotation = false;
	public Map<String, SliceVar> varMap = new HashMap<String, SliceVar>();
	public ArrayList<SliceControlFlow> cfList = new ArrayList<SliceControlFlow>();
	public ArrayList<SliceControlFlow> returnList = new ArrayList<SliceControlFlow>();
	public ArrayList<String> sourceCode = new ArrayList<String>();
	public ArrayList<String> invokedMethods = new ArrayList<String>();

	public SliceMethod(String line, String class_name, String name, Integer line_number) {
		this.line = line;
		this.class_name = class_name;
		this.name = name;
		this.line_number = line_number;
	}

}
