package cn.edu.scau.cmi.liangzaoqing.hibernate.dao;

import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Sa;

/**
 * A data access object (DAO) providing persistence and search support for Sa
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Sa
 * @author MyEclipse Persistence Tools
 */
public class SaDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(SaDAO.class);
	// property constants
	public static final String NAME = "name";

	public void save(Sa transientInstance) {
		log.debug("saving Sa instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Sa persistentInstance) {
		log.debug("deleting Sa instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Sa findById(java.lang.Long id) {
		log.debug("getting Sa instance with id: " + id);
		try {
			Sa instance = (Sa) getSession().get("cn.edu.scau.cmi.liangzaoqing.hibernate.Sa", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Sa instance) {
		log.debug("finding Sa instance by example");
		try {
			List results = getSession().createCriteria("cn.edu.scau.cmi.liangzaoqing.hibernate.Sa")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Sa instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from Sa as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findAll() {
		log.debug("finding all Sa instances");
		try {
			String queryString = "from Sa";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Sa merge(Sa detachedInstance) {
		log.debug("merging Sa instance");
		try {
			Sa result = (Sa) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Sa instance) {
		log.debug("attaching dirty Sa instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Sa instance) {
		log.debug("attaching clean Sa instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}