package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.ApplePad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.ApplePhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.AppleWatch;
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
