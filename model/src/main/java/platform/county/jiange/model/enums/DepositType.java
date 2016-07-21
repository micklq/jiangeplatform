package platform.county.jiange.model.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * 流类型
 * @author Jones
 *
 */
public enum DepositType {
	普通托管("0"),
	保本托管 ("1"),
	保益托管("2");
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	private static Map<String,DepositType> nameMap;
	static{
		nameMap=new HashMap<String,DepositType>();
		
		for (DepositType vs : DepositType.values()) {
			nameMap.put(vs.name, vs);
		}
	}
	private DepositType(String name){
		this.name=name;
	}
	public static DepositType getDepositTypeByName(String name){
		return nameMap.get(name);
	}
}
