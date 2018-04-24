package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class AppleWatch extends Watch implements Apple {

	@Override
	public void play() {
		System.out.println("这是苹果手表");		
	}

}
