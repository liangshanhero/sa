package cn.edu.scau.cmi.liangzaoqing.composite.consistent;

import java.util.Set;

public class ConsistentLeaf implements ConsistentComponent{

	@Override
	public String doSomething() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addChild() {
		System.out.println("对不起，叶节点不能添加子节点");
	}

	@Override
	public void delete(ConsistentComponent child) {
		System.out.println("对不起，叶节点没有子节点，不能删除子节点");
		
	}


	@Override
	public void updateChildren(Set<ConsistentComponent> childrenSet) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ConsistentComponent getParent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<ConsistentComponent> getChileren() {
		// TODO Auto-generated method stub
		return null;
	}

}
