package de.potsdam.slicer;

import java.util.TreeMap;

public class SliceVar {

	public String name;
	public SliceMethod slice_method;
	public TreeMap<Integer, SliceVarUse> varUseMap = new TreeMap<Integer, SliceVarUse>();
	
	public SliceVar(String name, SliceMethod slice_method) {
		this.name = name;
		this.slice_method = slice_method;
	}
	
	public SliceVarUse createUse(String temp, String class_name, String method_name, Integer line_number) {
		SliceVarUse s = new SliceVarUse(temp, class_name, method_name, line_number, this);
		this.varUseMap.put(line_number , s);
		return s;
	}

}
