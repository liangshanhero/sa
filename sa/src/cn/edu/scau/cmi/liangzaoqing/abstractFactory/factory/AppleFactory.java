package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.ApplePad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.ApplePhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.AppleWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.ConsumerElectronicsDevice;

public class AppleFactory extends AbstractFactory {

	@Override
	public ConsumerElectronicsDevice createPhone() {
		return new ApplePhone();
	}

	@Override
	public ConsumerElectronicsDevice createPad() {
		return new ApplePad();
	}

	@Override
	public ConsumerElectronicsDevice createWatch() {
		return new AppleWatch();
	}

	
}
