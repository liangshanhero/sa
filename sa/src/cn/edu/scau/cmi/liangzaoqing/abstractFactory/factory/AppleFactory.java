package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Electronics;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.ApplePad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.ApplePhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.AppleWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class AppleFactory extends AbstractFactory {

	@Override
	public Electronics createPhone() {
		return new ApplePhone();
	}

	@Override
	public Electronics createPad() {
		return new ApplePad();
	}

	@Override
	public Electronics createWatch() {
		return new AppleWatch();
	}

	
}
