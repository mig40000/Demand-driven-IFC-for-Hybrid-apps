package de.potsdam.slicer;

public class SliceVarUse extends SliceBase {
	
	public String method_name;
	public SliceVar slice_var;
	public String var_name;
	
	public SliceVarUse(String line, String class_name, String method_name, Integer line_number, SliceVar slice_var) {
		this.line = line;
		this.class_name = class_name;
		this.method_name = method_name;
		this.line_number = line_number;
		this.slice_var = slice_var;
	}
	
	public SliceVarUse(String class_name, String method_name, Integer line_number, String slice_var) {
		this.class_name = class_name;
		this.method_name = method_name;
		this.line_number = line_number;
		this.var_name = slice_var;
	}

}
