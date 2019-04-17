package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.util.Set;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */
public class Book extends AbstractBook implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(String name) {
		super(name);
	}

	/** full constructor */
	public Book(String name, Set book2courses) {
		super(name, book2courses);
	}

}
