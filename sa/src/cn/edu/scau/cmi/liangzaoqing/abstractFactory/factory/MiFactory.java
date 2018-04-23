package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.MiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.MiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.MiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Watch;

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
