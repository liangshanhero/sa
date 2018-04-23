package cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.brand.Mi;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;

public class MiPad extends Pad implements Mi {

	@Override
	public void play() {
		System.out.println("你好，我是小米平板");		
	}

}
