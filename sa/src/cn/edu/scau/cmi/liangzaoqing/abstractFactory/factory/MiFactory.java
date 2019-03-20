package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.ConsumerElectronicsDevice;

public class MiFactory extends AbstractFactory {

	@Override
	public ConsumerElectronicsDevice createPhone() {
		return new MiPhone();
	}

	@Override
	public ConsumerElectronicsDevice createPad() {
		return new MiPad();
	}

	@Override
	public ConsumerElectronicsDevice createWatch() {
		return new MiWatch();
	}

}
