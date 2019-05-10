 package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.spring.domain.Teacher;
import cn.edu.scau.cmi.liangzaoqing.spring.util.ApplicationContextUtil;

public class SpringClient03 {

	private static Teacher liangzaoqing;
	private static Student zhangsan;

	public SpringClient03() {
	}

	public static void main(String[] args) {
		getApplicationContext();
		System.out.println(zhangsan.getName()+"的毕业设计指导导师是："+zhangsan.getTutor().getName());
	}


	private static ApplicationContext getApplicationContext() {
		ApplicationContext applicationContext=ApplicationContextUtil.getApplicationContext();
//		ApplicationContext ac2=new ClassPathXmlApplicationContext("applicationContext.xml");
		Student student1=(Student) applicationContext.getBean("zhangsan");

		return applicationContext;
	}

}
