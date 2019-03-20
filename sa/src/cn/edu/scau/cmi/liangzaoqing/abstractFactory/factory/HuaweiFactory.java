package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.ConsumerElectronicsDevice;

public class HuaweiFactory extends AbstractFactory {

	@Override
	public ConsumerElectronicsDevice createPhone() {
		return new HuaweiPhone();
	}

	@Override
	public ConsumerElectronicsDevice createPad() {
		return new HuaweiPad();
	}

	@Override
	public ConsumerElectronicsDevice createWatch() {
		return new HuaweiWatch();
	}

}
