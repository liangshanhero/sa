package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */
public class Course extends AbstractCourse implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Course() {
	}

	/** minimal constructor */
	public Course(String name) {
		super(name);
	}

	/** full constructor */
	public Course(String name, Set book2courses) {
		super(name, book2courses);
	}

}
