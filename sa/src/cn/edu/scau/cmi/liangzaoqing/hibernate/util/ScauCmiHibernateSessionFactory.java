package cn.edu.scau.cmi.liangzaoqing.hibernate.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

/**
 * 简单的HibernateSessioFactory工厂类
 * 
 * 同学们自己考虑使用单例的模式
 * 
 * 
 */
public class ScauCmiHibernateSessionFactory {
	
	private static SessionFactory sessionFactory;
//	sessionFactory单例
	public static SessionFactory getSessionFactory() {
		if(sessionFactory==null) {
			sessionFactory=new Configuration().configure().buildSessionFactory();
		}
		return sessionFactory;
	}
	
	
	

	public static Session getSession(){
		 Session session=getSessionFactory().openSession();
		return session;
	}
	
	
	
	
	
	
}