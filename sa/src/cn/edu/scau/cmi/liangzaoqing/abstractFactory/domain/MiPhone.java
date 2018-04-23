package cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Mi;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Phone;

public class MiPhone extends Phone implements Mi {

	@Override
	public void play() {
		System.out.println("��ã�����С���ֻ�");		
	}

}
