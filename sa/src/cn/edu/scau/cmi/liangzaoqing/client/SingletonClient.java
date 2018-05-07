package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.singleton.Chairman;

public class SingletonClient {

	public static void main(String[] args) {

		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
		System.out.println(Chairman.getInstance());
	}

}
