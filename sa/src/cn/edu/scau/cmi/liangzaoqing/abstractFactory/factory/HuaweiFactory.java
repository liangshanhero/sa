package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Watch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiWatch;

public class HuaweiFactory extends AbstractFactory {

	@Override
	public Phone createPhone() {
		return new HuaweiPhone();
	}

	@Override
	public Pad createPad() {
		return new HuaweiPad();
	}

	@Override
	public Watch createWatch() {
		return new HuaweiWatch();
	}

}
