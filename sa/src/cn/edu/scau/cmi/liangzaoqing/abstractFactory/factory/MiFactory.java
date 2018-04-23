package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Watch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.MiWatch;

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
