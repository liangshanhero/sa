package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractBook entity provides the base persistence definition of the Book
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBook implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private Set book2courses = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractBook() {
	}

	/** minimal constructor */
	public AbstractBook(String name) {
		this.name = name;
	}

	/** full constructor */
	public AbstractBook(String name, Set book2courses) {
		this.name = name;
		this.book2courses = book2courses;
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

	public Set getBook2courses() {
		return this.book2courses;
	}

	public void setBook2courses(Set book2courses) {
		this.book2courses = book2courses;
	}

}