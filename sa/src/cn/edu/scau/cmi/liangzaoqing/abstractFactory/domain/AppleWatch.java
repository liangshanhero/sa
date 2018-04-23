package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Watch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Apple;

public class AppleWatch extends Watch implements Apple {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֱ�");		
	}

}
