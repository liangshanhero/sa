package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

/**
 * AbstractSa entity provides the base persistence definition of the Sa
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSa implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;

	// Constructors

	/** default constructor */
	public AbstractSa() {
	}

	/** minimal constructor */
	public AbstractSa(Long id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSa(Long id, String name) {
		this.id = id;
		this.name = name;
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

}