package cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Phone;

public class ApplePhone extends Phone implements Apple {

	@Override
	public void play() {
		System.out.println("你好，我是苹果手机");
		
	}

}
