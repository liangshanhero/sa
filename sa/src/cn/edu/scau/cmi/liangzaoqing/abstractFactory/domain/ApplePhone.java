package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;

public class ApplePhone extends Phone implements Apple {

	@Override
	public void play() {
		System.out.println("我是苹果手机");
//		利用代码获取品种和品牌，然后输出
		
		
		
	}

}
