package cn.edu.scau.cmi.liangzaoqing.factory;

import cn.edu.scau.cmi.liangzaoqing.domain.Meat;
import cn.edu.scau.cmi.liangzaoqing.domain.Pork;

public class PorkFactory implements MeatFactory {

	@Override
	public Meat getInstance() {
		return new Pork();
	}

}
