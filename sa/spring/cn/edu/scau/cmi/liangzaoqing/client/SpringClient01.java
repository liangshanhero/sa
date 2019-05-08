 package cn.edu.scau.cmi.liangzaoqing.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.spring.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.spring.domain.Teacher;
import cn.edu.scau.cmi.liangzaoqing.spring.util.ApplicationContextUtil;

public class SpringClient01 {

	private static Teacher liangzaoqing;
	private static Student zhangsan;

	public SpringClient01() {
	}

	public static void main(String[] args) {
		prepareBeforeClass();
		System.out.println(zhangsan.getName()+"的毕业设计指导导师是："+zhangsan.getTutor().getName());
	}

	private static void prepareBeforeClass() {
		liangzaoqing=new Teacher();
		liangzaoqing.setName("梁早清");
		liangzaoqing.setGendar("男");
		
		zhangsan=new Student();
		zhangsan.setName("张三");
		zhangsan.setGendar("男");
		zhangsan.setTutor(liangzaoqing);
	}

	

}
