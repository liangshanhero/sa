package cn.edu.scau.cmi.liangzaoqing.adapter;

public class AdapterOfObject implements Target{

	@Override
	public String doTarget() {
		Adaptee adaptee=new Adaptee();
		String result= adaptee.op();
		return result+" by adapterOfObject";
	}

}
