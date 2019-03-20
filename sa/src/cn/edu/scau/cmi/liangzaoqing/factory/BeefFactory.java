package cn.edu.scau.cmi.liangzaoqing.factory;

import cn.edu.scau.cmi.liangzaoqing.domain.Beef;
import cn.edu.scau.cmi.liangzaoqing.domain.Meat;

public class BeefFactory implements MeatFactory {

	@Override
	public Meat getInstance() {
		return new Beef();
		
		
	}

}
