package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */
public class Course implements java.io.Serializable {

	public Course() {
	}

	private Long id;
	private String name;
	private Set book2courses = new HashSet(0);

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
