package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Scanner;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.ConsumerElectronicsDevice;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.AbstractFactory;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.AppleFactory;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.HuaweiFactory;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory.MiFactory;

public class AbstractFactoryClient {

	public static void main(String[] args) {
		
//(1) 选择品牌
		System.out.println("Please select which brand you want to buy: apple, huamiwei or mi???");
		Scanner scanner = new Scanner(System.in);  
		String brandKind = scanner.next();  
		AbstractFactory factory=null;
		switch(brandKind){
		case "apple": factory=new AppleFactory();break;
		case "huawei": factory=new HuaweiFactory();break;
		case "mi": factory=new MiFactory();break;
		default:System.out.println("sorry, your input is not correct");
		
		}
		
//		（2）选择产品
		
		System.out.println("Please select which product you want to buy: cellphone, pad or watch???");
//		Scanner scanner = new Scanner(System.in);  
		String productType = scanner.next();  
		ConsumerElectronicsDevice electronics=null;
		switch(productType) {
		case "cellphone": electronics=factory.createPhone();break;
		case "pad": electronics=factory.createPad();break;
		case "watch": electronics=factory.createWatch();break;
		default:System.out.println("sorry, your input is not correct");
		
		}
		if(electronics!=null) {
			electronics.play();
		}
		
		
//		
//		// （1）获取工厂
//		
//		AbstractFactory factory = AbstractFactory.getFactory("apple");
//
//		// (2)获取对象
//		Pad product = factory.createPad();
////		（3）对象执行功能
//		product.play();

	}

}
