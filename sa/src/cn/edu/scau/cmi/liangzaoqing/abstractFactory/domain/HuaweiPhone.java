package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Phone;

public class HuaweiPhone extends Phone implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
		
	}

}
