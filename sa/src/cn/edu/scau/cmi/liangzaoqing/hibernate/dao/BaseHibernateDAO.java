package cn.edu.scau.cmi.liangzaoqing.hibernate.dao;


import org.hibernate.Session;

import cn.edu.scau.cmi.liangzaoqing.hibernate.util.HibernateSessionFactory;

public class BaseHibernateDAO implements IBaseHibernateDAO {
	
	public Session getSession() {
		return HibernateSessionFactory.getSession();
	}
}