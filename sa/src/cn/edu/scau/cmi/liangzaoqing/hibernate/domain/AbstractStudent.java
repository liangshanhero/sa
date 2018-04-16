package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractStudent entity provides the base persistence definition of the
 * Student entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractStudent implements java.io.Serializable {

	// Fields

	private Long id;
	private Group group;
	private String name;
	private Set groups = new HashSet(0);
	private Set groups_1 = new HashSet(0);
	private Set courses = new HashSet(0);
	private Set courses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractStudent() {
	}

	/** minimal constructor */
	public AbstractStudent(Long id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractStudent(Long id, Group group, String name, Set groups, Set groups_1, Set courses, Set courses_1) {
		this.id = id;
		this.group = group;
		this.name = name;
		this.groups = groups;
		this.groups_1 = groups_1;
		this.courses = courses;
		this.courses_1 = courses_1;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Group getGroup() {
		return this.group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getGroups() {
		return this.groups;
	}

	public void setGroups(Set groups) {
		this.groups = groups;
	}

	public Set getGroups_1() {
		return this.groups_1;
	}

	public void setGroups_1(Set groups_1) {
		this.groups_1 = groups_1;
	}

	public Set getCourses() {
		return this.courses;
	}

	public void setCourses(Set courses) {
		this.courses = courses;
	}

	public Set getCourses_1() {
		return this.courses_1;
	}

	public void setCourses_1(Set courses_1) {
		this.courses_1 = courses_1;
	}

}