package cn.edu.scau.cmi.liangzaoqing.comprehension.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ComprehensionApplicationContextUtil {
	static ApplicationContext applicationContext;
	public static ApplicationContext getApplicationContext() {
		if(applicationContext==null) {
			applicationContext=new ClassPathXmlApplicationContext("comprehensionApplicationContext.xml");
		}
		return applicationContext;
		
	}

}
