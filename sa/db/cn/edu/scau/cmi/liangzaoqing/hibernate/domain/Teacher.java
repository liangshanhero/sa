
package cn.edu.scau.cmi.liangzaoqing.hibernate.domain;

import java.io.Serializable;

import java.lang.StringBuilder;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


import javax.xml.bind.annotation.*;

import javax.persistence.*;

/**
 */


public class Teacher implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 */

	@Column(name = "id", nullable = false)
	@Basic(fetch = FetchType.EAGER)

	@Id
	@XmlElement
	Integer id;
	/**
	 */

	@Column(name = "name", nullable = false)
	@Basic(fetch = FetchType.EAGER)

	@XmlElement
	String name;

	/**
	 */
	@ManyToMany(mappedBy = "teacher", cascade = { CascadeType.REMOVE }, fetch = FetchType.LAZY)

	@XmlElement(name = "", namespace = "")
	java.util.Set<Student> students;
	/**
	 */
	@OneToMany(mappedBy = "teacher", cascade = { CascadeType.REMOVE }, fetch = FetchType.LAZY)

	@XmlElement(name = "", namespace = "")
	java.util.Set<Student> students_1;

	/**
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 */
	public Integer getId() {
		return this.id;
	}

	/**
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 */
	public String getName() {
		return this.name;
	}

	/**
	 */
	public void setStudents(Set<Student> students) {
		this.students = students;
	}

	/**
	 */
	public Set<Student> getStudents() {
		if (students == null) {
			students = new java.util.LinkedHashSet<Student>();
		}
		return students;
	}

	/**
	 */
	public void setStudents_1(Set<Student> students_1) {
		this.students_1 = students_1;
	}

	/**
	 */
	public Set<Student> getStudents_1() {
		if (students_1 == null) {
			students_1 = new java.util.LinkedHashSet<Student>();
		}
		return students_1;
	}

	/**
	 */
	public Teacher() {
	}

	/**
	 * Copies the contents of the specified bean into this bean.
	 *
	 */
	public void copy(Teacher that) {
		setId(that.getId());
		setName(that.getName());
		setStudents(new java.util.LinkedHashSet<Student>(that.getStudents()));
		setStudents_1(new java.util.LinkedHashSet<Student>(that.getStudents_1()));
	}

	/**
	 * Returns a textual representation of a bean.
	 *
	 */
	public String toString() {

		StringBuilder buffer = new StringBuilder();

		buffer.append("id=[").append(id).append("] ");
		buffer.append("name=[").append(name).append("] ");

		return buffer.toString();
	}

	/**
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = (int) (prime * result + ((id == null) ? 0 : id.hashCode()));
		return result;
	}

	/**
	 */
	public boolean equals(Object obj) {
		if (obj == this)
			return true;
		if (!(obj instanceof Teacher))
			return false;
		Teacher equalCheck = (Teacher) obj;
		if ((id == null && equalCheck.id != null) || (id != null && equalCheck.id == null))
			return false;
		if (id != null && !id.equals(equalCheck.id))
			return false;
		return true;
	}
}
