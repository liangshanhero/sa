package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.ApplePad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.ApplePhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.AppleWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Watch;

public class AppleFactory extends AbstractFactory {

	@Override
	public Phone createPhone() {
		return new ApplePhone();
	}

	@Override
	public Pad createPad() {
		return new ApplePad();
	}

	@Override
	public Watch createWatch() {
		return new AppleWatch();
	}

	
}
