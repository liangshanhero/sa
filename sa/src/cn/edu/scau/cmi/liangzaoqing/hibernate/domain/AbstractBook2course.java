package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

/**
 * AbstractBook2course entity provides the base persistence definition of the
 * Book2course entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBook2course implements java.io.Serializable {

	// Fields

	private Long id;
	private Course course;
	private Book book;

	// Constructors

	/** default constructor */
	public AbstractBook2course() {
	}

	/** full constructor */
	public AbstractBook2course(Long id, Course course, Book book) {
		this.id = id;
		this.course = course;
		this.book = book;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}