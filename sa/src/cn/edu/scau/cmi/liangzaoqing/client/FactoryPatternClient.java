package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Scanner;

import cn.edu.scau.cmi.liangzaoqing.domain.Meat;
import cn.edu.scau.cmi.liangzaoqing.factory.BeefFactory;
import cn.edu.scau.cmi.liangzaoqing.factory.MeatFactory;
import cn.edu.scau.cmi.liangzaoqing.factory.PorkFactory;

public class FactoryPatternClient {

	public static void main(String[] args) {
		System.out.println("Please select which kind of meat you want to eat: beef or pork???");
		Scanner scanner = new Scanner(System.in);  
		String meatKind = scanner.next();  
		MeatFactory meatFactory=null;
		switch(meatKind) {
		case "beef": meatFactory=new BeefFactory();break;
		case "pork": meatFactory=new PorkFactory();break;
		default:System.out.println("sorry, your input is not correct");
		
		}
		if(meatFactory!=null) {
			Meat meat=meatFactory.getInstance();
			meat.cook();
		}
	}
}