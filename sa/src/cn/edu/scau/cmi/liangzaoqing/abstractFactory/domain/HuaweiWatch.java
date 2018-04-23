package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class HuaweiWatch extends Watch implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã����ǻ�Ϊ�ֱ�");		
	}

}
