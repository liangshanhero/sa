package cn.edu.scau.cmi.liangzaoqing.composite.consistent;

import java.util.Set;

public class ConsistentComposite  implements ConsistentComponent{

	@Override
	public String doSomething() {

		return null;
	}

	@Override
	public ConsistentComponent getParent() {
		// TODO Auto-generated method stub
		return this.getParent();
	}

	@Override
	public void addChild() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ConsistentComponent child) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void updateChildren(Set<ConsistentComponent> childrenSet) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Set<ConsistentComponent> getChileren() {
		// TODO Auto-generated method stub
		return null;
	}

}
