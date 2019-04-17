/*package cn.edu.scau.cmi.liangzaoqing.client;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.scau.cmi.liangzaoqing.hibernate.util.HibernateSessionFactory;

public class FactoryClient {

	public static void main(String[] args) {
//		创建一个sa对象
		Sa sa = createObject();
//		保存这个对象
		savaObject(sa);
	}

	private static void savaObject(Object sa) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(sa);
		transaction.commit();
		session.close();
	}

	private static Sa createObject() {
		Sa sa=new Sa();
		sa.setId(1L);
		sa.setName("软件体系结构");
		return sa;
	}

}
*/