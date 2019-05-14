package cn.edu.scau.cmi.liangzaoqing.comprehension.client;

import org.springframework.context.ApplicationContext;

import cn.edu.scau.cmi.liangzaoqing.comprehension.dao.StudentDAO;
import cn.edu.scau.cmi.liangzaoqing.comprehension.dao.TeacherDAO;
import cn.edu.scau.cmi.liangzaoqing.comprehension.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.comprehension.domain.Teacher;
import cn.edu.scau.cmi.liangzaoqing.comprehension.util.ComprehensionApplicationContextUtil;

public class ComprehensionConsoleClient {

	public static void main(String[] args) {
//		（1） 初始化applicationContext，并获取studentDAO对象
		ApplicationContext applicationContext = ComprehensionApplicationContextUtil.getApplicationContext();
//		StudentDAO studentDAO=(StudentDAO) applicationContext.getBean("studentDAO");
		TeacherDAO teacherDAO=(TeacherDAO) applicationContext.getBean("teacherDAO");
//		（2）创建教师和学生对象，并设置他们之间的关系
		Teacher zhukai=new Teacher();
		zhukai.setId(200L);
		zhukai.setName("朱凯");
		System.out.println(zhukai.getName());
		teacherDAO.save(zhukai);
		
//		
//		Student wangwu=new Student();
//		wangwu.setId(200L);
//		wangwu.setName("王五");
//		
//		wangwu.setTeacher(zhukai);
////		（3）保存数据
//		studentDAO.save(wangwu);
	}
}