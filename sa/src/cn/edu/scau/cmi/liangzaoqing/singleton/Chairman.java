package cn.edu.scau.cmi.liangzaoqing.singleton;

public class Chairman {

	private static Chairman chairman;

	private Chairman() {
	}

	public static Chairman getInstance() {
		if (chairman == null) {
			chairman=new Chairman();
			return chairman;
		} else
			return chairman;

	}
}
