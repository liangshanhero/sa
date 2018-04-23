package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;

public class ApplePhone extends Phone implements Apple {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
		
	}

}
