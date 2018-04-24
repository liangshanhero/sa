package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;

public class ApplePad extends Pad implements Apple {

	@Override
	public void play() {
		System.out.println("你好，这是苹果平板");
//		�������÷������......
		System.out.println(super.name+Apple.brand);
		
	}

}
