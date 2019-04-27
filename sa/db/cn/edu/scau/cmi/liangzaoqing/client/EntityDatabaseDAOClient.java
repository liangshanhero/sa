package cn.edu.scau.cmi.liangzaoqing.client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.scau.cmi.liangzaoqing.dao.customize.BookDAOByJdbc;
import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;


public class EntityDatabaseDAOClient {
	public static void main(String[] args) {
		Book book=new Book();
		book.setName("sa4softwareEngineering");
		book.setId(301L);
		
		BookDAOByJdbc bookDAO=new BookDAOByJdbc();
		bookDAO.newBook(book);
		
		
		bookDAO.listAllBooks();
	}
	


}