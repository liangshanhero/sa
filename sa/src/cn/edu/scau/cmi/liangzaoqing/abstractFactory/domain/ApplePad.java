package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Apple;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;

public class ApplePad extends Pad implements Apple {

	@Override
	public void play() {
		System.out.println("��ã�����ƻ���ֻ�");
//		�������÷������......
		System.out.println(super.name+Apple.brand);
		
	}

}
