package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.singleton.Chairman;

public class SingletonClient {

	public static void main(String[] args) {

		Chairman chairman1=Chairman.getInstance("毛泽东");
		
		
		
		
		
		
		Chairman chairman2=Chairman.getInstance("梁早清");
		
		if(chairman1==chairman2){
			System.out.println("一样的");
			
		}
		else
			System.out.print("不一样的");
			
		
		
		
		System.out.println(Chairman.getInstance("张山"));
		System.out.println(Chairman.getInstance("李四"));
		System.out.println(Chairman.getInstance("王五"));
		System.out.println(Chairman.getInstance("赵六"));
		System.out.println(Chairman.getInstance("田七"));
	}

}
