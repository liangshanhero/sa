package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Huawei;

public class HuaweiPad extends Pad implements Huawei {

	@Override
	public void play() {
		System.out.println("��ã����ǻ�Ϊƽ��");		
	}

}
