package cn.edu.scau.cmi.liangzaoqing.hibernate.client;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.AbstractFactory;

public class AbstractFactoryClient {

	public static void main(String[] args) {
		// ��1��ȷ��Ʒ��
		
		AbstractFactory brandProducer = AbstractFactory.getFactory("mi");

		// (2)ȷ����Ʒ
		Pad product = brandProducer.createPad();
		
		product.play();

	}

}
