package cn.edu.scau.cmi.liangzaoqing.hibernate.client;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.AbstractFactory;

public class AbstractFactoryClient {

	public static void main(String[] args) {
		// （1）确定品牌
		
		AbstractFactory brandProducer = AbstractFactory.getFactory("mi");

		// (2)确定产品
		Pad product = brandProducer.createPad();
		
		product.play();

	}

}
