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

	public static Session getSession(){
		 SessionFactory sf = new Configuration().configure().buildSessionFactory();
		 Session session=sf.openSession();
		return session;
	}
}