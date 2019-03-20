 package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;

public class SpringClient {

	public SpringClient() {
	}

	public static void main(String[] args) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		Student student=(Student) ac.getBean("zhangsan");
		System.out.println(student.getTutor().getName());

	}

}
