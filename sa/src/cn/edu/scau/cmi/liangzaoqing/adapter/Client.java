package cn.edu.scau.cmi.liangzaoqing.adapter;

public class Client {

	public static void main(String[] args) {

		Target classTarget=new AdapterOfClass();
		System.out.println(classTarget.doTarget());
		
		Target objectTarget=new AdapterOfObject();
		System.out.println(objectTarget.doTarget());
	}
}