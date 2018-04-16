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
	public Course(Long id) {
		super(id);
	}

	/** full constructor */
	public Course(Long id, String name, Set students, Set students_1) {
		super(id, name, students, students_1);
	}

}
