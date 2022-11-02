package potsdam.slicer;

abstract public class SliceBase implements Comparable<SliceBase>{

	public String line;
	public Integer line_number;
	public String class_name;
	
	public int compareTo(SliceBase s) {
		int i = this.class_name.compareTo(s.class_name);
		if (i != 0) return i;
		
		return Integer.compare(this.line_number, s.line_number);
	}

}
