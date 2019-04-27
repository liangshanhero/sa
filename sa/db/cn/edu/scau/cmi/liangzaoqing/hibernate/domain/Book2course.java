package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

/**
 * Book2course entity. @author MyEclipse Persistence Tools
 */
public class Book2course implements	java.io.Serializable {

	// Constructors

	/** default constructor */
	public Book2course() {
	}



	// Fields

	private Long id;
	private Course course;
	private Book book;

	
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
