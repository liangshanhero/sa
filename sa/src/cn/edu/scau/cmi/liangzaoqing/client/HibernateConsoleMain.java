package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.BookDAO;
import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;
import cn.edu.scau.cmi.liangzaoqing.hibernate.util.HibernateSessionFactory;

public class HibernateConsoleMain {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

//		newBook();
		listBooks();
		BookDAO bookDAO=new BookDAO();
		List books = bookDAO.findAll();
		Iterator<?> bookIterator = books.iterator();
		while(bookIterator.hasNext()){
			Book b = (Book) bookIterator.next();
			System.out.println("调用DAO后的额书名是："+b.getName()+"调用DAO后的书ID号是："+b.getId());
		}

	}

	private static void listBooks() {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		List<?> books=session.createQuery("from Book").list();
		Iterator<?> bookIterator = books.iterator();
		while(bookIterator.hasNext()){
			Book b = (Book) bookIterator.next();
			System.out.println("书名是："+b.getName());
		}
		
		
//		transaction.begin();
		
//		Book book=new Book();
//		book.setId(18L);
//		book.setName("高级数据库系统");
//		session.save(book);
//		
//		transaction.commit();
//		session.close();
		
	}

	public static void newBook() {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		
		transaction.begin();
		
		Book book=new Book();
//		book.setId(18L);
		book.setName("高级数据库系统");
		session.save(book);
		
		transaction.commit();
		session.close();
	}

}
