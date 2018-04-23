package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Watch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Huawei;

public class HuaweiWatch extends Watch implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã����ǻ�Ϊ�ֱ�");		
	}

}
