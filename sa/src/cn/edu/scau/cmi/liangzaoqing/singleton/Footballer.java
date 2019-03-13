package cn.edu.scau.cmi.liangzaoqing.singleton;

import java.util.HashSet;
import java.util.Set;

public class Footballer {
	
	private String name;
	private static Set<Footballer> footballerSet=new HashSet<Footballer>();
	
	private Footballer(String name) {
		this.setName(name);
	}
	
	
	public static Set<Footballer> addInstance(String name) {
		if(footballerSet.size()<10) {
			Footballer footballer=new Footballer(name);
			footballerSet.add(footballer);
			
		}
		else {
			System.out.println("对不起，每场只能上场10个球员，"+name+"不能再上场了！");
		}
		return footballerSet;
		
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}
	
	

}
