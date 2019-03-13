package cn.edu.scau.cmi.liangzaoqing.singleton;

public class Goalkeeper {
	
	static Goalkeeper goalkeeper = null;
	private String name;
	
	private Goalkeeper(String name) {
		this.name=name;
	}

	public static Goalkeeper getInstance(String name) {
		
		if (goalkeeper == null) {
			goalkeeper=new Goalkeeper(name);
			return goalkeeper;
		} else
			return goalkeeper;

	}
	

}
