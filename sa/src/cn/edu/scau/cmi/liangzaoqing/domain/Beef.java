package cn.edu.scau.cmi.liangzaoqing.domain;

public class Beef implements Meat {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	@Override
	public void cook() {
		System.out.println("beef is marvelous!!!");
		
	}

}
