package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Apple;

public class ApplePad extends Pad implements Apple {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
//		�������÷������......
		System.out.println(super.name+Apple.brand);
		
	}

}
