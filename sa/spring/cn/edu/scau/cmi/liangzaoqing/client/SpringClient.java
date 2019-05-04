 package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.spring.util.ApplicationContextUtil;

public class SpringClient {

	public SpringClient() {
	}

	public static void main(String[] args) {
//		(1) 
//		ApplicationContext applicationContext=getApplicationContext1();
//		(2) 单例ApplicationContext
		ApplicationContext applicationContext=ApplicationContextUtil.getApplicationContext();
		
		Student student1=(Student) applicationContext.getBean("zhangsan");
		System.out.println(student1.getName()+"的毕业设计指导导师是："+student1.getTutor().getName());
		
	}

	private static ApplicationContext getApplicationContext1() {
		ApplicationContext ac1=new ClassPathXmlApplicationContext("springApplicationContext.xml");
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
