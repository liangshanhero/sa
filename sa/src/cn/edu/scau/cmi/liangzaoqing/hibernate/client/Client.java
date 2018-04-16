package cn.edu.scau.cmi.liangzaoqing.hibernate.client;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Sa;
import cn.edu.scau.cmi.liangzaoqing.hibernate.util.HibernateSessionFactory;

public class Client {

	public static void main(String[] args) {
		Sa sa=new Sa();
		sa.setId(1L);
		sa.setName("软件体系结构");
		
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		
		session.save(sa);
		
		transaction.commit();
		
		session.close();
		
		

	}

}
