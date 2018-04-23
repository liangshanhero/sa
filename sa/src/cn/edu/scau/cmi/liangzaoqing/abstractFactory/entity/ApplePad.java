package cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;

public class ApplePad extends Pad implements Apple {

	@Override
	public void play() {
		System.out.println("你好，我是苹果手机");
//		可以利用反射机制......
		System.out.println(super.name+Apple.brand);
		
	}

}
