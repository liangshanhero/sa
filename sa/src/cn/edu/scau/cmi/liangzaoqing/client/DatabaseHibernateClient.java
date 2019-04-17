package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.BookDAO;
import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;
import cn.edu.scau.cmi.liangzaoqing.hibernate.util.HibernateSessionFactory;
import cn.edu.scau.cmi.liangzaoqing.hibernate.util.ScauCmiHibernateSessionFactory;

public class DatabaseHibernateClient {

	public static void main(String[] args) {

		newBook();
		listBooks();
		
	}

	private static void listBooks() {
		BookDAO bookDAO=new BookDAO();
		List books = bookDAO.findAll();
		Iterator<?> bookIterator = books.iterator();
		while(bookIterator.hasNext()){
			Book book = (Book) bookIterator.next();
			System.out.println("调用DAO后的书名是："+book.getName()+"调用DAO后的书ID号是："+book.getId());
		}

	}
	


	public static void newBook() {
		Session session = ScauCmiHibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Book book=new Book();
		book.setName("高级数据库系统");
		session.save(book);
		
		
		transaction.commit();
		session.close();
	}

}
