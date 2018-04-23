package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Huawei;

public class HuaweiPhone extends Phone implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
		
	}

}
