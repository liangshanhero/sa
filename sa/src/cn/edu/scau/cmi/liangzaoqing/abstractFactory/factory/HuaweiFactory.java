package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domain.HuaweiWatch;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entityFather.Watch;

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
