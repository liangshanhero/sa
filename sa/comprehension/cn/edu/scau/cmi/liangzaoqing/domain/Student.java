package cn.edu.scau.cmi.liangzaoqing.domain;

public class Student implements java.io.Serializable {

	public Student() {
	}

	private Long id;
	private Teacher teacher;
	private String name;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
