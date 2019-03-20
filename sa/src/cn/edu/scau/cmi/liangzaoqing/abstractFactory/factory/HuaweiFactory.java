package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Electronics;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class HuaweiFactory extends AbstractFactory {

	@Override
	public Electronics createPhone() {
		return new HuaweiPhone();
	}

	@Override
	public Electronics createPad() {
		return new HuaweiPad();
	}

	@Override
	public Electronics createWatch() {
		return new HuaweiWatch();
	}

}
