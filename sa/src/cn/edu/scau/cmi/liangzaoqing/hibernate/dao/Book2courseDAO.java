package cn.edu.scau.cmi.liangzaoqing.hibernate.dao;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book2course;

/**
 * A data access object (DAO) providing persistence and search support for
 * Book2course entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book2course
 * @author MyEclipse Persistence Tools
 */

public class Book2courseDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(Book2courseDAO.class);

	// property constants

	public void save(Book2course transientInstance) {
		log.debug("saving Book2course instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Book2course persistentInstance) {
		log.debug("deleting Book2course instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Book2course findById(java.lang.Long id) {
		log.debug("getting Book2course instance with id: " + id);
		try {
			Book2course instance = (Book2course) getSession().get(
					"cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book2course", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Book2course instance) {
		log.debug("finding Book2course instance by example");
		try {
			List results = getSession()
					.createCriteria("cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book2course")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Book2course instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Book2course as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all Book2course instances");
		try {
			String queryString = "from Book2course";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Book2course merge(Book2course detachedInstance) {
		log.debug("merging Book2course instance");
		try {
			Book2course result = (Book2course) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Book2course instance) {
		log.debug("attaching dirty Book2course instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Book2course instance) {
		log.debug("attaching clean Book2course instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}