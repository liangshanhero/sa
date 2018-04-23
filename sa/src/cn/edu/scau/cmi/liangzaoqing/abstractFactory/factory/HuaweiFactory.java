package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.HuaweiPad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.HuaweiPhone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.entity.HuaweiWatch;
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
