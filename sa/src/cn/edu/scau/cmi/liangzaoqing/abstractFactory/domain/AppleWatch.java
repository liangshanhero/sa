package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Watch;

public class AppleWatch extends Watch implements Apple {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֱ�");		
	}

}
