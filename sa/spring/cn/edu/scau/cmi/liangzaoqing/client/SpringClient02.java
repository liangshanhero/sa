package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.spring.util.ApplicationContextUtil;

public class SpringClient02 {

	public SpringClient02() {
	}

	public static void main(String[] args) {
		BeanFactory applicationContext = getApplicationContext1();
		Student student1 = (Student) applicationContext.getBean("zhangsan");
		System.out.println(student1.getName() + "的毕业设计指导导师是：" + student1.getTutor().getName());

	}

	private static ApplicationContext getApplicationContext1() {
		ApplicationContext ac1 = new ClassPathXmlApplicationContext("springApplicationContext.xml");

		return ac1;
	}

}
