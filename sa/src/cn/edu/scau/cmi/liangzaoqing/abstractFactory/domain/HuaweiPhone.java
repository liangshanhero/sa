package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;

public class HuaweiPhone extends Phone implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
		
	}

}
