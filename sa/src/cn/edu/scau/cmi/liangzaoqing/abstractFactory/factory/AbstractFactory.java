package cn.edu.scau.cmi.liangzaoqing.abstractFactory.factory;

import cn.edu.scau.cmi.liangzaoqing.abstractFactory.domainAbstractClass.ConsumerElectronicsDevice;

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
	
	public abstract ConsumerElectronicsDevice createPhone();
	public abstract ConsumerElectronicsDevice createPad();
	public abstract ConsumerElectronicsDevice createWatch();

}