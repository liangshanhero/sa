package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import cn.edu.scau.cmi.liangzaoqing.dao.customize.ScauCmiHibernateSessionFactoryUtil;
import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.BookDAOByHibernate;
import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.HibernateSessionFactoryUtil;
import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;

public class Client4Hibernate {

	public static void main(String[] args) {
		newBook();
		listBooks();
	}

		public static void newBook() {
//			(1) 可以复用，因此可以抽取出来；
//			(2) SessionFactory应该单例化；
			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session session = sf.openSession();
			
			Transaction transaction = session.beginTransaction();
			Book book=new Book();
			book.setName("高级数据库系统");
			
//	 		(1) 直接使用Hibernate的CRUD功能		
			session.save(book);

//			(2) 也可以将Hibernate的CRUD功能封装为DAO后，调用DAO功能。		
//			BookDAOByHibernate bookDAOByHibernate=new BookDAOByHibernate();
//			bookDAOByHibernate.save(book);
			
			transaction.commit();
			session.close();
		}

	private static void listBooks() {
		BookDAOByHibernate bookDAO=new BookDAOByHibernate();
		List books = bookDAO.findAll();
		Iterator<?> bookIterator = books.iterator();
		while(bookIterator.hasNext()){
			Book book = (Book) bookIterator.next();
			System.out.println("调用DAO后的书名是："+book.getName()+"调用DAO后的书ID号是："+book.getId());
		}

	}
	


}
