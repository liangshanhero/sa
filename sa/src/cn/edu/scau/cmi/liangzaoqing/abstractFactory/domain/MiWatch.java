package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Watch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Mi;

public class MiWatch extends Watch implements Mi {

	@Override
	public void play() {
		System.out.println("��ã�����С���ֱ�");		
	}

}
