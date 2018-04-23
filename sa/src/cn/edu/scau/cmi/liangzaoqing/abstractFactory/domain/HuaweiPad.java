package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;

public class HuaweiPad extends Pad implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã����ǻ�Ϊƽ��");		
	}

}
