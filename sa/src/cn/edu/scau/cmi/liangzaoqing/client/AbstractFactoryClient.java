package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.AbstractFactory;

public class AbstractFactoryClient {

	public static void main(String[] args) {
		// 获取工厂
		
		AbstractFactory brandProducer = AbstractFactory.getFactory("mi");

		// (2)获取对象
		Pad product = brandProducer.createPad();
		
		product.play();

	}

}
