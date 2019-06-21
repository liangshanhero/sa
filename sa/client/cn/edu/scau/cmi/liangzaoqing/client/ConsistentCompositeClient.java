package cn.edu.scau.cmi.liangzaoqing.client;

import cn.edu.scau.cmi.liangzaoqing.composite.consistent.ConsistentComponent;
import cn.edu.scau.cmi.liangzaoqing.composite.consistent.ConsistentComposite;
import cn.edu.scau.cmi.liangzaoqing.composite.consistent.ConsistentLeaf;

public class ConsistentCompositeClient {

	public static void main(String[] args) {

		ConsistentComponent father=new ConsistentComposite();
		ConsistentComponent leaf=new ConsistentLeaf();
		father.addChild();
	}

}
