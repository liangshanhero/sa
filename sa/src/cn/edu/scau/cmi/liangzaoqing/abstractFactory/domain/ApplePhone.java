package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Apple;

public class ApplePhone extends Phone implements Apple {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
		
	}

}
