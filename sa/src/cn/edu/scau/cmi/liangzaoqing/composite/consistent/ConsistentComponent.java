package cn.edu.scau.cmi.liangzaoqing.composite.consistent;

import java.util.Set;

public interface ConsistentComponent {
//	业务功能
	String doSomething();
//	对被包含对象的功能
	ConsistentComponent getParent();
//	对构成部分管理的功能
	Set<ConsistentComponent> addChild(ConsistentComponent child);
	Set<ConsistentComponent> delete(ConsistentComponent child);
	Set<ConsistentComponent> getChileren();
	void updateChildren(Set<ConsistentComponent> childrenSet);

}
