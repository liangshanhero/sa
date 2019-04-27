package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.scau.cmi.liangzaoqing.dao.customize.ScauCmiHibernateSessionFactoryUtil;
import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.BookDAOByHibernate;
import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.HibernateSessionFactoryUtil;
import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;

public class HibernateDatabaseClient {

	public static void main(String[] args) {

		newBook();
		listBooks();
		
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
	


	public static void newBook() {
		Session session = ScauCmiHibernateSessionFactoryUtil.getSession();
		Transaction transaction = session.beginTransaction();
		Book book=new Book();
		book.setName("高级数据库系统");
		
		
		session.save(book);
		
		
		transaction.commit();
		session.close();
	}

}
