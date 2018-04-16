package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractGroup entity provides the base persistence definition of the Group
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractGroup implements java.io.Serializable {

	// Fields

	private Long id;
	private Student student;
	private Group group;
	private String name;
	private Set groups = new HashSet(0);
	private Set students = new HashSet(0);
	private Set groups_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractGroup() {
	}

	/** minimal constructor */
	public AbstractGroup(Long id, Student student) {
		this.id = id;
		this.student = student;
	}

	/** full constructor */
	public AbstractGroup(Long id, Student student, Group group, String name, Set groups, Set students, Set groups_1) {
		this.id = id;
		this.student = student;
		this.group = group;
		this.name = name;
		this.groups = groups;
		this.students = students;
		this.groups_1 = groups_1;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
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

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

	public Set getGroups_1() {
		return this.groups_1;
	}

	public void setGroups_1(Set groups_1) {
		this.groups_1 = groups_1;
	}

}