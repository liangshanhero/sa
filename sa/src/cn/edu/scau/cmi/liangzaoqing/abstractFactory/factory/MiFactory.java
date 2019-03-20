package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Electronics;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class MiFactory extends AbstractFactory {

	@Override
	public Electronics createPhone() {
		return new MiPhone();
	}

	@Override
	public Electronics createPad() {
		return new MiPad();
	}

	@Override
	public Electronics createWatch() {
		return new MiWatch();
	}

}
