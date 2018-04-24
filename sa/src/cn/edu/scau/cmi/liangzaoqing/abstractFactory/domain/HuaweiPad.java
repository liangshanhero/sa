package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;

public class HuaweiPad extends Pad implements Huawei {

	@Override
	public void play() {
		System.out.println("这是华为平板");		
	}

}
