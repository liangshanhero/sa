package cn.edu.scau.cmi.liangzaoqing.client.hibernate;

import org.hibernate.SessionFactory;

import cn.edu.scau.cmi.liangzaoqing.hibernate.util.HibernateSessionFactory;

public class HibernateSessionFactorySingletonClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SessionFactory sf1 = HibernateSessionFactory.getSessionFactory();
		SessionFactory sf2 = HibernateSessionFactory.getSessionFactory();
		System.out.println(sf1);
		System.out.println(sf2);

	}

}
