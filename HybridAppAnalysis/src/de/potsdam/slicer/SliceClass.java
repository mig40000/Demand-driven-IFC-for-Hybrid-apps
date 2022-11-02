package de.potsdam.slicer;

import java.util.HashMap;
import java.util.Map;

public class SliceClass extends SliceBase {

	public Map<String, SliceMethod> methodMap = new HashMap<String, SliceMethod>();
	
	public SliceClass(String line, String class_name, Integer line_number) {
		this.line = line;
		this.class_name = class_name;
		this.line_number = line_number;
	}

}
