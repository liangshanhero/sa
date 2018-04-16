package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.Set;

/**
 * Group entity. @author MyEclipse Persistence Tools
 */
public class Group extends AbstractGroup implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Group() {
	}

	/** minimal constructor */
	public Group(Long id, Student student) {
		super(id, student);
	}

	/** full constructor */
	public Group(Long id, Student student, Group group, String name, Set groups, Set students, Set groups_1) {
		super(id, student, group, name, groups, students, groups_1);
	}

}
