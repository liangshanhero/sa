package cn.edu.scau.cmi.liangzaoqing.hibernate.dao;


import org.hibernate.Session;

public class BaseHibernateDAO implements IBaseHibernateDAO {
	
	public Session getSession() {
		return HibernateSessionFactoryUtil.getSession();
	}
}