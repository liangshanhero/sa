package cn.edu.scau.cmi.liangzaoqing.composite.consistent;

import java.util.Set;

public class ConsistentComposite  implements ConsistentComponent{
	private Set<ConsistentComponent> componentSet;

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
	public Set<ConsistentComponent> delete(ConsistentComponent child) {
		return componentSet.remove(child);
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

	@Override
	public void addChild(ConsistentComponent child) {
		// TODO Auto-generated method stub
		
	}

}
