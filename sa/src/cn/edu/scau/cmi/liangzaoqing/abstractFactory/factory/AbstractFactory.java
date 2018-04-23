package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Pad;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Phone;
import cn.edu.scau.cmi.liangzaoqing.abstractFactory.abstractDomain.Watch;

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
	
	public abstract Phone createPhone();
	public abstract Pad createPad();
	public abstract Watch createWatch();

}