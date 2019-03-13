package cn.edu.scau.cmi.liangzaoqing.client;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import cn.edu.scau.cmi.liangzaoqing.singleton.Chairman;
import cn.edu.scau.cmi.liangzaoqing.singleton.Footballer;

public class SingletonClient {

	public static void main(String[] args) {

		Chairman chairman1=Chairman.getInstance("毛泽东");
		
		Chairman chairman2=Chairman.getInstance("梁早清");
		
		if(chairman1==chairman2){
			System.out.println("一样的");
			
		}
		else
			System.out.print("不一样的");
		
		System.out.println(Chairman.getInstance("张山"));
		System.out.println(Chairman.getInstance("李四"));
		System.out.println(Chairman.getInstance("王五"));
		System.out.println(Chairman.getInstance("赵六"));
		System.out.println(Chairman.getInstance("田七"));
		
//		10个球员的多例例子
		
//		Set<Footballer> team = new HashSet<Footballer>();
		
		
		
		Set<Footballer> team =Footballer.addInstance("布冯");
		Footballer.addInstance("卡洛斯");
		Footballer.addInstance("皮克");
		Footballer.addInstance("杰拉德");
		Footballer.addInstance("齐达内");
		Footballer.addInstance("哈维");
		Footballer.addInstance("C罗");
		Footballer.addInstance("伊列斯塔");
		Footballer.addInstance("苏亚雷斯");
		Footballer.addInstance("梅西");
		Footballer.addInstance("梁早清");
		Footballer.addInstance("陈晓阳");
		Footballer.addInstance("陈阳");
		Footballer.addInstance("陈晓");
		 Footballer.addInstance("刘雅虹");
		
		
		System.out.println(team.size());
		out(team);
		
	
	}

	private static void out(Set<Footballer> team) {
		Iterator<Footballer> teamIterator = team.iterator();
		while(teamIterator.hasNext()) {
			System.out.println(teamIterator.next().getName());
		}
		
	}


}
