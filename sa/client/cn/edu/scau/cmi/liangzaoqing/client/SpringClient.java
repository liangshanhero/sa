 package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;

public class SpringClient {

	public SpringClient() {
	}

	public static void main(String[] args) {
		ApplicationContext ac1=new ClassPathXmlApplicationContext("applicationContext.xml");
		ApplicationContext ac2=new ClassPathXmlApplicationContext("applicationContext.xml");
		Student student1=(Student) ac1.getBean("zhangsan");
		Student student2=(Student) ac2.getBean("zhangsan");
		System.out.println(student1.getTutor().getName());
		System.out.println(ac1);
		System.out.println(ac2);
		System.out.println(student1);
		System.out.println(student2);
		
		
		
		

	}

}
