package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractCourse entity provides the base persistence definition of the Course
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCourse implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private Set students = new HashSet(0);
	private Set students_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractCourse() {
	}

	/** minimal constructor */
	public AbstractCourse(Long id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractCourse(Long id, String name, Set students, Set students_1) {
		this.id = id;
		this.name = name;
		this.students = students;
		this.students_1 = students_1;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

	public Set getStudents_1() {
		return this.students_1;
	}

	public void setStudents_1(Set students_1) {
		this.students_1 = students_1;
	}

}