package cn.edu.scau.cmi.liangzaoqing.client;

import org.hibernate.SessionFactory;
import org.hibernate.internal.SessionFactoryImpl;

import cn.edu.scau.cmi.liangzaoqing.hibernate.dao.HibernateSessionFactoryUtil;

public class HibernateSessionFactoryClient {

	public static void main(String[] args) {
		SessionFactory hibernateSessionFactory1 = HibernateSessionFactoryUtil.getSessionFactory();
		SessionFactory hibernateSessionFactory2 = HibernateSessionFactoryUtil.getSessionFactory();
		
		if(hibernateSessionFactory1==hibernateSessionFactory2){
			System.out.println("这2个工厂是一样的");
		}
		else
		{
			System.out.println("这2个工厂不是一样的");
		}
		

	}

}
