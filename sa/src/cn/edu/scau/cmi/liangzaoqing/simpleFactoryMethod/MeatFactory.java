package cn.edu.scau.cmi.liangzaoqing.simpleFactoryMethod;

import cn.edu.scau.cmi.liangzaoqing.domain.Beef;
import cn.edu.scau.cmi.liangzaoqing.domain.Meat;
import cn.edu.scau.cmi.liangzaoqing.domain.Pork;

public class MeatFactory {
	public static Meat getInstance(String meatTypeString) {
		Meat meat = null;
		switch (meatTypeString) {
		case "beef":
			meat = new Beef();break;
		case "pork":
			meat = new Pork();break;
		}
		return meat;
	}
}