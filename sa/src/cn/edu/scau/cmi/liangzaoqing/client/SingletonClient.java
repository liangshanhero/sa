package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.singleton.Chairman;

public class SingletonClient {

	public static void main(String[] args) {

		Chairman chairman1=Chairman.getInstance();
		
		
		
		
		
		
		Chairman chairman2=Chairman.getInstance();
		
		if(chairman1==chairman2){
			System.out.println("一样的");
			
		}
		else
			System.out.print("不一样的");
			
		
		
		
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
	}

}
