package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.scau.cmi.liangzaoqing.dao.StudentDAO;
import cn.edu.scau.cmi.liangzaoqing.dao.customize.ScauCmiHibernateSessionFactoryUtil;
import cn.edu.scau.cmi.liangzaoqing.domain.Student;
import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.BookDAOByHibernate;
import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.HibernateSessionFactoryUtil;
import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;

public class ComprehensionClient {

	public static void main(String[] args) {
		newStudent();
		listStudents();
	}

		public static void newStudent() {
			Session session = ScauCmiHibernateSessionFactoryUtil.getSession();
			Transaction transaction = session.beginTransaction();
			
			Student student=new Student();
			student.setName("综合性实验的学生姓名1");
	
			StudentDAO studentDAO=new StudentDAO();
			studentDAO.save(student);
			
			transaction.commit();
			session.close();
		}

	private static void listStudents() {
		StudentDAO studentDAO=new StudentDAO();
		List students = studentDAO.findAll();
		Iterator<?> studentIterator = students.iterator();
		while(studentIterator.hasNext()){
			Student student = (Student) studentIterator.next();
			System.out.println("学生的ID号是："+student.getId()+"学生的名字是："+student.getName());
		}
	}
}