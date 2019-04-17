package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

/**
 * Book2course entity. @author MyEclipse Persistence Tools
 */
public class Book2course extends AbstractBook2course implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Book2course() {
	}

	/** full constructor */
	public Book2course(Long id, Course course, Book book) {
		super(id, course, book);
	}

}
