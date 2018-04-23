package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Mi;

public class MiPad extends Pad implements Mi {

	@Override
	public void play() {
		System.out.println("��ã�����С��ƽ��");		
	}

}
