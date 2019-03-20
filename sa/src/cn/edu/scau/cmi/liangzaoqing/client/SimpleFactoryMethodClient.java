package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.domain.Meat;
import cn.edu.scau.cmi.liangzaoqing.simpleFactoryMethod.MeatFactory;

public class SimpleFactoryMethodClient {

	public static void main(String[] args) {
		
		
		Meat beaf = MeatFactory.getInstance("beef");
		beaf.cook();
		
		Meat pork = MeatFactory.getInstance("pork");
		pork.cook();
		

	}

}
