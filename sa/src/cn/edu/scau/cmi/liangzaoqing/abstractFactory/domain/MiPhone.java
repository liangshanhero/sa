package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Mi;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;

public class MiPhone extends Phone implements Mi {

	@Override
	public void play() {
		System.out.println("我是小米手机");		
	}

}
