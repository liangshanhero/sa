package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public class MiFactory extends AbstractFactory {

	@Override
	public Phone createPhone() {
		return new MiPhone();
	}

	@Override
	public Pad createPad() {
		return new MiPad();
	}

	@Override
	public Watch createWatch() {
		return new MiWatch();
	}

}
