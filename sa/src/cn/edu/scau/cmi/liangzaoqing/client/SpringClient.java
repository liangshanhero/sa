 package cn.edu.scau.cmi.liangzaoqing.client;



import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;

public class SpringClient {

	public SpringClient() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		Student student=(Student) ac.getBean("zhangsan");
		System.out.println(student.getTutor().getName());

	}

}
