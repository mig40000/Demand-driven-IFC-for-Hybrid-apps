package potsdam.slicer;

public class SliceControlFlow extends SliceBase {
	
	public String method_name;
	
	public SliceControlFlow(String line, String class_name, String method_name, Integer line_number) {
		this.line = line;
		this.class_name = class_name;
		this.method_name = method_name;
		this.line_number = line_number;
	}

}
