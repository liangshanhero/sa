package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Watch;

public class HuaweiWatch extends Watch implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã����ǻ�Ϊ�ֱ�");		
	}

}
