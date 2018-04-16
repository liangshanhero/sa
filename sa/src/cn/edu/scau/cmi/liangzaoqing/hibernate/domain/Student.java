package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.Set;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */
public class Student extends AbstractStudent implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(Long id) {
		super(id);
	}

	/** full constructor */
	public Student(Long id, Group group, String name, Set groups, Set groups_1, Set courses, Set courses_1) {
		super(id, group, name, groups, groups_1, courses, courses_1);
	}

}
