package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.spring.util.ApplicationContextUtil;

public class SpringClient03 {

	public SpringClient03() {
	}

	public static void main(String[] args) {
		BeanFactory applicationContext = getApplicationContext1();
		Student student1 = (Student) applicationContext.getBean("zhangsan");
		System.out.println(student1.getName() + "的毕业设计指导导师是：" + student1.getTutor().getName());

	}

	private static ApplicationContext getApplicationContext1() {
		ApplicationContext ac1 = new ClassPathXmlApplicationContext("springApplicationContext.xml");
//		ApplicationContext ac2=new ClassPathXmlApplicationContext("applicationContext.xml");
//		Student student1=(Student) ac1.getBean("zhangsan");
//		Student student2=(Student) ac2.getBean("zhangsan");
//		System.out.println(student1.getTutor().getName());
//		System.out.println(ac1);
//		System.out.println(ac2);
//		System.out.println(student1);
//		System.out.println(student2);
		return ac1;
	}

}
