package platform.county.jiange.model.enums;

import java.util.HashMap;
import java.util.Map;

public enum OfficeUserType {
	None("无", 0),Secretary("党组书记", 1),PartyMembers("党组成员", 2) ,LiaisonMan("联络员", 3) ,Supervisor("监督员", 4) ;

	private String name;

	private int value;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	private static Map<String, OfficeUserType> nameMap;

	private static Map<Integer, OfficeUserType> valueMap;

	static {
		nameMap = new HashMap<String, OfficeUserType>();
		valueMap = new HashMap<Integer, OfficeUserType>();

		for (OfficeUserType vs : OfficeUserType.values()) {
			nameMap.put(vs.name, vs);
			valueMap.put(vs.value, vs);
		}
	}

	private OfficeUserType(String name, int value ) {
		this.name = name;
		this.value = value;
	}

	public static OfficeUserType getByName(String name) {
		return nameMap.get(name);
	}

	public static OfficeUserType getByValue(int value) {
		return valueMap.get(value);
	}
}
