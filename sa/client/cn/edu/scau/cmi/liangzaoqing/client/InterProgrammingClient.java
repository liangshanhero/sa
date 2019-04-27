package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.interProgramming.GraduateStudent;
import cn.edu.scau.cmi.liangzaoqing.interProgramming.Student;
import cn.edu.scau.cmi.liangzaoqing.interProgramming.UndergraduateStudent;

public class InterProgrammingClient {

	public static void main(String[] args) {
		Student graduateStudent=new GraduateStudent();
		graduateStudent.learning();
		
		Student undergraduateStudent=new UndergraduateStudent();
		undergraduateStudent.learning();
		
		

	}

}
