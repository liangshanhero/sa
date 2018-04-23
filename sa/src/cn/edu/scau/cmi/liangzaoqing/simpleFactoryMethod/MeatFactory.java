package cn.edu.scau.cmi.liangzaoqing.simpleFactoryMethod;

import cn.edu.scau.cmi.liangzaoqing.domain.Beef;
import cn.edu.scau.cmi.liangzaoqing.domain.Meat;
import cn.edu.scau.cmi.liangzaoqing.domain.Pork;

public class MeatFactory {
	public static Meat getInstance(String meatTypeString){
		switch(meatTypeString){
		case "beef":return new Beef();
		case "pork":return new Pork();
		
		}
		
		return null;
		
	}

}
