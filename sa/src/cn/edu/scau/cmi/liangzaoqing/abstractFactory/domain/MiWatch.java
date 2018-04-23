package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Mi;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class MiWatch extends Watch implements Mi {

	@Override
	public void play() {
		System.out.println("��ã�����С���ֱ�");		
	}

}
