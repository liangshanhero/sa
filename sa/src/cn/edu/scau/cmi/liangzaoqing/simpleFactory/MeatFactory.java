package cn.edu.scau.cmi.liangzaoqing.simpleFactory;

public class MeatFactory {

	public static Beast getInstance(String beastTypeString) {
		
		switch(beastTypeString){
		case "pig":
			new Pig();
		}
		
		
		return null;
	}

}
