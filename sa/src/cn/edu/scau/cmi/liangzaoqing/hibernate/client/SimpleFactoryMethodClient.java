package cn.edu.scau.cmi.liangzaoqing.hibernate.client;

import cn.edu.scau.cmi.liangzaoqing.simpleFactory.Beast;
import cn.edu.scau.cmi.liangzaoqing.simpleFactory.MeatFactory;

public class SimpleFactoryMethodClient {

	public static void main(String[] args) {
		
		String beastTypeString;//从控制台获取所想要的肉的类型
		Beast meat = MeatFactory.getInstance(beastTypeString);

	}

}
