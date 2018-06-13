package cn.edu.scau.cmi.liangzaoqing.adapter;

public class AdapterOfClass  extends Adaptee implements Target{
	@Override
	public String doTarget() {
		String result = op();
		return result+" by adapterOfClass";
	}
}
