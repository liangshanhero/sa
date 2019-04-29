package cn.edu.scau.cmi.liangzaoqing.spring.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ApplicationContextUtil {
	static ApplicationContext applicationContext;
	public static ApplicationContext getApplicationContext() {
		if(applicationContext==null) {
			applicationContext=new ClassPathXmlApplicationContext("springApplicationContext.xml");
		}
		return applicationContext;
		
	}

}
