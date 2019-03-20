package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.damainInterface.Electronics;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.Watch;

public abstract class AbstractFactory {
	public static AbstractFactory getFactory(String brand) {
		switch (brand) {
		case "mi":
			return new MiFactory();
		case "apple":
			return new AppleFactory();
		case "huawei":
			return new HuaweiFactory();
		}
		return null;

	}
	
	public abstract Electronics createPhone();
	public abstract Electronics createPad();
	public abstract Electronics createWatch();

}