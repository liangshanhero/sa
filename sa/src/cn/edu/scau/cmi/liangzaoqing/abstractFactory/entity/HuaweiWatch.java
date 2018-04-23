package cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Huawei;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Watch;

public class HuaweiWatch extends Watch implements Huawei {

	@Override
	public void play() {
		System.out.println("你好，我是华为手表");		
	}

}
