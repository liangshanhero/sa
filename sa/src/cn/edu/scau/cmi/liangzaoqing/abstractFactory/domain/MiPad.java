package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Mi;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;

public class MiPad extends Pad implements Mi {

	@Override
	public void play() {
		System.out.println("��ã�����С��ƽ��");		
	}

}
